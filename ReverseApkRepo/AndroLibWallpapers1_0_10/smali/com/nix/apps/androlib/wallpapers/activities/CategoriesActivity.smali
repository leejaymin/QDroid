.class public Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;
.super Landroid/app/Activity;
.source "CategoriesActivity.java"


# instance fields
.field private animSet:Landroid/view/animation/AnimationSet;

.field private animationSetted:Z

.field private controller:Landroid/view/animation/LayoutAnimationController;

.field public mDialog:Landroid/app/ProgressDialog;

.field private mList:Landroid/widget/ListView;

.field private messageHandler:Landroid/os/Handler;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 157
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animationSetted:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->controller:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method


# virtual methods
.method public loadCategories()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;-><init>()V

    .line 139
    .local v1, rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://api.androlib.com/api/wallapi.ashx?getcats=1"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :goto_0
    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    sput-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    .line 149
    .end local v1           #rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void

    .line 140
    .restart local v1       #rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 142
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->setContentView(I)V

    .line 48
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/ads/GoogleAdView;

    .line 50
    .local v1, adView:Lcom/google/ads/GoogleAdView;
    new-instance v4, Lcom/google/ads/AdSenseSpec;

    const-string v5, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v4, v5}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v5, "Magma Mobile"

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 52
    const-string v5, "AndroLib Wallpapers"

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 53
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 54
    const-string v5, "0835371735"

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 55
    sget-object v5, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 56
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v5

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 57
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v5

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 58
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v5

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 59
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v5

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v5

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v4

    .line 61
    sget-boolean v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    invoke-virtual {v4, v5}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 69
    .local v0, adSenseSpec:Lcom/google/ads/AdSenseSpec;
    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 72
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;

    .line 73
    new-instance v2, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;

    invoke-direct {v5, p0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$2;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->setAnimation()V

    .line 122
    new-instance v3, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$3;

    invoke-direct {v3, p0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$3;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V

    .line 123
    .local v3, mThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 125
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 127
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v5, "/Categories"

    invoke-virtual {v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 130
    return-void
.end method

.method public setAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    iget-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animationSetted:Z

    if-nez v3, :cond_0

    .line 216
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animSet:Landroid/view/animation/AnimationSet;

    .line 218
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 219
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 220
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 222
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 224
    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 222
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 226
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 229
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animSet:Landroid/view/animation/AnimationSet;

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->controller:Landroid/view/animation/LayoutAnimationController;

    .line 230
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->animationSetted:Z

    .line 232
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
