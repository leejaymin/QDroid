.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateChangedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;-><init>()V

    return-void
.end method

.method private convertState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 193
    packed-switch p1, :pswitch_data_0

    .line 203
    const/high16 v0, -0x8000

    :goto_0
    return v0

    .line 195
    :pswitch_0
    const/16 v0, 0xd

    goto :goto_0

    .line 197
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 199
    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    .line 201
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "src"
    .parameter "dest"

    .prologue
    const/high16 v3, -0x8000

    .line 180
    invoke-super {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 181
    const-string v2, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, state:I
    invoke-direct {p0, v1}, Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;->convertState(I)I

    move-result v1

    .line 184
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v2, "android.bluetooth.intent.BLUETOOTH_PREVIOUS_STATE"

    .line 185
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, previousState:I
    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;->convertState(I)I

    move-result v0

    .line 189
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 169
    .line 170
    const-string v0, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    return v0
.end method
