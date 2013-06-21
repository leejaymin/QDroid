.class public Lbackport/android/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# static fields
.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = null

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = null

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static sAdapter:Lbackport/android/bluetooth/BluetoothAdapter;


# instance fields
.field private final mDelegate:Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

.field private mHandler:Landroid/os/Handler;

.field private final mService:Landroid/bluetooth/IBluetoothDevice;

.field private final mStandardImplementation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lbackport/android/bluetooth/BackportProperties;->getRequestDiscoverable()Ljava/lang/String;

    move-result-object v0

    .line 109
    sput-object v0, Lbackport/android/bluetooth/BluetoothAdapter;->ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String;

    .line 144
    invoke-static {}, Lbackport/android/bluetooth/BackportProperties;->getRequestEnable()Ljava/lang/String;

    move-result-object v0

    .line 143
    sput-object v0, Lbackport/android/bluetooth/BluetoothAdapter;->ACTION_REQUEST_ENABLE:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothDevice;)V
    .locals 6
    .parameter "service"

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v1, Lbackport/android/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Lbackport/android/bluetooth/BluetoothAdapter$1;-><init>(Lbackport/android/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    .line 376
    if-nez p1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    .line 382
    const-class v1, Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

    iget-object v2, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-static {v1, v2}, Lbackport/android/bluetooth/DelegateFactory;->create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

    iput-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mDelegate:Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, standard:Z
    :try_start_0
    const-class v1, Landroid/bluetooth/IBluetoothDevice;

    const-string v2, "disable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    const/4 v0, 0x1

    .line 392
    :goto_0
    iput-boolean v0, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mStandardImplementation:Z

    .line 393
    return-void

    .line 389
    :catch_0
    move-exception v1

    goto :goto_0

    .line 388
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 284
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    move v2, v3

    .line 304
    :goto_0
    return v2

    .line 287
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 304
    const/4 v2, 0x1

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 289
    .local v0, c:C
    rem-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_0

    .line 287
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :pswitch_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_4
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    :cond_5
    move v2, v3

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_3

    move v2, v3

    .line 301
    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;
    .locals 3

    .prologue
    .line 397
    const-class v1, Lbackport/android/bluetooth/BluetoothAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lbackport/android/bluetooth/BluetoothAdapter;->sAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 399
    invoke-static {}, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->get()Landroid/bluetooth/IBluetoothDevice;

    move-result-object v0

    .line 401
    .local v0, service:Landroid/bluetooth/IBluetoothDevice;
    if-eqz v0, :cond_0

    .line 403
    new-instance v2, Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v0}, Lbackport/android/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothDevice;)V

    sput-object v2, Lbackport/android/bluetooth/BluetoothAdapter;->sAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 407
    .end local v0           #service:Landroid/bluetooth/IBluetoothDevice;
    :cond_0
    sget-object v2, Lbackport/android/bluetooth/BluetoothAdapter;->sAdapter:Lbackport/android/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 397
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 3

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->cancelDiscovery()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 311
    :try_start_0
    iget-boolean v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mStandardImplementation:Z

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mDelegate:Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lbackport/android/bluetooth/IBluetoothDeviceDelegate;->disable(Z)Z

    move-result v1

    .line 321
    :goto_0
    return v1

    .line 315
    :cond_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mDelegate:Lbackport/android/bluetooth/IBluetoothDeviceDelegate;

    invoke-interface {v1}, Lbackport/android/bluetooth/IBluetoothDeviceDelegate;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 3

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 329
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 331
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 342
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lbackport/android/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    iget-object v6, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothDevice;->listBonds()[Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, bonds:[Ljava/lang/String;
    array-length v5, v1

    .line 356
    .local v5, size:I
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 359
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Lbackport/android/bluetooth/BluetoothDevice;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v5, :cond_0

    move-object v6, v2

    .line 370
    .end local v1           #bonds:[Ljava/lang/String;
    .end local v2           #devices:Ljava/util/Set;,"Ljava/util/Set<Lbackport/android/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:I
    .end local v5           #size:I
    :goto_1
    return-object v6

    .line 361
    .restart local v1       #bonds:[Ljava/lang/String;
    .restart local v2       #devices:Ljava/util/Set;,"Ljava/util/Set<Lbackport/android/bluetooth/BluetoothDevice;>;"
    .restart local v4       #i:I
    .restart local v5       #size:I
    :cond_0
    aget-object v0, v1, v4

    .line 362
    .local v0, address:Ljava/lang/String;
    new-instance v6, Lbackport/android/bluetooth/BluetoothDevice;

    invoke-direct {v6, v0}, Lbackport/android/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #bonds:[Ljava/lang/String;
    .end local v2           #devices:Ljava/util/Set;,"Ljava/util/Set<Lbackport/android/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:I
    .end local v5           #size:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 368
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothAdapter"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "address"

    .prologue
    .line 425
    new-instance v0, Lbackport/android/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Lbackport/android/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    .line 432
    :try_start_0
    iget-object v2, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDevice;->getScanMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    .local v1, scanMode:I
    packed-switch v1, :pswitch_data_0

    .line 449
    .end local v1           #scanMode:I
    :goto_0
    :pswitch_0
    const/16 v2, 0x14

    :goto_1
    return v2

    .line 437
    .restart local v1       #scanMode:I
    :pswitch_1
    const/16 v2, 0x15

    goto :goto_1

    .line 441
    :pswitch_2
    const/16 v2, 0x17

    goto :goto_1

    .line 444
    .end local v1           #scanMode:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getState()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 454
    :try_start_0
    iget-object v2, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 465
    const/high16 v2, -0x8000

    .line 471
    .end local v1           #state:I
    :goto_0
    return v2

    .restart local v1       #state:I
    :pswitch_0
    move v2, v4

    .line 457
    goto :goto_0

    .line 459
    :pswitch_1
    const/16 v2, 0xc

    goto :goto_0

    .line 461
    :pswitch_2
    const/16 v2, 0xd

    goto :goto_0

    .line 463
    :pswitch_3
    const/16 v2, 0xb

    goto :goto_0

    .line 467
    .end local v1           #state:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 471
    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDiscovering()Z
    .locals 3

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->isDiscovering()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Lbackport/android/bluetooth/BluetoothServerSocket;
    .locals 8
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x62

    const-string v7, "BluetoothAdapter"

    .line 513
    new-instance v3, Lbackport/android/bluetooth/BluetoothServerSocket;

    invoke-direct {v3, p2}, Lbackport/android/bluetooth/BluetoothServerSocket;-><init>(Ljava/util/UUID;)V

    .line 519
    .local v3, socket:Lbackport/android/bluetooth/BluetoothServerSocket;
    const/4 v1, 0x1

    .line 523
    .local v1, channel:I
    iget-object v4, v3, Lbackport/android/bluetooth/BluetoothServerSocket;->mSocket:Lbackport/android/bluetooth/BluetoothSocket;

    iget-object v4, v4, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/bluetooth/RfcommSocket;->bind(Ljava/lang/String;I)Z

    move-result v0

    .line 524
    .local v0, bind:Z
    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move v2, v4

    .line 527
    .local v2, errno:I
    :goto_0
    if-nez v2, :cond_1

    .line 552
    :goto_1
    iget-object v4, v3, Lbackport/android/bluetooth/BluetoothServerSocket;->mSocket:Lbackport/android/bluetooth/BluetoothSocket;

    iget-object v4, v4, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/RfcommSocket;->listen(I)Z

    .line 584
    const-string v4, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "listening on RFCOMM channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v3

    .end local v2           #errno:I
    :cond_0
    move v2, v6

    .line 524
    goto :goto_0

    .line 530
    .restart local v2       #errno:I
    :cond_1
    if-ne v2, v6, :cond_2

    .line 532
    const-string v4, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RFCOMM channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :try_start_0
    invoke-virtual {v3}, Lbackport/android/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 536
    :catch_0
    move-exception v4

    goto :goto_1

    .line 541
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lbackport/android/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    :goto_2
    new-instance v4, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->setName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 599
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 3

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetoothDevice;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothDevice;->startDiscovery(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 612
    :goto_0
    return v1

    .line 607
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 609
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 v1, 0x0

    goto :goto_0
.end method
