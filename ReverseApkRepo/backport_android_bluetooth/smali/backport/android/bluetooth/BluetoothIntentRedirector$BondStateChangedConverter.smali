.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BondStateChangedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;-><init>()V

    return-void
.end method

.method private convertBondState(I)I
    .locals 1
    .parameter "bondState"

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 318
    const/high16 v0, -0x8000

    :goto_0
    return v0

    .line 312
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 314
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 316
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 6
    .parameter "src"
    .parameter "dest"

    .prologue
    const/high16 v5, -0x8000

    .line 293
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 294
    const-string v4, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v0}, Lbackport/android/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 297
    .local v2, device:Lbackport/android/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    const-string v4, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 300
    .local v1, bondState:I
    invoke-direct {p0, v1}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;->convertBondState(I)I

    move-result v1

    .line 301
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v4, "android.bluetooth.intent.BOND_PREVIOUS_STATE"

    .line 302
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 304
    .local v3, previousBondState:I
    invoke-direct {p0, v3}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;->convertBondState(I)I

    move-result v3

    .line 305
    const-string v4, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 283
    const-string v0, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
