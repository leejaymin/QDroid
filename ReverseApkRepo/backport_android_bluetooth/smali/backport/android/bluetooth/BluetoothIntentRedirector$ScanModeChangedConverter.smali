.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScanModeChangedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;-><init>()V

    return-void
.end method

.method private convertScanMode(I)I
    .locals 1
    .parameter "scanMode"

    .prologue
    .line 153
    packed-switch p1, :pswitch_data_0

    .line 161
    :pswitch_0
    const/high16 v0, -0x8000

    :goto_0
    return v0

    .line 155
    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 157
    :pswitch_2
    const/16 v0, 0x15

    goto :goto_0

    .line 159
    :pswitch_3
    const/16 v0, 0x17

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .parameter "src"
    .parameter "dest"

    .prologue
    const/high16 v2, -0x8000

    .line 142
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 143
    const-string v1, "android.bluetooth.intent.SCAN_MODE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, scanMode:I
    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;->convertScanMode(I)I

    move-result v0

    .line 146
    const-string v1, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 132
    const-string v0, "android.bluetooth.intent.action.SCAN_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
