.class Lcom/feelingk/iap/IAPActivity$3;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYesNoDialogCancelButtonClick()V
    .locals 3

    .prologue
    .line 738
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 739
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    .line 742
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    #setter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 743
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 744
    .local v0, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v1, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v1, :cond_0

    .line 745
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgAutoPurchaseInfoCancel()V

    .line 749
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    goto :goto_0
.end method

.method public onYesNoDialogOKButtonClick()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    .line 720
    sget-boolean v0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 722
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendPurchaseDismiss(Ljava/lang/String;)V

    .line 735
    :goto_0
    return-void

    .line 725
    :cond_0
    sget-boolean v0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 727
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 732
    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method
