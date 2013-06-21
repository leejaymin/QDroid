.class Lcom/feelingk/iap/IAPActivity$15;
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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;)V

    .line 1524
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    #calls: Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)V

    .line 1525
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1527
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 1528
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    #getter for: Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$38(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    return-void
.end method
