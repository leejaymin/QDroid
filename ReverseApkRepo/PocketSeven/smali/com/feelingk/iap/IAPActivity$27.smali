.class Lcom/feelingk/iap/IAPActivity$27;
.super Landroid/telephony/PhoneStateListener;
.source "IAPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1864
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$57(Lcom/feelingk/iap/IAPActivity;I)V

    .line 1868
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ub9ac\uc2a4\ub108 \ub0b4\ubd80 m_phoneUSIMState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$58(Lcom/feelingk/iap/IAPActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v0, v0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->goIAPLibProcess()V

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$58(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1873
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_IN_SERVICE"

    #setter for: Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1880
    :cond_1
    :goto_0
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPActivity IAPLibUSIMStateCheck USIM_Check : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$60(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1885
    :cond_2
    return-void

    .line 1874
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$58(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1875
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_EMERGENCY_ONLY"

    #setter for: Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1876
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$58(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1877
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_OUT_OF_SERVICE"

    #setter for: Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$58(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1879
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$27;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_POWER_OFF"

    #setter for: Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
