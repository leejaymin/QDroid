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
.field private static final j:I = 0x12f

.field private static final k:I = 0x130

.field private static final m:I = 0x14

.field private static final o:I = 0x64

.field private static final p:I = 0x65

.field private static final q:I = 0x66

.field private static final r:I = 0x67

.field private static final s:I = 0x68


# instance fields
.field private a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

.field private b:Lcom/inmobi/androidsdk/IMAdRequest;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

.field private g:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private h:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private l:Ljava/lang/String;

.field private n:J

.field private t:Ljava/lang/String;

.field private u:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private v:Landroid/os/Handler;

.field private w:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:J

    .line 76
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:Ljava/lang/String;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->n:J

    .line 399
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->u:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 472
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$2;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->v:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$3;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->w:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 99
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.noreply.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Ljava/lang/String;

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    if-nez p2, :cond_1

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "site-id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "site-id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 113
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->INIT:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:J

    .line 76
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:Ljava/lang/String;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->n:J

    .line 399
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$1;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->u:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 472
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$2;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->v:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMAdInterstitial$3;-><init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->w:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 131
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->incrementBaseUrl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.noreply.inmobi.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Ljava/lang/String;

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    if-nez p2, :cond_1

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "site-id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "site-id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 145
    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    .line 146
    iput-wide p3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:J

    .line 147
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a()V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 247
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 250
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 251
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 252
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    check-cast v0, Landroid/view/WindowManager;

    .line 253
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 255
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 256
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

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

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 263
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->b:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 277
    const/16 v0, 0xe

    .line 279
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 281
    :cond_1
    const/16 v0, 0x11

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 284
    iget-wide v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 287
    :cond_3
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 352
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
    .line 344
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->n:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 6
    .parameter

    .prologue
    .line 446
    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->NONE:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 447
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getCDATABlock()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v1, "%"

    const-string v2, "%25"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Final HTML String: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->v:Landroid/os/Handler;

    .line 460
    const/16 v3, 0x12f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 462
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 463
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Ljava/lang/String;

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    const-string v3, "text/html"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->t:Ljava/lang/String;

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/IMAdRequest;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 216
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 217
    const-string v3, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Time gap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget-wide v5, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->n:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-wide v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 221
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Ad cannot be refreshed now, as the minimum refresh interval is20 seconds."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    :goto_0
    return v0

    .line 228
    :cond_2
    if-nez p1, :cond_4

    move v1, v0

    .line 233
    :goto_1
    if-nez v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->validateAppId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->w:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/IMAdInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    return-object v0
.end method

.method private setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public getImAdInterstitialListener()Lcom/inmobi/androidsdk/IMAdInterstitialListener;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    return-object v0
.end method

.method public getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    return-object v0
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x65

    .line 171
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 174
    const-string v1, ">>>> Start loading new Interstitial Ad <<<<"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 178
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 205
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-ne v0, v1, :cond_2

    .line 185
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 184
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-ne v0, v1, :cond_3

    .line 188
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 189
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_0

    .line 194
    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->LOADING:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    .line 196
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->b:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 197
    invoke-direct {p0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a()V

    .line 200
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 201
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->c:Landroid/app/Activity;

    .line 200
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->h:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 203
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->l:Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->u:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 202
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_0
.end method

.method public setImAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->f:Lcom/inmobi/androidsdk/IMAdInterstitialListener;

    .line 342
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Showing the Interstitial Ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    if-eq v0, v1, :cond_2

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial ad is not in the \'READY\' state. Current state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->a:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Error showing ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/AdUnit;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->g:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 311
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->v:Landroid/os/Handler;

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestOnInterstitialClosed(Landroid/os/Message;)V

    .line 312
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->changeContentAreaForInterstitials()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
