.class Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;
.super Lnet/robotmedia/billing/helper/AbstractBillingObserver;
.source "AbstractBillingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/robotmedia/billing/helper/AbstractBillingActivity;


# direct methods
.method constructor <init>(Lnet/robotmedia/billing/helper/AbstractBillingActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;->this$0:Lnet/robotmedia/billing/helper/AbstractBillingActivity;

    .line 47
    invoke-direct {p0, p2}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onBillingChecked(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 51
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;->this$0:Lnet/robotmedia/billing/helper/AbstractBillingActivity;

    invoke-virtual {v0, p1}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onBillingChecked(Z)V

    .line 52
    return-void
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 1
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 56
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;->this$0:Lnet/robotmedia/billing/helper/AbstractBillingActivity;

    invoke-virtual {v0, p1, p2}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V

    .line 57
    return-void
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 1
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 61
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;->this$0:Lnet/robotmedia/billing/helper/AbstractBillingActivity;

    invoke-virtual {v0, p1, p2}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 62
    return-void
.end method
