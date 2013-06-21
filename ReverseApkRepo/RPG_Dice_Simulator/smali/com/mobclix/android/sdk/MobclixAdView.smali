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


# instance fields
.field private TAG:Ljava/lang/String;

.field ad:Landroid/view/View;

.field adCode:Ljava/lang/String;

.field private adThread:Ljava/lang/Thread;

.field allowAutoplay:Z

.field backgroundColor:I

.field context:Landroid/content/Context;

.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field creative:Lcom/mobclix/android/sdk/MobclixCreative;

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

.field prevAd:Landroid/view/View;

.field prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field final rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

.field private refreshRate:J

.field restored:Z

.field rotate:Z

.field scale:F

.field size:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field width:F


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 29
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 30
    new-instance v0, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    invoke-direct {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 31
    const-string v0, "mobclix-adview"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 36
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    .line 37
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 40
    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 50
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 53
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Landroid/view/View;

    .line 54
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    .line 55
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 56
    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 60
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "c"
    .parameter "s"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 29
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    .line 30
    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    invoke-direct {v1, p0, v3}, Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rcHandler:Lcom/mobclix/android/sdk/MobclixAdView$RemoteConfigReadyHandler;

    .line 31
    const-string v1, "mobclix-adview"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    .line 36
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    .line 37
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 40
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 43
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 50
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 53
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Landroid/view/View;

    .line 54
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    .line 55
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 56
    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 66
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    .line 69
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    invoke-interface {p3, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, colorString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->initialize(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixAdView;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v7, "null"

    const-string v10, ""

    const-string v7, "UTF-8"

    .line 335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v0, data:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v3, keywordsBuffer:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 338
    .local v2, keywords:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v6, queryBuffer:Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 341
    .local v5, query:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getAdServer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v7, "?p=android"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 344
    const-string v7, "&i="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v7, "&s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :goto_0
    const-string v7, "&u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const-string v7, "&v="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v7, "&ct="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 354
    const-string v7, "&ll="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_0
    const-string v7, "&l="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v7, "&dt="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v7, "&sv="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string v7, "&ua="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    iget-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    if-eqz v7, :cond_5

    .line 362
    const-string v7, "&ap=1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :goto_1
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 393
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 398
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    :goto_3
    return-object v7

    .line 347
    :cond_4
    const-string v7, "&a="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 399
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 403
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    move-object v7, v10

    goto :goto_3

    .line 364
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    :try_start_1
    const-string v7, "&ap=0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 367
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 368
    .local v4, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v4, :cond_7

    .line 369
    invoke-interface {v4}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v2

    .line 370
    :cond_7
    if-nez v2, :cond_8

    .line 371
    const-string v2, ""

    .line 372
    :cond_8
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 374
    const-string v8, "&k="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_9
    :goto_4
    invoke-interface {v4}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->query()Ljava/lang/String;

    move-result-object v5

    .line 380
    if-nez v5, :cond_a

    .line 381
    const-string v5, ""

    .line 382
    :cond_a
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 383
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_c

    .line 384
    const-string v8, "&q="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 376
    :cond_b
    const-string v8, "%2C"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 386
    :cond_c
    const-string v8, "%2B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5, p1}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/content/Context;)V

    .line 215
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    new-instance v4, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v4, w:Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 220
    .local v3, settings:Landroid/webkit/WebSettings;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getUserAgentString"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 221
    .local v1, getUserAgent:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .end local v1           #getUserAgent:Ljava/lang/reflect/Method;
    .end local v3           #settings:Landroid/webkit/WebSettings;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->backgroundColor:I

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixAdView;->setBackgroundColor(I)V

    .line 233
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 238
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$WaitForRemoteConfigThread;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v2, rcThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 240
    return-void

    .line 222
    .end local v2           #rcThread:Ljava/lang/Thread;
    .restart local v3       #settings:Landroid/webkit/WebSettings;
    .restart local v4       #w:Landroid/webkit/WebView;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 223
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const-string v6, "Mozilla/5.0 (Linux; U; Android 1.1; en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v5, v6}, Lcom/mobclix/android/sdk/Mobclix;->setUserAgent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #settings:Landroid/webkit/WebSettings;
    .end local v4           #w:Landroid/webkit/WebView;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private restoreAd(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 280
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 287
    :cond_1
    return-void

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 283
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_3

    .line 284
    const v2, -0xf423f

    invoke-interface {v0, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V

    goto :goto_0
.end method

.method private stopFetchAdRequestTimer()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 192
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public allowAutoplay()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    return v0
.end method

.method public cancelAd()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 297
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
    .line 105
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 111
    :cond_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->finalize()V

    .line 112
    return-void
.end method

.method public getAd()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    .line 271
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 272
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 84
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->TAG:Ljava/lang/String;

    const-string v2, "Android project  issue 6191  workaround."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 93
    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 94
    throw v1

    .line 98
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
    .line 258
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Landroid/widget/ViewFlipper;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 259
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    const-string v1, "response"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, response:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->restoreAd(Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->restored:Z

    .line 264
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 244
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 246
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, savedInstanceState:Landroid/os/Bundle;
    const-string v1, "response"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 254
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
    .line 172
    if-eqz p1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->resume()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onResume()V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 184
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 198
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 199
    return-void
.end method

.method public removeMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 204
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    .line 209
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->isManuallyPaused:Z

    .line 210
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->getRefreshTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0
.end method

.method public setAllowAutoplay(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const-string v5, "x"

    .line 127
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, formatWidth:I
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, formatHeight:I
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v1, :cond_0

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_0

    .line 130
    int-to-float v2, v1

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 131
    int-to-float v2, v0

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 137
    :goto_0
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    iget v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void

    .line 133
    :cond_0
    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    .line 134
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    .line 135
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
    const-wide/16 v4, 0x7530

    .line 147
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 151
    :cond_0
    iput-wide p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 152
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 157
    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    .line 158
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    .line 159
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->handler:Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;

    invoke-direct {v1, p0, v2}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V

    iget-wide v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    iget-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->refreshRate:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public setShouldRotate(Z)V
    .locals 0
    .parameter "shouldRotate"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    return-void
.end method

.method public shouldRotate()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    return v0
.end method
