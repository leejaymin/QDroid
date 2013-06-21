.class public abstract Lcom/mobclix/android/sdk/MobclixAdView;
.super Landroid/widget/ViewFlipper;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;,
        Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;,
        Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;
    }
.end annotation


# static fields
.field private static final MINIMUM_REFRESH_TIME:J = 0x3a98L


# instance fields
.field private TAG:Ljava/lang/String;

.field ad:Lcom/mobclix/android/sdk/MobclixCreative;

.field adCode:Ljava/lang/String;

.field private adSpace:Ljava/lang/String;

.field private adThread:Ljava/lang/Thread;

.field allowAutoplay:I

.field backgroundColor:I

.field context:Landroid/content/Context;

.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field final handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

.field height:F

.field private isManuallyPaused:Z

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mobclix/android/sdk/MobclixAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field ordinal:I

.field prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

.field final rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

.field private refreshRate:J

.field restored:Z

.field rotate:Z

.field scale:F

.field size:Ljava/lang/String;

.field testMode:Z

.field private timer:Ljava/util/Timer;

.field width:F


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "a"
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 30
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v0, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 31
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    invoke-direct {v0, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 32
    const-string v0, "mobclix-adview"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 37
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    .line 39
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 42
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 45
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 52
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 55
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 57
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 58
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 62
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 65
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "a"
    .parameter "s"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    .line 70
    invoke-direct {p0, p1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 30
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v4}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 31
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    invoke-direct {v1, p0, v4}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 32
    const-string v1, "mobclix-adview"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 37
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    .line 39
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 42
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 45
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 49
    const-string v1, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 53
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 55
    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 57
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 58
    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 71
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 73
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    invoke-interface {p3, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, colorString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 79
    :cond_0
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    return-object v0
.end method

.method private initialize(Landroid/app/Activity;)V
    .locals 14
    .parameter "a"

    .prologue
    .line 228
    :try_start_0
    invoke-static {p1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 229
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    new-instance v8, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 231
    .local v8, w:Landroid/webkit/WebView;
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 234
    .local v6, settings:Landroid/webkit/WebSettings;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getUserAgentString"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 235
    .local v3, getUserAgent:Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v9, p1}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .end local v3           #getUserAgent:Ljava/lang/reflect/Method;
    .end local v6           #settings:Landroid/webkit/WebSettings;
    .end local v8           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    iget v9, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    invoke-virtual {p0, v9}, Lcom/mobclix/android/sdk/MobclixAdView;->setBackgroundColor(I)V

    .line 247
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 250
    :try_start_2
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 260
    :goto_1
    const-string v0, "com.admob.android.ads.AdManager"

    .line 262
    .local v0, className1:Ljava/lang/String;
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "setTestDevices"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 264
    .local v4, m:Ljava/lang/reflect/Method;
    const-string v9, "TEST_EMULATOR"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 265
    .local v7, testEmulator:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 269
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #m:Ljava/lang/reflect/Method;
    .end local v7           #testEmulator:Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/Thread;

    new-instance v9, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V

    invoke-direct {v5, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    .local v5, rcThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 271
    return-void

    .line 236
    .end local v0           #className1:Ljava/lang/String;
    .end local v5           #rcThread:Ljava/lang/Thread;
    .restart local v6       #settings:Landroid/webkit/WebSettings;
    .restart local v8       #w:Landroid/webkit/WebView;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 237
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-string v10, "Mozilla/5.0 (Linux; U; Android 1.1; en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v9, v10}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 241
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #settings:Landroid/webkit/WebSettings;
    .end local v8           #w:Landroid/webkit/WebView;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 266
    .restart local v0       #className1:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 251
    .end local v0           #className1:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1
.end method

.method private restoreAd(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 327
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 335
    :cond_1
    :goto_1
    return-void

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 330
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_3

    .line 331
    const v2, -0xf423f

    invoke-interface {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 334
    .end local v0           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 320
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private stopFetchAdRequestTimer()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 206
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public allowAutoplay()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAd()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 343
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 345
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 118
    :cond_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->finalize()V

    .line 119
    return-void
.end method

.method public getAd()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    .line 304
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    return-void
.end method

.method getAd(Ljava/lang/String;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 311
    :cond_0
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v0, p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    .line 312
    .local v0, fetchAdResponseThread:Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;
    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->setNextRequestParams(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    .line 314
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 315
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 91
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    const-string v2, "Android project  issue 6191  workaround."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 100
    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 101
    throw v1

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 289
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Landroid/widget/ViewFlipper;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 291
    :try_start_0
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    const-string v1, "response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, response:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->restoreAd(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0           #response:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 275
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 277
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, savedInstanceState:Landroid/os/Bundle;
    const-string v1, "response"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 285
    .end local v0           #savedInstanceState:Landroid/os/Bundle;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 186
    if-eqz p1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->resume()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onResume()V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 212
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 213
    return-void
.end method

.method public removeMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 218
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 223
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 224
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0
.end method

.method public setAdSpace(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;

    return-void
.end method

.method public setAllowAutoplay(Z)V
    .locals 1
    .parameter "auto"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const-string v5, "x"

    .line 136
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, formatWidth:I
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, formatHeight:I
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v1, :cond_0

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_0

    .line 140
    int-to-float v2, v1

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 141
    int-to-float v2, v0

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 147
    :goto_0
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void

    .line 143
    :cond_0
    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 144
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 145
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    goto :goto_0
.end method

.method public setRefreshTime(J)V
    .locals 6
    .parameter "rate"

    .prologue
    const-wide/16 v4, 0x3a98

    .line 157
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 159
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 161
    :cond_0
    iput-wide p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 162
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 167
    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 169
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 170
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    iget-wide v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    iget-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setShouldRotate(Z)V
    .locals 0
    .parameter "shouldRotate"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter "t"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    return-void
.end method

.method public shouldRotate()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    return v0
.end method
