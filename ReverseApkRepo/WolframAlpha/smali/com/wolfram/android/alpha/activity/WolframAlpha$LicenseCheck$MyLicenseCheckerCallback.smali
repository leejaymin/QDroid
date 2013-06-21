.class Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;


# direct methods
.method private constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Lcom/wolfram/android/alpha/activity/WolframAlpha$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 4
    .parameter "policyReason"

    .prologue
    const/16 v3, 0x123

    const/16 v2, 0x100

    .line 374
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    .line 381
    :cond_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$300(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->stopLVLAnimation_restartQuery_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$400(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    .line 388
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    const/4 v1, 0x0

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->displayDialog(Z)V
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->access$500(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V

    goto :goto_0
.end method

.method public applicationError(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, ""

    .line 406
    .local v0, errorCode_name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_1
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v3, v3, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    const v4, 0x7f0c0036

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->toast(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->finish()V

    goto :goto_0

    .line 407
    :pswitch_0
    const-string v0, "ERROR_INVALID_PACKAGE_NAME"

    goto :goto_1

    .line 408
    :pswitch_1
    const-string v0, "ERROR_NON_MATCHING_UID"

    goto :goto_1

    .line 409
    :pswitch_2
    const-string v0, "ERROR_NOT_MARKET_MANAGED"

    goto :goto_1

    .line 410
    :pswitch_3
    const-string v0, "ERROR_CHECK_IN_PROGRESS"

    goto :goto_1

    .line 411
    :pswitch_4
    const-string v0, "ERROR_INVALID_PUBLIC_KEY"

    goto :goto_1

    .line 412
    :pswitch_5
    const-string v0, "ERROR_MISSING_PERMISSION"

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public dontAllow(I)V
    .locals 4
    .parameter "policyReason"

    .prologue
    const/16 v3, 0x123

    const/16 v2, 0x100

    .line 421
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    .line 442
    :cond_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$300(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->stopLVLAnimation_restartQuery_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$400(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    .line 449
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    const/4 v1, 0x0

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->displayDialog(Z)V
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->access$500(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V

    goto :goto_0
.end method
