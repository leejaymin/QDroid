.class Lcom/feelingk/iap/IAPActivity$13;
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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/16 v8, 0x6b

    const/16 v7, 0x67

    const/4 v6, 0x0

    .line 1466
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1467
    .local v0, hnd:Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1468
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1470
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;)V

    .line 1474
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v8, :cond_0

    .line 1475
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 1476
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1479
    :cond_0
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;
    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    #setter for: Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;
    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1480
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z
    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1482
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1483
    .local v2, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v3, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v3, :cond_2

    .line 1484
    sput-boolean v6, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 1486
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onPurchaseDismiss()V

    .line 1495
    :cond_1
    :goto_0
    return-void

    .line 1491
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 1492
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 1493
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgError()V

    goto :goto_0
.end method
