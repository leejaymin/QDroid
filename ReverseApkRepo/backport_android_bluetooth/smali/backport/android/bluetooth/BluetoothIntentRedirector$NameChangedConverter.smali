.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameChangedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 444
    const-string v3, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 446
    invoke-virtual {v3, v0}, Lbackport/android/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 447
    .local v1, device:Lbackport/android/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    const-string v3, "android.bluetooth.intent.NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, name:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 433
    const-string v0, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
