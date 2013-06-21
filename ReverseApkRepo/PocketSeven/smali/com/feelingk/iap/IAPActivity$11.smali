.class Lcom/feelingk/iap/IAPActivity$11;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlgButtonClick()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 1309
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_0

    .line 1310
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    #setter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v1, v3}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 1313
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$7(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1315
    .local v0, onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v1, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v1, :cond_1

    .line 1316
    sput-boolean v3, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 1317
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1319
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onPurchaseDismiss()V

    .line 1331
    .end local v0           #onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    :cond_0
    :goto_0
    return-void

    .line 1321
    .restart local v0       #onAppCallbackFn:Lcom/feelingk/iap/IAPLib$OnClientListener;
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x75

    if-eq v1, v2, :cond_2

    .line 1322
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3

    .line 1323
    :cond_2
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;)V

    goto :goto_0

    .line 1325
    :cond_3
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1326
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgError()V

    goto :goto_0
.end method
