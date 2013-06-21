.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AclConnectedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 223
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v0}, Lbackport/android/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 226
    .local v1, device:Lbackport/android/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 211
    .line 212
    const-string v0, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 211
    return v0
.end method
