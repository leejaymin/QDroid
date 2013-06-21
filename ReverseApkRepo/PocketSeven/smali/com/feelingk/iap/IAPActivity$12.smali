.class Lcom/feelingk/iap/IAPActivity$12;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x0

    .line 1447
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1448
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1449
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1451
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)V

    .line 1452
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1453
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1454
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1457
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1458
    .local v2, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 1459
    return-void
.end method
