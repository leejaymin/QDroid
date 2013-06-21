.class public Lcom/admob/android/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdView$SwapViews;,
        Lcom/admob/android/ads/AdView$AdListener;
    }
.end annotation


# static fields
.field private static final ADMOB_EMULATOR_NOTICE:Ljava/lang/String; = "http://api.admob.com/v1/pubcode/android_sdk_emulator_notice"

.field private static final ANIMATION_DURATION:I = 0x2bc

.field private static final ANIMATION_Z_DEPTH_PERCENTAGE:F = -0.4f

.field public static final HEIGHT:I = 0x30

.field private static checkedForMessages:Z

.field private static uiThreadHandler:Landroid/os/Handler;


# instance fields
.field private ad:Lcom/admob/android/ads/AdContainer;

.field private backgroundColor:I

.field private hideWhenNoAd:Z

.field private isOnScreen:Z

.field private keywords:Ljava/lang/String;

.field private listener:Lcom/admob/android/ads/AdView$AdListener;

.field private requestInterval:I

.field private requestIntervalTimer:Ljava/util/Timer;

.field private requestingFreshAd:Z

.field private searchQuery:Ljava/lang/String;

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/admob/android/ads/AdView;->checkedForMessages:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    iput-boolean v8, p0, Lcom/admob/android/ads/AdView;->isOnScreen:Z

    .line 230
    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdView;->setFocusable(Z)V

    .line 231
    const/high16 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/admob/android/ads/AdView;->setDescendantFocusability(I)V

    .line 232
    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    .line 235
    const/4 v4, -0x1

    .line 236
    .local v4, tc:I
    const/high16 v0, -0x100

    .line 238
    .local v0, bc:I
    if-eqz p2, :cond_1

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://schemas.android.com/apk/res/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, namespace:Ljava/lang/String;
    const-string v6, "testing"

    invoke-interface {p2, v3, v6, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 243
    .local v5, testing:Z
    if-eqz v5, :cond_0

    .line 245
    invoke-static {v5}, Lcom/admob/android/ads/AdManager;->setInTestMode(Z)V

    .line 248
    :cond_0
    const-string v6, "textColor"

    const/4 v7, -0x1

    invoke-interface {p2, v3, v6, v7}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 249
    const-string v6, "backgroundColor"

    const/high16 v7, -0x100

    invoke-interface {p2, v3, v6, v7}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 251
    const-string v6, "keywords"

    invoke-interface {p2, v3, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    .line 253
    const-string v6, "refreshInterval"

    invoke-interface {p2, v3, v6, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 254
    .local v1, freshAdsEvery:I
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 256
    const-string v6, "isGoneWithoutAd"

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->isGoneWithoutAd()Z

    move-result v7

    invoke-interface {p2, v3, v6, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 257
    .local v2, isGoneWithoutAd:Z
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setGoneWithoutAd(Z)V

    .line 260
    .end local v1           #freshAdsEvery:I
    .end local v2           #isGoneWithoutAd:Z
    .end local v3           #namespace:Ljava/lang/String;
    .end local v5           #testing:Z
    :cond_1
    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->setTextColor(I)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 264
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 268
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/AdContainer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/admob/android/ads/AdView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    return p1
.end method

.method static synthetic access$401(Lcom/admob/android/ads/AdView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->applyFadeIn(Lcom/admob/android/ads/AdContainer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->applyRotation(Lcom/admob/android/ads/AdContainer;)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/admob/android/ads/AdView;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/admob/android/ads/AdView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    return v0
.end method

.method private applyFadeIn(Lcom/admob/android/ads/AdContainer;)V
    .locals 3
    .parameter "newAd"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    .line 893
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView;->isOnScreen:Z

    if-eqz v1, :cond_0

    .line 895
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 896
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 897
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 898
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 899
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 901
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 903
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method private applyRotation(Lcom/admob/android/ads/AdContainer;)V
    .locals 7
    .parameter "newAd"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x4000

    .line 913
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 916
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 917
    .local v3, centerX:F
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 918
    .local v4, centerY:F
    const v1, -0x41333333

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 922
    .local v5, zDepth:F
    new-instance v0, Lcom/admob/android/ads/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 924
    .local v0, rotation:Lcom/admob/android/ads/Rotate3dAnimation;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/Rotate3dAnimation;->setDuration(J)V

    .line 925
    invoke-virtual {v0, v6}, Lcom/admob/android/ads/Rotate3dAnimation;->setFillAfter(Z)V

    .line 926
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 927
    new-instance v1, Lcom/admob/android/ads/AdView$3;

    invoke-direct {v1, p0, p1}, Lcom/admob/android/ads/AdView$3;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 945
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 946
    return-void
.end method

.method private manageRequestIntervalTimer(Z)V
    .locals 6
    .parameter "start"

    .prologue
    .line 503
    monitor-enter p0

    .line 505
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    if-lez v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    .line 511
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/admob/android/ads/AdView$2;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$2;-><init>(Lcom/admob/android/ads/AdView;)V

    iget v2, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 540
    :cond_0
    :goto_0
    monitor-exit p0

    .line 541
    return-void

    .line 531
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    if-nez v0, :cond_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private retrieveDeveloperMessage(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 830
    const/4 v7, 0x0

    .line 833
    .local v7, reader:Ljava/io/BufferedReader;
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {p1, v10, v11}, Lcom/admob/android/ads/AdRequester;->buildParamString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, paramString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v10, "http://api.admob.com/v1/pubcode/android_sdk_emulator_notice"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 842
    .local v2, devMessageURL:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 844
    .local v0, connection:Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v1, content:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 849
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 851
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 862
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v7, v8

    .line 870
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v2           #devMessageURL:Ljava/net/URL;
    .end local v6           #paramString:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v7, :cond_0

    .line 872
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 880
    :cond_0
    :goto_2
    return-void

    .line 853
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v0       #connection:Ljava/net/URLConnection;
    .restart local v1       #content:Ljava/lang/StringBuilder;
    .restart local v2       #devMessageURL:Ljava/net/URL;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #paramString:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    new-instance v10, Lorg/json/JSONTokener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 856
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v10, "data"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 857
    .local v5, message:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 859
    const-string v10, "AdMob SDK"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 870
    :cond_2
    if-eqz v8, :cond_3

    .line 872
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v7, v8

    .line 878
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 875
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    move-object v7, v8

    .line 879
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 868
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v2           #devMessageURL:Ljava/net/URL;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #paramString:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v10

    .line 870
    :goto_3
    if-eqz v7, :cond_4

    .line 872
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 878
    :cond_4
    :goto_4
    throw v10

    .line 875
    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v11

    goto :goto_4

    .line 868
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v0       #connection:Ljava/net/URLConnection;
    .restart local v1       #content:Ljava/lang/StringBuilder;
    .restart local v2       #devMessageURL:Ljava/net/URL;
    .restart local v6       #paramString:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 862
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v1           #content:Ljava/lang/StringBuilder;
    .end local v2           #devMessageURL:Ljava/net/URL;
    .end local v6           #paramString:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/admob/android/ads/AdView;->backgroundColor:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 2

    .prologue
    .line 437
    iget v1, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    div-int/lit16 v0, v1, 0x3e8

    .line 438
    .local v0, requestIntervalSecs:I
    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/admob/android/ads/AdView;->textColor:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    const/16 v0, 0x8

    .line 756
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneWithoutAd()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->isOnScreen:Z

    .line 810
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 811
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->isOnScreen:Z

    .line 820
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 821
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 796
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 799
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    .line 800
    .local v0, width:I
    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/AdView;->setMeasuredDimension(II)V

    .line 801
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    .line 554
    return-void
.end method

.method public requestFreshAd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "AdMob SDK"

    .line 276
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/admob/android/ads/AdView;->checkedForMessages:Z

    if-nez v1, :cond_0

    .line 280
    sput-boolean v3, Lcom/admob/android/ads/AdView;->checkedForMessages:Z

    .line 281
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->retrieveDeveloperMessage(Landroid/content/Context;)V

    .line 285
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    const-string v1, "AdMob SDK"

    const-string v1, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    if-eqz v1, :cond_3

    .line 293
    const-string v1, "AdMob SDK"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "AdMob SDK"

    const-string v1, "Ignoring requestFreshAd() because we are already getting a fresh ad."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_3
    iput-boolean v3, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    .line 303
    sget-object v1, Lcom/admob/android/ads/AdView;->uiThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 305
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/admob/android/ads/AdView;->uiThreadHandler:Landroid/os/Handler;

    .line 309
    :cond_4
    new-instance v1, Lcom/admob/android/ads/AdView$1;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$1;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView$1;->start()V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 599
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->backgroundColor:I

    .line 601
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v0, p1}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 607
    return-void
.end method

.method public setGoneWithoutAd(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 679
    iput-boolean p1, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    .line 680
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setListener(Lcom/admob/android/ads/AdView$AdListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 770
    monitor-enter p0

    .line 772
    :try_start_0
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;

    .line 773
    monitor-exit p0

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRequestInterval(I)V
    .locals 8
    .parameter "requestInterval"

    .prologue
    const/16 v6, 0x258

    const/16 v5, 0xf

    const-string v7, "AdView.setRequestInterval("

    .line 457
    const/16 v1, 0xf

    .line 458
    .local v1, minSecs:I
    const/16 v0, 0x258

    .line 460
    .local v0, maxSecs:I
    if-gtz p1, :cond_1

    .line 462
    const/4 p1, 0x0

    .line 475
    :cond_0
    :goto_0
    mul-int/lit16 v2, p1, 0x3e8

    .line 476
    .local v2, requestIntervalMillisecs:I
    iput v2, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    .line 479
    if-nez p1, :cond_3

    .line 482
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    .line 490
    :goto_1
    return-void

    .line 464
    .end local v2           #requestIntervalMillisecs:I
    :cond_1
    if-ge p1, v5, :cond_2

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView.setRequestInterval("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") seconds must be >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    if-le p1, v6, :cond_0

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView.setRequestInterval("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") seconds must be <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    .restart local v2       #requestIntervalMillisecs:I
    :cond_3
    const-string v3, "AdMob SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting fresh ads every "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    goto :goto_1
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "searchQuery"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 567
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->textColor:I

    .line 569
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v0, p1}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 575
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 704
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    .line 706
    .local v3, originalVisiblity:I
    if-eq v3, p1, :cond_1

    .line 708
    monitor-enter p0

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getChildCount()I

    move-result v1

    .line 713
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 715
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 723
    if-nez p1, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 734
    :goto_1
    monitor-exit p0

    .line 736
    .end local v1           #children:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 730
    .restart local v1       #children:I
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->removeView(Landroid/view/View;)V

    .line 731
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    .line 732
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    goto :goto_1

    .line 734
    .end local v1           #children:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
