.class public Lnet/robotmedia/billing/BillingRequest$RequestPurchase;
.super Lnet/robotmedia/billing/BillingRequest;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPurchase"
.end annotation


# static fields
.field private static final KEY_DEVELOPER_PAYLOAD:Ljava/lang/String; = "DEVELOPER_PAYLOAD"

.field private static final KEY_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field private static final KEY_PURCHASE_INTENT:Ljava/lang/String; = "PURCHASE_INTENT"


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "startId"
    .parameter "itemId"
    .parameter "developerPayload"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingRequest;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->itemId:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->developerPayload:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method protected addParams(Landroid/os/Bundle;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 108
    const-string v0, "ITEM_ID"

    iget-object v1, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->developerPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "DEVELOPER_PAYLOAD"

    iget-object v1, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "REQUEST_PURCHASE"

    return-object v0
.end method

.method public onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lnet/robotmedia/billing/BillingRequest;->onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 122
    iget-object v0, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->itemId:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/robotmedia/billing/BillingController;->onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 123
    return-void
.end method

.method protected processOkResponse(Landroid/os/Bundle;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 127
    const-string v1, "PURCHASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 128
    .local v0, purchaseIntent:Landroid/app/PendingIntent;
    iget-object v1, p0, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;->itemId:Ljava/lang/String;

    invoke-static {v1, v0}, Lnet/robotmedia/billing/BillingController;->onPurchaseIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 129
    return-void
.end method
