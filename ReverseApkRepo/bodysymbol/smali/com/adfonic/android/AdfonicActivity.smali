.class public Lcom/adfonic/android/AdfonicActivity;
.super Landroid/app/Activity;
.source "AdfonicActivity.java"


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field private static final ENCODED_IMAGE:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUMxNUFDNkIzMDg2MTFFMTk2MDBBQUZDMDU2MEMzRDciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUMxNUFDNkMzMDg2MTFFMTk2MDBBQUZDMDU2MEMzRDciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpFQzE1QUM2OTMwODYxMUUxOTYwMEFBRkMwNTYwQzNENyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpFQzE1QUM2QTMwODYxMUUxOTYwMEFBRkMwNTYwQzNENyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pk0EGf8AAAaKSURBVHjavFhpSFVbFF7nXgMrqDTDoro3M7N6TfgQHEKaywbCwh9WviSwgaBeEvQjJQiiiczmaNRfRdBAOTTYsyxtwoIywiwkS0mpbJ7Nt771zjqce7q3IuIt+Fjbe/bZ69t7r+lofPr0iVwuFxmGIVqlra1N9NevX2XMOrK1tTWRdQLraIaHEcogxnNG/ZcvX2pYVzIqePzAfCZrqLYDYnz48EEMK0DEToIRx5jDLyQzvLpYILBh6IeMEh4XsL4SiATWN969e0dut9uHgEkinJHFkzIZIXihuLiYCgsLqaamhh49ekQtLS1CtEuXLtSzZ0/q27cvjRo1ipKSkpRQC5PYwzqX32+yn4hF4M2bN0JASZhX8Sevm8cYgUmHDh2i1atX0507d+hnpH///rRw4UJKTk7WU7nEBv/mcZXzFIxXr175EGAkMfKZSMTt27dpwYIFVFlZSb8iMTExtHLlSoqMjASROkYGo9xOwsAxBgUFKYkYNn6M4Tl9+jRNmjSJfofs3r2b4uPjQaKekcK4oT7hsjlHd8YWhqeoqMgyHhwcTGvXrqXt27dT586df2gMc3bs2EHr1q2TdyHz5s2jixcv4nQ9jC2M7hp17mXLlqnT5bBOq66uptGjR8uLOJXs7GxKSUmhiIgIio6OloU+fvwY0PjGjRvFEQcNGkRdu3alCxcuiLNhU+PGjcNvHkQ3oxS/u7OyskAglpHHCE5LS6PHjx9T+/btKScnh1JTUy3n7NOnDw0YMIDKy8u/IYFI2LRpE40cOdLyp6FDh1J4eDhVVFRIeN67d4+mT5+O6X8w/mE0upcuXWrw5Gx4/JEjR+T4IGvWrKEZM2b45AgsjJMACexMSWDneXl5NGbMGGuekhg2bBh16NCBzp8/T0+ePJFQjYqKwt20MopdfP9exlT4Ao7PviMsAgd1YuzYsbR582bq1q2bYOvWrXK8eNauXTtrno579Ojh45DmhqYyvEZdXd1fPCmfYSCZaIrE/eXm5sp92pKTz7i2tlbGiHt/z6FLS0slJ2jSgnH4GW+6DWGJExjBMPLz8y3jkGfPntGSJUvE6Zw7UsDRAH+nBJSVlfkY19py+PBhEMHVjwCBKIThiRMnvvHqFy9e0KJFi8TpAhnRa7JrAMYzMzN9jKucOnVKryHKZVY1amho8BtaIDF//nw6d+5cQGOOTEpnzpyhuXPnyrv+pLGxUed6XFpSX758GTC56EkgjJxFy149IXfv3pX0Hcg4BLbMdUKDYByLaP3/vwQnBpsus5n4bppFSO7atYsGDhz4w4WRI3bu3CnvfG89M188d5kFwidWnZP3799PEyZM8Pnd7JKsJuTz58+E7gpANgSJQJtCuJtXUA8CtVgEicQpISEhtHfvXqkNaggGkAEV6KiA9+/fC9DgvH37luLi4iQ1+yMxbdo0JVBrcJ62ElFsbKyVC8LCwmjbtm1iXHfr1OiMMEZ61d+cQB5BTVGnhGGkZCQi3pAkIjQIjdghFlLZsGGD1HDdEYDuCXj9+rVUt5kzZ9KsWbOopKSE0Nj4w5AhQwgVVwUV1dx9I/tAOfoBNJAnQSAjI8Oa2NzcbBlzAs3K8uXL6enTp4IVK1bQ2bNnA5JAVlUBGZPAScZDd3p6OsKwmZ+l9uvXL/j69evU1NQkJRRVzOv1WvcMICuuWrVKiKjAL65evSqOHBoa6uMjyHr79u0TH4JfoFFBakHDy2gQAkhOTCKUkTh48GBCWYbDXb58mTp27Ei9evUS4yC1fv16ORmngERVVZXUf0QO/kYhKigokLUgR48elecsWxgFkg9mz56t2ayadTw6FpDAMcOxbt68SZ06dZI2HE7pz7gKQvHWrVviwPfv36eDBw/KziHHjx+nxMREDCvM3ctCBhxIczlHQgzrY6w9165do8WLF/+WrIfvifHjxyMq6hm+Tak9fMwH6Yw63BfK5vDhw3/ZcEJCgpzIxIkTccp1jHTGDXuX5TI/v+wkEJapjEtovw4cOCAhyW3UTxvGFeL44TMIQ5ZLcHI2Xq7dsKXxqWW1yLbSytcQzshiZHIjEoLyiwXRC3IXJSVVkwsyZu/evSXGp0yZQpMnT1YjaAb2MHJ5k01+NvsfAc1QdhK2uh/HBOawTmZ4tSuyd0fO/gDxzShhAgWMK46PXZ9MGWRvlXASqrVM89/4ur3C40iEKS+cwDoazYQZupj3HA7GuoZRyahgQw+0L7SL9hD6r4B/BRgAsfqsx9kuDxQAAAAASUVORK5CYII="

