.class Lcom/wooboo/adlib_android/ImpressionAdView$2;
.super Ljava/lang/Thread;
.source "ImpressionAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->requestFreshAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 262
    :try_start_0
    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wooboo/adlib_android/___;->s(Landroid/content/Context;)Lcom/wooboo/adlib_android/__;

    move-result-object v1

    .line 263
    .local v1, newAd:Lcom/wooboo/adlib_android/__;
    if-eqz v1, :cond_0

    .line 264
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/wooboo/adlib_android/___;->isGif:Z

    .line 266
    new-instance v0, Lcom/wooboo/adlib_android/_;

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$2()Landroid/content/Context;

    move-result-object v2

    .line 267
    const/4 v3, 0x1

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getWh()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$4()I

    move-result v4

    #calls: Lcom/wooboo/adlib_android/ImpressionAdView;->getHt()I
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$5()I

    move-result v5

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/wooboo/adlib_android/_;-><init>(Lcom/wooboo/adlib_android/__;Landroid/content/Context;ZII)V

    .line 269
    .local v0, newAdContainer:Lcom/wooboo/adlib_android/_;
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wooboo/adlib_android/_;->setTextColor(I)V

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/wooboo/adlib_android/_;->setVisibility(I)V

    .line 272
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->access$6()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;

    invoke-direct {v3, p0, v0}, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;-><init>(Lcom/wooboo/adlib_android/ImpressionAdView$2;Lcom/wooboo/adlib_android/_;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    monitor-exit p0

    .line 332
    .end local v0           #newAdContainer:Lcom/wooboo/adlib_android/_;
    .end local v1           #newAd:Lcom/wooboo/adlib_android/__;
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local v1       #newAd:Lcom/wooboo/adlib_android/__;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    .end local v1           #newAd:Lcom/wooboo/adlib_android/__;
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 329
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "Wooboo SDK"

    const-string v3, "Unhandled exception requesting a fresh ad."

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
