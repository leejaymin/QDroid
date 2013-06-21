.class Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;
.super Ljava/lang/Object;
.source "IMAdInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial$1;->notifyResult(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial$1;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->b:Ljava/lang/Object;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 415
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v2}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v3}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/androidsdk/IMAdInterstitial;->c(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->d(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->b(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 422
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 424
    const-string v2, "Error retriving ad"

    .line 423
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 428
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$1$1;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;->a(Lcom/inmobi/androidsdk/IMAdInterstitial$1;)Lcom/inmobi/androidsdk/IMAdInterstitial;

    move-result-object v0

    .line 429
    const/16 v1, 0x65

    .line 430
    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 428
    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0
.end method
