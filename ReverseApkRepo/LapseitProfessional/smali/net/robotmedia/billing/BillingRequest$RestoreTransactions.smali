.class public Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;
.super Lnet/robotmedia/billing/BillingRequest;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreTransactions"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "startId"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingRequest;-><init>(Ljava/lang/String;I)V

    .line 159
    return-void
.end method


# virtual methods
.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "RESTORE_TRANSACTIONS"

    return-object v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lnet/robotmedia/billing/BillingRequest;->onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 171
    sget-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    if-ne p1, v0, :cond_0

    .line 172
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->onTransactionsRestored()V

    .line 174
    :cond_0
    return-void
.end method
