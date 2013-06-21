.class public Lcom/example/bluetooth/DeviceListActivity;
.super Landroid/app/Activity;
.source "DeviceListActivity.java"


# static fields
.field private static final D:Z = true

.field public static EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceListActivity"


# instance fields
.field private mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

.field private mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "device_address"

    sput-object v0, Lcom/example/bluetooth/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 157
    new-instance v0, Lcom/example/bluetooth/DeviceListActivity$1;

    invoke-direct {v0, p0}, Lcom/example/bluetooth/DeviceListActivity$1;-><init>(Lcom/example/bluetooth/DeviceListActivity;)V

    iput-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 178
    new-instance v0, Lcom/example/bluetooth/DeviceListActivity$2;

    invoke-direct {v0, p0}, Lcom/example/bluetooth/DeviceListActivity$2;-><init>(Lcom/example/bluetooth/DeviceListActivity;)V

    iput-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/example/bluetooth/DeviceListActivity;)Lbackport/android/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/bluetooth/DeviceListActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/bluetooth/DeviceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/example/bluetooth/DeviceListActivity;->doDiscovery()V

    return-void
.end method

.method private doDiscovery()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "DeviceListActivity"

    const-string v1, "doDiscovery()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 142
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/DeviceListActivity;->setTitle(I)V

    .line 145
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 154
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f030003

    const/4 v8, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->requestWindowFeature(I)Z

    .line 66
    const v7, 0x7f030002

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0, v8}, Lcom/example/bluetooth/DeviceListActivity;->setResult(I)V

    .line 72
    const v7, 0x7f060009

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 73
    .local v6, scanButton:Landroid/widget/Button;
    new-instance v7, Lcom/example/bluetooth/DeviceListActivity$3;

    invoke-direct {v7, p0}, Lcom/example/bluetooth/DeviceListActivity$3;-><init>(Lcom/example/bluetooth/DeviceListActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-direct {v7, p0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 83
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-direct {v7, p0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 86
    const v7, 0x7f060006

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 87
    .local v5, pairedListView:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    const v7, 0x7f060008

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 92
    .local v2, newDevicesListView:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/example/bluetooth/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    const-string v7, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v1       #filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/example/bluetooth/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 107
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Lbackport/android/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 110
    .local v4, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Lbackport/android/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 111
    const v7, 0x7f060005

    invoke-virtual {p0, v7}, Lcom/example/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 119
    :goto_1
    return-void

    .line 112
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbackport/android/bluetooth/BluetoothDevice;

    .line 113
    .local v0, device:Lbackport/android/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/example/bluetooth/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0           #device:Lbackport/android/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {p0}, Lcom/example/bluetooth/DeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f04000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, noDevices:Ljava/lang/String;
    iget-object v7, p0, Lcom/example/bluetooth/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mBtAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/example/bluetooth/DeviceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method
