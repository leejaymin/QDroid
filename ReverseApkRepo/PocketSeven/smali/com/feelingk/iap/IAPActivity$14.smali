.class Lcom/feelingk/iap/IAPActivity$14;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1500
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getIsOTPAuth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPAgree()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1503
    const-string v2, "Y"

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->sendOTPAgreeCheck(Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->reset()V

    .line 1508
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1509
    .local v0, hnd:Landroid/os/Handler;
    const/16 v2, 0x44f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1510
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1512
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v4}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v2, v4}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1513
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v2, v5}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1515
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;)V

    .line 1516
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1517
    return-void
.end method
