package com.cnu.eslab.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.TrafficStats;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.RemoteException;
import android.widget.Toast;

import com.cnu.eslab.suite.ITrainingService;
import com.cnu.eslab.suite.R;
import com.cnu.eslab.suite.TrainingSuites;
import com.cnu.eslab.suite.utility.CpuUsage;

public class PerformanceCounter  extends Service {

	
	private static final String TAG = "PerofrmnaceCounter";
	
	private static final int NOTIFYID2 = 20120727; //통지의 아이디 값이다.

	private NotificationManager serviceNM = null;
	private Notification serviceNotify = null;

	private Context serviceContext = null;

	private static PerformanceCounter single = null;
	
	private PowerManager mPowermanager;	//Power Manager의 객체이다.
	private WakeLock mWakeLock;	//Wake Lock 객체이다.

										// 중복해서 계속 실행되는것을 막아 준다.
	private CpuUsage mOCpuUsage;	//CPU 이용률을 계산하기 위함이다.
	SharedPreferences settings;
	
	private int CountTime=0;
	private long totalUsage =0;
	private double avgUsage;
	private String ResultFileName;
	
	// Packet Rate를 계산하기 위한 멤버이다.
	private long lastReceivePackets;
	private long lastTransmitPackets;
	private long lastReceiveByte;
	private long lastTransmitByte;
	private double totalKByte;
	private long totalPackets;
	private double avgPackets;
	
	//main activity에서 동작 시키기 위함 이다.
	public static PerformanceCounter getInstance()
	{
		if(single != null)
			return single;
		return null;
	}
	
	public class OSMonitorBinder extends Binder 
	{
		PerformanceCounter getService()
		{
			return PerformanceCounter.this;
		}
	}
	
	ITrainingService.Stub mBinder = new ITrainingService.Stub() {
		
		@Override
		public boolean setServiceMode(String filename) throws RemoteException {
			// TODO Auto-generated method stub
			ResultFileName = filename;
			return true;
		}
	};
	
	@Override
    public void onCreate() {
    	serviceNM = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
    	InitNotification();
    	Notify();
    	single = this;    	//동적으로 동작하는 서비스를 Activity에서 제어하기 위해서 
    	//CPU Usage를 읽어들이기 위한 객체를 만든다.
    	mOCpuUsage = new CpuUsage();
    	
    	// Wifi Packet값을 초기화 한다. 
       	initWifiSuite();
    }
	
	// wifi Training suite를 위한 초기화 함수이다.
	public void initWifiSuite() {
		totalPackets = 0;
		lastTransmitPackets = TrafficStats.getTotalTxPackets();
		lastReceivePackets = TrafficStats.getTotalRxPackets();
		
		totalKByte = 0.0;
		lastTransmitByte = TrafficStats.getTotalTxBytes();
		lastReceiveByte = TrafficStats.getTotalRxBytes();
	}
	
	@Override
    public void onDestroy() {
    	Disable();
    }

    public void Notify()
    {
    	Enable();
    }
        
