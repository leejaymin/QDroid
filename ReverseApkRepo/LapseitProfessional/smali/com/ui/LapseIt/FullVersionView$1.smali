.class Lcom/ui/LapseIt/FullVersionView$1;
.super Lnet/robotmedia/billing/helper/AbstractBillingObserver;
.source "FullVersionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/FullVersionView;->checkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/FullVersionView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/FullVersionView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/FullVersionView$1;->this$0:Lcom/ui/LapseIt/FullVersionView;

    .line 45
    invoke-direct {p0, p2}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onBillingChecked(Z)V
    .locals 2
    .parameter "supported"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView$1;->this$0:Lcom/ui/LapseIt/FullVersionView;

    #calls: Lcom/ui/LapseIt/FullVersionView;->restoreTransactions()V
    invoke-static {v0}, Lcom/ui/LapseIt/FullVersionView;->access$0(Lcom/ui/LapseIt/FullVersionView;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView$1;->this$0:Lcom/ui/LapseIt/FullVersionView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/FullVersionView;->showDialog(I)V

    goto :goto_0
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 1
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView$1;->this$0:Lcom/ui/LapseIt/FullVersionView;

    invoke-virtual {v0, p1, p2}, Lcom/ui/LapseIt/FullVersionView;->onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V

    .line 55
    return-void
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 1
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView$1;->this$0:Lcom/ui/LapseIt/FullVersionView;

    invoke-virtual {v0, p1, p2}, Lcom/ui/LapseIt/FullVersionView;->onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 50
    return-void
.end method
