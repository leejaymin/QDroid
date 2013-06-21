.class abstract Lbackport/android/bluetooth/IBluetoothDeviceLocator;
.super Ljava/lang/Object;
.source "IBluetoothDeviceLocator.java"


# static fields
.field private static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field private static CACHED_INSTANCE:Landroid/bluetooth/IBluetoothDevice; = null

.field private static final IBLUETOOTH_DEVICE:Ljava/lang/String; = "android.bluetooth.IBluetoothDevice"

.field private static final IBLUETOOTH_DEVICE_STUB:Ljava/lang/String; = "android.bluetooth.IBluetoothDevice$Stub"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized get()Landroid/bluetooth/IBluetoothDevice;
    .locals 4

    .prologue
    .line 34
    const-class v1, Lbackport/android/bluetooth/IBluetoothDeviceLocator;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->CACHED_INSTANCE:Landroid/bluetooth/IBluetoothDevice;

    if-eqz v2, :cond_0

    .line 36
    sget-object v2, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->CACHED_INSTANCE:Landroid/bluetooth/IBluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit v1

    return-object v2

    .line 42
    :cond_0
    :try_start_1
    const-string v2, "bluetooth"

    const-string v3, "android.bluetooth.IBluetoothDevice$Stub"

    .line 41
    invoke-static {v2, v3}, Lbackport/android/bluetooth/ServiceLocator;->getServiceStub(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothDevice;

    sput-object v0, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->CACHED_INSTANCE:Landroid/bluetooth/IBluetoothDevice;

    .line 44
    sget-object v2, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->CACHED_INSTANCE:Landroid/bluetooth/IBluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 47
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