.field private static final INTENT_EXTRA_ACTIVITY_START_TYPE:Ljava/lang/String; = "activityStartType"

.field private static final INTENT_EXTRA_AFTER_MEDIA_URL:Ljava/lang/String; = "afterMediaUrl"

.field private static final INTENT_EXTRA_MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field private static final INTENT_EXTRA_MEDIA_URL:Ljava/lang/String; = "mediaUrl"

.field private static final INTENT_EXTRA_URL:Ljava/lang/String; = "url"

.field private static final INTENT_INTERSTITIAL_AD:Ljava/lang/String; = "interstitialAd"

.field private static final INTERSTITIAL_TIMEOUT:I = 0xbb8

.field private static final MEDIA_PLAYER:Ljava/lang/String; = "MEDIA_PLAYER"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video"


# instance fields
.field private activityStartType:Ljava/lang/String;

.field private afterMediaUrl:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private mediaController:Landroid/widget/MediaController;

.field private mediaPlayerView:Landroid/widget/VideoView;

.field private mediaUrl:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->activityStartType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adfonic/android/AdfonicActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->hasVideoFinishedPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adfonic/android/AdfonicActivity;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adfonic/android/AdfonicActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->startBrowserIfNecessary()V

    return-void
.end method

.method static synthetic access$300(Lcom/adfonic/android/AdfonicActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildLayoutContainer()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 417
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 419
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 421
    return-object v0
.end method

.method private createLayout(Landroid/net/Uri;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "uri"
    .parameter "content"
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 380
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 382
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 390
    :goto_0
    invoke-direct {p0, v0}, Lcom/adfonic/android/AdfonicActivity;->keepAllWebContentInsideWebView(Landroid/webkit/WebView;)V

    .line 391
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    return-void

    .line 386
    :cond_0
    new-instance v3, Lcom/adfonic/android/utils/HtmlFormatter;

    invoke-direct {v3}, Lcom/adfonic/android/utils/HtmlFormatter;-><init>()V

    invoke-virtual {v3, p2}, Lcom/adfonic/android/utils/HtmlFormatter;->applyHtmlFormatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, contentFormatted:Ljava/lang/String;
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableWindowTitle()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicActivity;->requestWindowFeature(I)Z

    .line 228
    return-void
.end method

.method private getIntentParameters()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 218
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 219
    const-string v1, "mediaUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->mediaUrl:Ljava/lang/String;

    .line 220
    const-string v1, "afterMediaUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->afterMediaUrl:Ljava/lang/String;

    .line 221
    const-string v1, "activityStartType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->activityStartType:Ljava/lang/String;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adfonic/android/AdfonicActivity;->getUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->uri:Landroid/net/Uri;

    .line 224
    return-void
.end method

.method public static getOpenUrlIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "url"
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public static getPlayAudioIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "mediaUrl"
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "audio"

    invoke-static {p0, v0, p1}, Lcom/adfonic/android/AdfonicActivity;->getPlayMediaIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getPlayMediaIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "mediaUrl"
    .parameter "type"
    .parameter "context"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, i:Landroid/content/Intent;
    const-string v1, "mediaUrl"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "mediaType"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "activityStartType"

    const-string v2, "MEDIA_PLAYER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method public static getPlayVideoIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "mediaUrl"
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "video"

    invoke-static {p0, v0, p1}, Lcom/adfonic/android/AdfonicActivity;->getPlayMediaIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getStartInterstitialIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "content"
    .parameter "context"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, i:Landroid/content/Intent;
    const-string v1, "interstitialAd"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method private getUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 331
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, extra:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    :goto_0
    return-object v2

    .line 336
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hasVideoFinishedPlaying()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInterstitial()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, i:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    const-string v2, "interstitialAd"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMediaPlayer()Z
    .locals 2

    .prologue
    .line 208
    const-string v0, "MEDIA_PLAYER"

    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->activityStartType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepAllWebContentInsideWebView(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 395
    new-instance v0, Lcom/adfonic/android/AdfonicActivity$7;

    invoke-direct {v0, p0}, Lcom/adfonic/android/AdfonicActivity$7;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 414
    return-void
.end method

.method private prepareVideo(Landroid/widget/MediaController;)V
    .locals 2
    .parameter "mediaController"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/adfonic/android/AdfonicActivity$5;-><init>(Lcom/adfonic/android/AdfonicActivity;Landroid/widget/MediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 322
    return-void
.end method

.method private restartVideo()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 234
    :cond_0
    return-void
.end method

.method private setCloseButtonImageBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 372
    :try_start_0
    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUMxNUFDNkIzMDg2MTFFMTk2MDBBQUZDMDU2MEMzRDciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUMxNUFDNkMzMDg2MTFFMTk2MDBBQUZDMDU2MEMzRDciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpFQzE1QUM2OTMwODYxMUUxOTYwMEFBRkMwNTYwQzNENyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpFQzE1QUM2QTMwODYxMUUxOTYwMEFBRkMwNTYwQzNENyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pk0EGf8AAAaKSURBVHjavFhpSFVb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"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adfonic/android/utils/Base64;->decode([BI)[B

    move-result-object v0

    .line 373
    .local v0, imageAsBytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0           #imageAsBytes:[B
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setCompletionListener()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$3;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicActivity$3;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 283
    return-void
.end method

.method private setErrorListener()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$4;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicActivity$4;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 300
    return-void
.end method

.method private setInterstitialTimeout()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 189
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/adfonic/android/AdfonicActivity$2;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicActivity$2;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method

.method private setNoTitleAndFullScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicActivity;->requestWindowFeature(I)Z

    .line 203
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 205
    return-void
.end method

.method private setupMediaPlayer()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 249
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, mainLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 252
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 254
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 258
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    .line 259
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaController:Landroid/widget/MediaController;

    .line 262
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 263
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaController:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 264
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/adfonic/android/AdfonicActivity;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 266
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-virtual {p0, v1}, Lcom/adfonic/android/AdfonicActivity;->setContentView(Landroid/view/View;)V

    .line 271
    iget-object v2, p0, Lcom/adfonic/android/AdfonicActivity;->mediaController:Landroid/widget/MediaController;

    invoke-direct {p0, v2}, Lcom/adfonic/android/AdfonicActivity;->prepareVideo(Landroid/widget/MediaController;)V

    .line 272
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->setErrorListener()V

    .line 273
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->setCompletionListener()V

    .line 274
    return-void
.end method

.method private showInterstitialContent()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/16 v9, 0xf

    const/4 v8, -0x1

    .line 343
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "interstitialAd"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, content:Ljava/lang/String;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 345
    .local v3, rLayout:Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 347
    .local v4, rlParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->buildLayoutContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 349
    .local v2, ll:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0, v2}, Lcom/adfonic/android/AdfonicActivity;->createLayout(Landroid/net/Uri;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 351
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, image:Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/adfonic/android/AdfonicActivity;->setCloseButtonImageBitmap(Landroid/widget/ImageView;)V

    .line 353
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 354
    new-instance v6, Lcom/adfonic/android/AdfonicActivity$6;

    invoke-direct {v6, p0}, Lcom/adfonic/android/AdfonicActivity$6;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v5, tParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 363
    const/16 v6, 0xa

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 366
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {p0, v3}, Lcom/adfonic/android/AdfonicActivity;->setContentView(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method private startBrowser()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/adfonic/android/AdfonicActivity;->afterMediaUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .local v0, browser:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->finish()V

    .line 246
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntentBrowser Activity not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startBrowserIfNecessary()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->afterMediaUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->startBrowser()V

    .line 328
    :cond_0
    return-void
.end method

.method private startMedia()V
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->mediaUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 213
    .local v0, mediaUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->disableWindowTitle()V

    .line 107
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->mainHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->getIntentParameters()V

    .line 109
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->setNoTitleAndFullScreen()V

    .line 110
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->isMediaPlayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->setupMediaPlayer()V

    .line 112
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->startMedia()V

    .line 127
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->showInterstitialContent()V

    .line 117
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->setInterstitialTimeout()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->uri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicActivity;->finish()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->buildLayoutContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 125
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/adfonic/android/AdfonicActivity;->createLayout(Landroid/net/Uri;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->isMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$1;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicActivity$1;-><init>(Lcom/adfonic/android/AdfonicActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->isMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->hasVideoFinishedPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->isMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicActivity;->restartVideo()V

    .line 140
    :cond_0
    return-void
.end method
