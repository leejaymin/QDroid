.class Lcom/feelingk/iap/IAPActivity$2$1;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity$2;->onAuthDialogOKButtonClick(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feelingk/iap/IAPActivity$2;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 666
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " # Auto Runnale Mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v2

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v1

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v2

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 688
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 671
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v1

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v2

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v3

    #getter for: Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;
    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$4(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v4

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;
    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$5(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 675
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v1

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/IAPActivity;->sendItemAuth(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 678
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v1

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/IAPActivity;->sendItemUse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    #getter for: Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$1(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 681
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2$1;->this$1:Lcom/feelingk/iap/IAPActivity$2;

    #getter for: Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$2;->access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->sendItemWholeAuth()V

    goto/16 :goto_0

    .line 684
    :cond_4
    const-string v0, "IAPActivity"

    const-string v1, "# Auto Runnable Purchase Fail "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
