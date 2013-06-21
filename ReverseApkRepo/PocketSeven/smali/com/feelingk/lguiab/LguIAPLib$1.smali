.class Lcom/feelingk/lguiab/LguIAPLib$1;
.super Landroid/telephony/PhoneStateListener;
.source "LguIAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/lguiab/LguIAPLib;->serviceStateAvailableCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/lguiab/LguIAPLib$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    .line 240
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->setmPhoneState(I)V

    .line 248
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/lguiab/util/DeviceUtil;->setmInitPhoneState(Z)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Check USIM state. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->goLibProcess()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/feelingk/lguiab/LguIAPLib$1;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 259
    return-void
.end method
