.class public Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;
.super Lnet/robotmedia/billing/BillingRequest;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBillingSupported"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "startId"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingRequest;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "CHECK_BILLING_SUPPORTED"

    return-object v0
.end method

.method protected processOkResponse(Landroid/os/Bundle;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 40
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;->isSuccess()Z

    move-result v0

    .line 41
    .local v0, supported:Z
    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->onBillingChecked(Z)V

    .line 42
    return-void
.end method
