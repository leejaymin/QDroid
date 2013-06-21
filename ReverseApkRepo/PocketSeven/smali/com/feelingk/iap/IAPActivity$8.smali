.class Lcom/feelingk/iap/IAPActivity$8;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtpDialogCancelButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 900
    const-string v3, "IAPActivity"

    const-string v4, "onOtpDialogCancelButtonClick"

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 903
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 904
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 906
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;)V

    .line 908
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 909
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 910
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 913
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 914
    .local v2, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 916
    return-void
.end method

.method public onOtpDialogOK()V
    .locals 2

    .prologue
    .line 890
    const-string v0, "IAPActivity"

    const-string v1, "onOtpDialogOKButtonClick"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;)V

    .line 892
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setIsOTPAuth(Z)V

    .line 894
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 895
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    .line 896
    return-void
.end method

.method public onOtpTstoreButtonClick()V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x77

    const-string v2, "\ud574\ub2f9 \uc11c\ube44\uc2a4\ub294 T store \uc124\uce58 \ud6c4 \uc774\uc6a9\ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4. \uac10\uc0ac\ud569\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 921
    return-void
.end method
