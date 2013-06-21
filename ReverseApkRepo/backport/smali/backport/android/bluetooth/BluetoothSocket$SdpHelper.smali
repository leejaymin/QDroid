.class Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;
.super Landroid/bluetooth/IBluetoothDeviceCallback$Stub;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdpHelper"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mChannel:I

.field private final mDevice:Lbackport/android/bluetooth/BluetoothDevice;

.field private final mService:Landroid/bluetooth/IBluetoothDevice;

.field private final mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 1
    .parameter "device"
    .parameter "uuid"

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDeviceCallback$Stub;-><init>()V

    .line 261
    invoke-static {}, Lbackport/android/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mService:Landroid/bluetooth/IBluetoothDevice;

    .line 262
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mDevice:Lbackport/android/bluetooth/BluetoothDevice;

    .line 263
    iput-object p2, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mUuid:Ljava/util/UUID;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    .line 265
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doSdp()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v3, "Service discovery canceled"

    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Service discovery canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 274
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, inProgress:Z
    iget-object v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mUuid:Ljava/util/UUID;

    invoke-static {v3}, Lbackport/android/bluetooth/UUIDHelper;->toUUID16(Ljava/util/UUID;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 280
    .local v2, uuid16:I
    :try_start_2
    iget-object v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mService:Landroid/bluetooth/IBluetoothDevice;

    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mDevice:Lbackport/android/bluetooth/BluetoothDevice;

    .line 281
    invoke-virtual {v4}, Lbackport/android/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-interface {v3, v4, v2, p0}, Landroid/bluetooth/IBluetoothDevice;->getRemoteServiceChannel(Ljava/lang/String;ILandroid/bluetooth/IBluetoothDeviceCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 288
    :goto_0
    if-nez v1, :cond_1

    .line 289
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to start Service Discovery"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothSocket"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 296
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v3, 0x2ee0

    :try_start_4
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 301
    :goto_1
    :try_start_5
    iget-boolean v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 303
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Service discovery canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_2
    iget v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I

    if-ge v3, v5, :cond_3

    .line 308
    const/4 v3, 0x1

    iput v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I

    .line 314
    :cond_3
    iget v3, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    .line 298
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mCanceled:Z

    if-nez v0, :cond_0

    .line 336
    iput p2, p0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->mChannel:I

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
