.class public Lbackport/android/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bleutooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbackport/android/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PASSKEY:Ljava/lang/String; = "android.bluetooth.device.extra.PASSKEY"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field private static sService:Landroid/bluetooth/IBluetoothDevice;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lbackport/android/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Lbackport/android/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Lbackport/android/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Lbackport/android/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetoothDevice;

    .line 370
    invoke-static {p1}, Lbackport/android/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 377
    return-void
.end method

.method static getService()Landroid/bluetooth/IBluetoothDevice;
    .locals 2

    .prologue
    .line 357
    const-class v0, Lbackport/android/bluetooth/BluetoothDevice;

    monitor-enter v0

    .line 358
    :try_start_0
    sget-object v1, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    if-nez v1, :cond_0

    .line 360
    invoke-static {}, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->get()Landroid/bluetooth/IBluetoothDevice;

    move-result-object v1

    sput-object v1, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    .line 357
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    sget-object v0, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    return-object v0

    .line 357
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lbackport/android/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lbackport/android/bluetooth/BluetoothSocket;

    invoke-direct {v0, p0, p1}, Lbackport/android/bluetooth/BluetoothSocket;-><init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 387
    instance-of v0, p1, Lbackport/android/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Lbackport/android/bluetooth/BluetoothDevice;

    .end local p1
    invoke-virtual {p1}, Lbackport/android/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothClass()Lbackport/android/bluetooth/BluetoothClass;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    :try_start_0
    sget-object v2, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    iget-object v3, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothDevice;->getRemoteClass(Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, classInt:I
    const/high16 v2, -0x100

    if-ne v0, v2, :cond_0

    move-object v2, v4

    .line 415
    .end local v0           #classInt:I
    :goto_0
    return-object v2

    .line 409
    .restart local v0       #classInt:I
    :cond_0
    new-instance v2, Lbackport/android/bluetooth/BluetoothClass;

    invoke-direct {v2, v0}, Lbackport/android/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v0           #classInt:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 412
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 415
    goto :goto_0
.end method

.method public getBondState()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 421
    :try_start_0
    sget-object v2, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    iget-object v3, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothDevice;->getBondState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 422
    .local v0, bondState:I
    packed-switch v0, :pswitch_data_0

    .line 430
    const/high16 v2, -0x8000

    .line 436
    .end local v0           #bondState:I
    :goto_0
    return v2

    .line 424
    .restart local v0       #bondState:I
    :pswitch_0
    const/16 v2, 0xc

    goto :goto_0

    .line 426
    :pswitch_1
    const/16 v2, 0xb

    goto :goto_0

    :pswitch_2
    move v2, v4

    .line 428
    goto :goto_0

    .line 432
    .end local v0           #bondState:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 433
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 436
    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    :try_start_0
    sget-object v1, Lbackport/android/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetoothDevice;

    iget-object v2, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothDevice;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 479
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method
