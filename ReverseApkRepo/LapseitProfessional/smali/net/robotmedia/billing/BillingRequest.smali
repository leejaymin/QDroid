.class public abstract Lnet/robotmedia/billing/BillingRequest;
.super Ljava/lang/Object;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;,
        Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;,
        Lnet/robotmedia/billing/BillingRequest$GetPurchaseInformation;,
        Lnet/robotmedia/billing/BillingRequest$RequestPurchase;,
        Lnet/robotmedia/billing/BillingRequest$ResponseCode;,
        Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;
    }
.end annotation


# static fields
.field public static final IGNORE_REQUEST_ID:J = -0x1L

.field private static final KEY_API_VERSION:Ljava/lang/String; = "API_VERSION"

.field private static final KEY_BILLING_REQUEST:Ljava/lang/String; = "BILLING_REQUEST"

.field private static final KEY_NONCE:Ljava/lang/String; = "NONCE"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field protected static final KEY_REQUEST_ID:Ljava/lang/String; = "REQUEST_ID"

.field private static final KEY_RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"


# instance fields
.field private nonce:J

.field private packageName:Ljava/lang/String;

.field private startId:I

.field private success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "startId"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lnet/robotmedia/billing/BillingRequest;->packageName:Ljava/lang/String;

    .line 195
    iput p2, p0, Lnet/robotmedia/billing/BillingRequest;->startId:I

    .line 196
    return-void
.end method


# virtual methods
.method protected addParams(Landroid/os/Bundle;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 200
    return-void
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lnet/robotmedia/billing/BillingRequest;->nonce:J

    return-wide v0
.end method

.method public abstract getRequestType()Ljava/lang/String;
.end method

.method public getStartId()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lnet/robotmedia/billing/BillingRequest;->startId:I

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lnet/robotmedia/billing/BillingRequest;->success:Z

    return v0
.end method

.method protected makeRequestBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingRequest;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lnet/robotmedia/billing/BillingRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingRequest;->hasNonce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "NONCE"

    iget-wide v2, p0, Lnet/robotmedia/billing/BillingRequest;->nonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    :cond_0
    return-object v0
.end method

.method public onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 0
    .parameter "responde"

    .prologue
    .line 229
    return-void
.end method

.method protected processOkResponse(Landroid/os/Bundle;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 233
    return-void
.end method

.method public run(Lcom/android/vending/billing/IMarketBillingService;)J
    .locals 5
    .parameter "mService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 236
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingRequest;->makeRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, request:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lnet/robotmedia/billing/BillingRequest;->addParams(Landroid/os/Bundle;)V

    .line 238
    invoke-interface {p1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 239
    .local v1, response:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lnet/robotmedia/billing/BillingRequest;->validateResponse(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {p0, v1}, Lnet/robotmedia/billing/BillingRequest;->processOkResponse(Landroid/os/Bundle;)V

    .line 241
    const-string v4, "REQUEST_ID"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 243
    :cond_0
    return-wide v2
.end method

.method public setNonce(J)V
    .locals 0
    .parameter "nonce"

    .prologue
    .line 248
    iput-wide p1, p0, Lnet/robotmedia/billing/BillingRequest;->nonce:J

    .line 249
    return-void
.end method

.method protected validateResponse(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "response"

    .prologue
    .line 252
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, responseCode:I
    invoke-static {v0}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->isResponseOk(I)Z

    move-result v1

    iput-boolean v1, p0, Lnet/robotmedia/billing/BillingRequest;->success:Z

    .line 254
    iget-boolean v1, p0, Lnet/robotmedia/billing/BillingRequest;->success:Z

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error with response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->valueOf(I)Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-boolean v1, p0, Lnet/robotmedia/billing/BillingRequest;->success:Z

    return v1
.end method
