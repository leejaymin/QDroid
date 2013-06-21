.class Lcom/inmobi/androidsdk/IMAdInterstitial$1;
.super Ljava/lang/Object;
.source "IMAdInterstitial.java"

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    return-object v0
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 361
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> Got HTTP REQUEST callback. Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    const-string v2, " ,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    if-nez p1, :cond_2

    .line 368
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;

    invoke-direct {v1, p0, p2}, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 395
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x65

    .line 396
    check-cast p2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 395
    invoke-static {v0, v1, p2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0
.end method
