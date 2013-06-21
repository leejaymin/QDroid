.class Lcom/ui/LapseIt/ProVersionView$1;
.super Lnet/robotmedia/billing/helper/AbstractBillingObserver;
.source "ProVersionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/ProVersionView;->checkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/ProVersionView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/ProVersionView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/ProVersionView$1;->this$0:Lcom/ui/LapseIt/ProVersionView;

    .line 80
    invoke-direct {p0, p2}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onBillingChecked(Z)V
    .locals 2
    .parameter "supported"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView$1;->this$0:Lcom/ui/LapseIt/ProVersionView;

    #calls: Lcom/ui/LapseIt/ProVersionView;->restoreTransactions()V
    invoke-static {v0}, Lcom/ui/LapseIt/ProVersionView;->access$0(Lcom/ui/LapseIt/ProVersionView;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView$1;->this$0:Lcom/ui/LapseIt/ProVersionView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/ProVersionView;->showDialog(I)V

    goto :goto_0
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 1
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView$1;->this$0:Lcom/ui/LapseIt/ProVersionView;

    invoke-virtual {v0, p1, p2}, Lcom/ui/LapseIt/ProVersionView;->onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V

    .line 90
    return-void
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 1
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView$1;->this$0:Lcom/ui/LapseIt/ProVersionView;

    invoke-virtual {v0, p1, p2}, Lcom/ui/LapseIt/ProVersionView;->onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 85
    return-void
.end method
