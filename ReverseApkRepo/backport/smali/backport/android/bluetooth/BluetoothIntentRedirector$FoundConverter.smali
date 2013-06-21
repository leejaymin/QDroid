.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FoundConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 6
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 417
    const-string v4, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 419
    invoke-virtual {v4, v0}, Lbackport/android/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 420
    .local v1, device:Lbackport/android/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    const-string v4, "android.bluetooth.intent.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, name:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v4, "android.bluetooth.intent.RSSI"

    .line 424
    const/16 v5, -0x8000

    .line 423
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 425
    .local v3, rssi:S
    const-string v4, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 426
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-string v0, "android.bluetooth.device.action.FOUND"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 406
    const-string v0, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
