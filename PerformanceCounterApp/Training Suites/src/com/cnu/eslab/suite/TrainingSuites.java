package com.cnu.eslab.suite;

import android.app.Activity;
import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.cnu.eslab.service.CpuTrainingService;
import com.cnu.eslab.service.DisplayTrainingService;
import com.cnu.eslab.service.PerformanceCounter;
import com.cnu.eslab.service.WiFiTrainingService;
import com.cnu.eslab.suite.preferences.Preferences;
import com.cnu.eslab.suite.utility.DisplayControl;

public class TrainingSuites extends Activity {
    /** Called when the activity is first created. */
	private String TAG = "TringSuite Main Class";
	EditText mTestingApp;
	
	Button mCPUTrainingStartBtn;
	Button mCPUTrainingEndBtn;
	
	Button mWifiTrainingStartBtn;
	Button mWifiTrainingStopBtn;
	EditText mSettingEdtTxt;
	Context mContext= null;
	
	Button mLEDTrainingStartBtn;
	Button mLEDTrainingStopBtn;
	Button mLEDTrainingInitBtn;
	
	Button mCounterStartBtn;
	Button mCounterStopBtn;
	
	Intent serviceIntent;
	Intent serviceWifiIntent;
	Intent ServiceLEDIntent;
	Intent ServicePerformanceCounter;
	ITrainingService counterService;
	TrainingConnection conn;
	  
	boolean State_CPUTrainingService = false;
	boolean State_WiFiTrainingService = false;
	boolean State_DisplayTrainingService = false;
	
	public DisplayControl displayControl;
	private static TrainingSuites single = null;
	int bright=0;
	
	KeyguardLock lock = null;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        mContext = this;
        
        mCounterStartBtn = (Button)findViewById(R.id.counter_start_btn);
        mCounterStartBtn.setOnClickListener(pOnClickListener);
        mCounterStopBtn = (Button)findViewById(R.id.counter_end_btn);
        mCounterStopBtn.setOnClickListener(pOnClickListener);
        
        mTestingApp = (EditText)findViewById(R.id.setting_value_edittext);
        
        //미리 bindService object를 생성해 놓는다.
        serviceIntent = new Intent(this, PerformanceCounter.class);
        serviceWifiIntent = new Intent(this, WiFiTrainingService.class);
        ServiceLEDIntent = new Intent(this, DisplayTrainingService.class);
        ServicePerformanceCounter = new Intent(this, PerformanceCounter.class);
        
                
        conn = new TrainingConnection();
        displayControl = new DisplayControl(this);
        single = this;
        
        // Disable screen lock
        KeyguardManager keyguardManager = (KeyguardManager)getSystemService(Activity.KEYGUARD_SERVICE);
        lock = keyguardManager.newKeyguardLock(KEYGUARD_SERVICE);
    }
    
    private class TrainingConnection implements ServiceConnection {

    	public void onServiceConnected(ComponentName className, 
                                       IBinder boundService) {
          counterService = ITrainingService.Stub.asInterface((IBinder)boundService);
        }
    	
        //bind service가 연결 해지 됬을 때 실행 된다.
        public void onServiceDisconnected(ComponentName className) {
          counterService = null;
        }
      } 
    
    public void setBright(int value){
    }
   
   OnClickListener pOnClickListener = new OnClickListener() {
		public void onClick(View v) {
			// TODO Auto-generated method stub
			switch (v.getId()){
			
			case R.id.counter_start_btn:
				Toast.makeText(mContext, "Performance Counter Start !!",Toast.LENGTH_SHORT).show(); 
				startService(ServicePerformanceCounter);
				break;
			case R.id.counter_end_btn:
				String FileName = mTestingApp.getText().toString();
				try {
					//Race Condition 문제를 해결하기 위한 code이다.
					if(counterService.setServiceMode(FileName) == true){ }
				} catch (RemoteException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					Log.e(TAG,"AIDL binder service connected error");	
				}catch (NullPointerException e){
					Log.e(TAG,"Don't start service. plz let's start service");	
				}
				stopService(ServicePerformanceCounter);
				break;
			}
		}
    };
			
    @Override
	protected void onResume() {
		// TODO Auto-generated method stub
    	//restorePrefs();
	   	super.onResume();
	   	lock.disableKeyguard();
	   	bindService(serviceIntent, conn, 0);
	   	
	}
        
    @Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		unbindService(conn);
	}


	protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
    	restorePrefs();
    }
    
	public boolean onCreateOptionsMenu(Menu optionMenu) 
    {
     	super.onCreateOptionsMenu(optionMenu);
     	optionMenu.add(0, 1, 0, getResources().getString(R.string.options_text));
     	optionMenu.add(0, 2, 0, getResources().getString(R.string.db_text));
        return true;
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item)
    {
    	
        super.onOptionsItemSelected(item);
        switch(item.getItemId())
        {
        case 1:
       		Intent launchPreferencesIntent = new Intent().setClass(this, Preferences.class);
       		startActivityForResult(launchPreferencesIntent, 0);
        	break;
        case 2:
       		Intent launchDBIntent = new Intent().setClass(this, SaveInformationActivity.class);
       		startActivityForResult(launchDBIntent, 0);
        	break;
        }
        
        return true;
    }
    
	private void restorePrefs()
    {
		//각각의 서비스가 동작 중일 떄에만 설정값을 갱신 시켜 준다.
		if(State_CPUTrainingService)
        	CpuTrainingService.getInstance().Notify();
		if(State_WiFiTrainingService)
        	WiFiTrainingService.getInstance().Notify();
		if(State_DisplayTrainingService)
        	DisplayTrainingService.getInstance().Notify();
		
    }
	
}