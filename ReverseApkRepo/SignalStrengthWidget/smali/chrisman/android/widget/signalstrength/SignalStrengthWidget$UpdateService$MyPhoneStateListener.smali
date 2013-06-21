.class Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SignalStrengthWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;


# direct methods
.method private constructor <init>(Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;-><init>(Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;)V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 409
    iget-object v0, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    .line 410
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    .line 421
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 428
    iget-object v0, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    .line 429
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 434
    iget-object v0, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    .line 435
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3
    .parameter "asu"

    .prologue
    .line 379
    iget-object v0, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, -0x71

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    .line 380
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v4, 0x1

    .line 385
    iget-object v2, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-virtual {v2}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 386
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iget-object v2, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 393
    .local v0, asu:I
    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    .line 395
    iget-object v2, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    const/16 v3, -0x71

    invoke-virtual {v2, v3, v4}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;->this$1:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x71

    invoke-virtual {v2, v3, v4}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->UpdateUI(II)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
