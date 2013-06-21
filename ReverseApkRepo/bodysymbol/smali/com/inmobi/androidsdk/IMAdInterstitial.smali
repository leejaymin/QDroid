.class public Lcom/inmobi/androidsdk/IMAdInterstitial;
.super Ljava/lang/Object;
.source "IMAdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/IMAdInterstitial$State;
    }
.end annotation


# static fields
.field private static final i:I = 0x12f

.field private static final j:I = 0x130

.field private static final k:I = 0x14

.field private static final m:I = 0x64

.field private static final n:I = 0x65

.field private static final o:I = 0x66

.field private static final p:I = 0x67

.field private static final q:I = 0x68


# instance fields
.field private a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field private b:Lcom/inmobi/androidsdk/IMAdRequest;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

.field private f:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private g:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private l:J

.field private r:Ljava/lang/String;

.field private s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private t:Landroid/os/Handler;

.field private u:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:J

    .line 356
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 429
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$2;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$3;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->u:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 96
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->r:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "site-id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "site-id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a()V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 207
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 211
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 212
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    check-cast v0, Landroid/view/WindowManager;

    .line 213
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 215
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 216
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->b:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 237
    const/16 v0, 0xe

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 240
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 241
    :cond_1
    const/16 v0, 0x11

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 244
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdInterstitial$4;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 6
    .parameter

    .prologue
    .line 403
    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 404
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "%"

    const-string v2, "%25"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Final HTML String: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Landroid/os/Handler;

    .line 417
    const/16 v3, 0x12f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 419
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 420
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->r:Ljava/lang/String;

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string v3, "text/html"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->r:Ljava/lang/String;

    .line 420
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/IMAdRequest;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 176
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "InMobiAndroidSDK_3.5.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time gap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iget-wide v5, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-wide v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 181
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Ad cannot be refreshed now, as the minimum refresh interval is20 seconds."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 188
    :cond_2
    if-nez p1, :cond_4

    move v1, v0

    .line 193
    :goto_1
    if-nez v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->validateAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->u:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/IMAdInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public getImAdInterstitialListener()Lcom/inmobi/androidsdk/IMAdInterstitialListener;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    return-object v0
.end method

.method public getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-object v0
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x65

    .line 136
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 139
    const-string v1, ">>>> Start loading new Interstitial Ad <<<<"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 143
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 170
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-ne v0, v1, :cond_2

    .line 150
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 149
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-ne v0, v1, :cond_3

    .line 153
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 154
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 161
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->b:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 162
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a()V

    .line 165
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 166
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 165
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 168
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .line 169
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_0
.end method

.method public setImAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    .line 299
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 256
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "InMobiAndroidSDK_3.5.2"

    const-string v1, "Showing the Interstitial Ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-eq v0, v1, :cond_2

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial ad is not in the \'READY\' state. Current state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 276
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Error showing ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 268
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnInterstitialClosed(Landroid/os/Message;)V

    .line 269
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->changeContentAreaForInterstitials()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