    //CPU LOAD정보를 삽입하며 CPU 부하 핸들러의 타임 주기를 Battery Cap level의 값에 따라서 제어를 한다. 
    private Handler mHandler_Load = new Handler();
    private Runnable mLoadRunable = new Runnable() 
	{
		@Override  
		public void run() {
			long transmitPackets = TrafficStats.getTotalTxPackets();
			long receivePackets = TrafficStats.getTotalRxPackets();
			
			long transmitByte = TrafficStats.getTotalTxBytes();
			long receiveByte = TrafficStats.getTotalRxBytes();

			long lastPackets = receivePackets + transmitPackets
					- lastReceivePackets - lastTransmitPackets;
			
			long lastByte = receiveByte + transmitByte
					- lastReceiveByte - lastTransmitByte;
			
			// packet을 누적 시킨다.
			totalPackets = totalPackets + lastPackets;
			// byte를 누적 시킨다.
			totalKByte = totalKByte + (lastByte / 1024.0);
			
			// Packets 정보를 갱신 한다.
			lastTransmitPackets = transmitPackets;
			lastReceivePackets = receivePackets;
			
			// Byte 정보를 갱신 한다.
			lastTransmitByte = transmitByte;
			lastReceiveByte = receiveByte;
			
    		//테스팅 시간을 누적해 준다. 
    		CountTime++;
			// CPU 이용률을 얻어온다.
			String maininfo = "CPU LOAD SUITE";
			String extendinfo = "";
			mOCpuUsage.readStats(); // 갱신
			extendinfo = "LOAD: " + mOCpuUsage.getTotalCPUInt() 
					+ "%" + "WiFi:"+totalPackets;
			
			totalUsage += mOCpuUsage.getTotalCPUInt();
			
			serviceNotify.setLatestEventInfo(serviceContext, maininfo,
					extendinfo, serviceNotify.contentIntent);

			try {
				serviceNM.notify(NOTIFYID2, serviceNotify);
			} catch (Exception e) {
			}
			mHandler_Load.postDelayed(mLoadRunable, 1000);
		}
	};
    private void Enable()
    {	

		mHandler_Load.postDelayed(mLoadRunable, 1000);
		// 파워 매니저를 얻어온다. (스크린 상태를 조사한다.)
		mPowermanager = (PowerManager) getSystemService(Context.POWER_SERVICE);
		mWakeLock = mPowermanager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,
				"WakeAlways"); // WakeLock을 만들어 낸다.
		mWakeLock.acquire(); // sleep mode에서도 CPU를 활성화 시키기위한 WakeLock이다.
    }
    
    public void Disable()
    {
		mHandler_Load.removeCallbacks(mLoadRunable);
		serviceNM.cancel(NOTIFYID2);
		mWakeLock.release(); // WakeLock을 제거한다.
		saveResult(); // Testing Performance값을 파일에 기록 한다. 
    }
    
    public void saveResult()
    {
    	//평균 cpu사용률을 계산 한다.
    	if(totalUsage !=0 && CountTime !=0)
    		avgUsage = totalUsage / CountTime;
    	else
    		avgUsage = 0;
/*    	//평균 packet rate를 계산 한다.
    	if(totalPackets !=0 && CountTime !=0)
    		avgPackets = totalPackets / CountTime;
    	else
    		avgPackets = 0;*/
		
		if(ResultFileName == null){
			ResultFileName = "noName";
		}	
		File writeFile = new File(Environment.getExternalStorageDirectory(),
				ResultFileName + ".log");

		try {
			PrintWriter out = new PrintWriter(new PrintWriter(
					writeFile.getAbsoluteFile()));
			out.printf("CPU Average Usage: %f\n", avgUsage);
			out.printf("total packet amount: %d\n", totalPackets);
			out.printf("total Networks: %f\n", totalKByte);
			out.close();
			Toast.makeText(PerformanceCounter.this,
					"Wrote log to " + writeFile.getAbsolutePath(),
					Toast.LENGTH_SHORT).show();
			return;
		} catch (IOException e) {
			Toast.makeText(PerformanceCounter.this, "Failed: "+e.getMessage(),Toast.LENGTH_SHORT).show();
		}
		//Toast.makeText(PerformanceCounter.this,
		//		"Failed to write log to sdcard", Toast.LENGTH_SHORT).show();
    }
    
    @Override
    public IBinder onBind(Intent intent) {
            return mBinder;
    }
	
    //통지 초기화
    private void InitNotification() 
    {
	    int thisIcon = R.drawable.serviceicon;        		// icon from resources
	    long thisTime = System.currentTimeMillis();     // notification time
	    
	    serviceContext = this; 
	    CharSequence tickerText = getResources().getString(R.string.bar_title);
	    CharSequence contentText =  getResources().getString(R.string.notify_text);
	    CharSequence contentTitle = getResources().getString(R.string.app_title);
	    
	    serviceNotify = new Notification(thisIcon, tickerText, thisTime);
	    serviceNotify.flags |= Notification.FLAG_NO_CLEAR|Notification.FLAG_ONGOING_EVENT;


    	Intent notificationIntent = new Intent(this, TrainingSuites.class);
    	notificationIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
    	PendingIntent contentIntent = PendingIntent.getActivity(this, 0, notificationIntent, 0);
    	serviceNotify.contentIntent = contentIntent;

	    serviceNotify.setLatestEventInfo(this, contentTitle, contentText, contentIntent);
    	serviceNM.notify(NOTIFYID2, serviceNotify);
    }
}
