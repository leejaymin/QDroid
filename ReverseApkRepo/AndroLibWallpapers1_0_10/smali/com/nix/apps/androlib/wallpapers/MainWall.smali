.class public Lcom/nix/apps/androlib/wallpapers/MainWall;
.super Landroid/app/Activity;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/MainWall$listType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType:[I = null

.field private static final MENU_LANGUAGE:I = 0x4

.field private static final MENU_OUROTHERAPPS:I = 0x2

.field private static final MENU_QUIT:I = 0x3

.field private static final MENU_SUBMITWALLPAPER:I = 0x1


# instance fields
.field private animSet:Landroid/view/animation/AnimationSet;

.field private animationSetted:Z

.field public canRefreshAds:Z

.field private controller:Landroid/view/animation/LayoutAnimationController;

.field public currentAuthorID:Ljava/lang/String;

.field public currentCategoryID:Ljava/lang/String;

.field public currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

.field public currentPageNum:I

.field public currentPageSize:I

.field public currentSearch:Ljava/lang/String;

.field public lastPage:I

.field public mDialog:Landroid/app/ProgressDialog;

.field private mList:Landroid/widget/ListView;

.field public maxResults:I

.field messageHandler:Landroid/os/Handler;

.field public rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->values()[Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byAuthor:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byCategory:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->myFavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->random:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->search:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topfavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->toprated:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    .line 62
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 63
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    .line 65
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 67
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    .line 85
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 86
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 925
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    .line 949
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 1149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1150
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 1160
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    :goto_1
    return v3

    .line 1152
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 1153
    .local v2, success:Z
    if-nez v2, :cond_2

    .line 1154
    const/4 v3, 0x0

    goto :goto_1

    .line 1151
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static trimCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1140
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public animateComeIn()V
    .locals 3

    .prologue
    const/high16 v2, 0x43f0

    const/4 v1, 0x0

    .line 1121
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1122
    .local v0, trans1:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans1:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1123
    .restart local v0       #trans1:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1124
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1126
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1127
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->controller:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1128
    return-void
.end method

.method public animateGoAway()V
    .locals 3

    .prologue
    const/high16 v2, 0x43f0

    const/4 v1, 0x0

    .line 1112
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1113
    .local v0, trans1:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans1:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1114
    .restart local v0       #trans1:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1115
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1117
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1118
    return-void
.end method

.method public bye()V
    .locals 1

    .prologue
    .line 1132
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1133
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->clear()V

    .line 1134
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->trimCache(Landroid/content/Context;)V

    .line 1135
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->finish()V

    .line 1136
    return-void
.end method

.method public checkButtons()V
    .locals 8

    .prologue
    const v7, 0x7f060019

    const/16 v6, 0xff

    const/16 v5, 0x32

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 411
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    if-lez v0, :cond_0

    .line 413
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 414
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 416
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 420
    :cond_0
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v0, v3, :cond_2

    .line 422
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 423
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 429
    :goto_0
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    .line 431
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 432
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 440
    :goto_1
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v0, v3, :cond_4

    .line 442
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 443
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 450
    :goto_2
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    if-ne v0, v3, :cond_5

    .line 452
    :cond_1
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 460
    :goto_3
    iget-boolean v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    if-eqz v0, :cond_6

    .line 462
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->updateAds()V

    .line 467
    :goto_4
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->showToastNfo()V

    .line 468
    return-void

    .line 425
    :cond_2
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 426
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0

    .line 435
    :cond_3
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 436
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_1

    .line 446
    :cond_4
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_2

    .line 456
    :cond_5
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 457
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_3

    .line 464
    :cond_6
    iput-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    goto :goto_4
.end method

.method public getPageLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    .line 857
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://wallpapers.androlib.com/"

    goto :goto_0
.end method

.method public goFirstPage()V
    .locals 3

    .prologue
    .line 373
    const/4 v0, 0x1

    .line 375
    .local v0, firstPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    :pswitch_0
    return-void

    .line 377
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 379
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 380
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 381
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 382
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 383
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 384
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public goLastPage()V
    .locals 4

    .prologue
    .line 390
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    div-int v0, v1, v2

    .line 391
    .local v0, lastPage:I
    int-to-float v1, v0

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 396
    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 407
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 401
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 402
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 403
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 404
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 405
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public goNextPage()V
    .locals 3

    .prologue
    .line 337
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    add-int/lit8 v0, v1, 0x1

    .line 339
    .local v0, nextPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 350
    :goto_0
    :pswitch_0
    return-void

    .line 341
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 343
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 344
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 345
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 346
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 347
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 348
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public goPreviousPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 354
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v1, v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    sub-int v0, v1, v2

    .line 358
    .local v0, previousPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$MainWall$listType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 362
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 364
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 365
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 366
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 367
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public launchAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "authorID"

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method public launchAuthor(Ljava/lang/String;I)V
    .locals 3
    .parameter "authorID"
    .parameter "Page"

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 562
    move v2, p2

    .line 563
    .local v2, p:I
    move-object v0, p1

    .line 564
    .local v0, id:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$21;

    invoke-direct {v1, p0, v0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$21;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;I)V

    .line 565
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 566
    return-void
.end method

.method public launchAuthorThread(Ljava/lang/String;I)V
    .locals 7
    .parameter "authorID"
    .parameter "Page"

    .prologue
    const/4 v6, 0x1

    const-string v5, ""

    .line 569
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 571
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byAuthor:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 572
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 573
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 574
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 577
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, urlEnd:Ljava/lang/String;
    if-le p2, v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?mid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 580
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 581
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    return-void

    .line 582
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 583
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 584
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "catID"

    .prologue
    .line 519
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method public launchCategory(Ljava/lang/String;I)V
    .locals 3
    .parameter "catID"
    .parameter "Page"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 524
    move v2, p2

    .line 525
    .local v2, p:I
    move-object v0, p1

    .line 526
    .local v0, id:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$20;

    invoke-direct {v1, p0, v0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$20;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;I)V

    .line 527
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 528
    return-void
.end method

.method public launchCategoryThread(Ljava/lang/String;I)V
    .locals 7
    .parameter "catID"
    .parameter "Page"

    .prologue
    const/4 v6, 0x1

    const-string v5, ""

    .line 532
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 534
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->byCategory:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 535
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 536
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 537
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 540
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, urlEnd:Ljava/lang/String;
    if-le p2, v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?catid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 543
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 544
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    return-void

    .line 545
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 546
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 547
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 548
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchLastWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 484
    move v1, p1

    .line 485
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$19;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$19;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 486
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 487
    return-void
.end method

.method public launchLastWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 491
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040006

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 494
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->last:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 495
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 496
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 497
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 499
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 503
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 504
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    return-void

    .line 505
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 507
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 510
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchMyFavsWallpapers()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    .line 754
    return-void
.end method

.method public launchMyFavsWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 759
    move v1, p1

    .line 760
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$26;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$26;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 761
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 762
    return-void
.end method

.method public launchMyFavsWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 765
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f04000a

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 767
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 768
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->myFavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 769
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 770
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 771
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 773
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?myfavs=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 776
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 777
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 786
    return-void

    .line 778
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 780
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 781
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 782
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchRandomWallpapers()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchRandomWallpapers(I)V

    .line 791
    return-void
.end method

.method public launchRandomWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 796
    move v1, p1

    .line 797
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$27;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$27;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 798
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 799
    return-void
.end method

.method public launchRandomWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 802
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f04000b

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 805
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->random:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 806
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 807
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 808
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 810
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?random=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 813
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 814
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    return-void

    .line 815
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 817
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 819
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchSearch()V
    .locals 2

    .prologue
    .line 705
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const v0, 0x7f040016

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0
.end method

.method public launchSearch(I)V
    .locals 7
    .parameter "Page"

    .prologue
    const v6, 0x7f06000c

    .line 714
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 716
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 717
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 718
    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 720
    move v2, p1

    .line 721
    .local v2, p:I
    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, query:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$25;

    invoke-direct {v1, p0, v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall$25;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;ILjava/lang/String;)V

    .line 723
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 724
    return-void
.end method

.method public launchSearchThread(ILjava/lang/String;)V
    .locals 7
    .parameter "Page"
    .parameter "query"

    .prologue
    const/4 v6, 0x1

    const-string v5, ""

    .line 727
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 729
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->search:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 730
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 731
    const-string v2, ""

    iput-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 732
    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?r="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 739
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 740
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 747
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    return-void

    .line 741
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 742
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 743
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 744
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopFavs()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    .line 595
    return-void
.end method

.method public launchTopFavs(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 599
    move v1, p1

    .line 600
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$22;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$22;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 601
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 602
    return-void
.end method

.method public launchTopFavsThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 605
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040007

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 608
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topfavs:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 609
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 610
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 611
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 614
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?bestfavs=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 617
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 618
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return-void

    .line 619
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 620
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 621
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 622
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopInstalls()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    .line 632
    return-void
.end method

.method public launchTopInstalls(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 636
    move v1, p1

    .line 637
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$23;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$23;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 638
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 639
    return-void
.end method

.method public launchTopInstallsThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 642
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040008

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 645
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 646
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 647
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 648
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 651
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?bestinstalls=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 654
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 655
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void

    .line 656
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 657
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 658
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 659
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopRated()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    .line 669
    return-void
.end method

.method public launchTopRated(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 673
    move v1, p1

    .line 674
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$24;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$24;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 675
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 676
    return-void
.end method

.method public launchTopRatedThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 679
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040009

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 680
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 681
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 682
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->toprated:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    .line 683
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 684
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 685
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 688
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    :cond_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.androlib.com/api/wallapi.ashx?best=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;)Z

    .line 691
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 692
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    return-void

    .line 693
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 694
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 695
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 696
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const-string v9, "/"

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sput-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->initLanguage()V

    .line 122
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->forceLocate(Landroid/content/Context;)V

    .line 124
    sput-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 125
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020006

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMediumImage:Landroid/graphics/Bitmap;

    .line 126
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020007

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    .line 127
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modPreferences;->LoadPreferences()V

    .line 130
    const v6, 0x7f030004

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setContentView(I)V

    .line 132
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 134
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v7, "UA-344156-61"

    invoke-virtual {v6, v7, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 135
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 139
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/ads/GoogleAdView;

    .line 141
    .local v2, adView:Lcom/google/ads/GoogleAdView;
    new-instance v6, Lcom/google/ads/AdSenseSpec;

    const-string v7, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v6, v7}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v7, "Magma Mobile"

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 143
    const-string v7, "AndroLib Wallpapers"

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 144
    sget-object v7, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 145
    const-string v7, "0835371735"

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 146
    sget-object v7, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 147
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v7

    iget-object v7, v7, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 148
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v7

    iget-object v7, v7, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 149
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v7

    iget-object v7, v7, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 150
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v7

    iget-object v7, v7, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 151
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v7

    iget-object v7, v7, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 152
    const-string v7, "http://wallpapers.androlib.com/"

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v6

    .line 153
    sget-boolean v7, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    invoke-virtual {v6, v7}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    .line 161
    .local v1, adSenseSpec:Lcom/google/ads/AdSenseSpec;
    invoke-virtual {v2, v1}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 163
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 164
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLastVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 169
    const v6, 0x108009b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 170
    const v6, 0x7f040001

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    const v6, 0x7f040003

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$2;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$2;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 177
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 178
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "LastVersion"

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const v6, 0x7f06000f

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    .line 183
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 185
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$3;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$3;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v6, 0x7f060018

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 197
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 196
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 209
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$5;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$5;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 208
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$6;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$6;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    const v6, 0x7f060017

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 226
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$7;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$7;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 225
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v6, 0x7f06001b

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 235
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$8;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$8;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 234
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v6, 0x7f06001a

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 242
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$9;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$9;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 241
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v6, 0x7f060019

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 248
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$10;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$10;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 247
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v6, 0x7f06001c

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 254
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$11;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$11;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 253
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 261
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$12;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$12;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 260
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v6, 0x7f060012

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 267
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$13;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$13;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 266
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 273
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$14;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$14;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 272
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v6, 0x7f060016

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 279
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$15;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$15;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 278
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v6, 0x7f060014

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 285
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$16;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$16;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 284
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v6, 0x7f060013

    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 291
    new-instance v7, Lcom/nix/apps/androlib/wallpapers/MainWall$17;

    invoke-direct {v7, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$17;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 290
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setAnimation()V

    .line 307
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/MainWall$18;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$18;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 308
    .local v4, mThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 312
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1044
    const v0, 0x7f04000e

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1046
    const/4 v0, 0x2

    const v1, 0x7f04000f

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1047
    const/4 v0, 0x3

    const v1, 0x7f040011

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1048
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "i"
    .parameter "event"

    .prologue
    .line 829
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 830
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 832
    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 833
    const v1, 0x7f040012

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 834
    const v1, 0x7f040017

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$28;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$28;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 840
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$29;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$29;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 847
    const/4 v1, 0x0

    .line 849
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 1053
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v5

    .line 1106
    :goto_0
    return v2

    .line 1055
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1057
    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1058
    const v2, 0x7f040013

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1059
    const v2, 0x7f040014

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1060
    const v2, 0x7f040003

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nix/apps/androlib/wallpapers/MainWall$30;

    invoke-direct {v3, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1065
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v5

    .line 1066
    goto :goto_0

    .line 1069
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pub:\"Magma Mobile\""

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v5

    .line 1073
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1071
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    const v3, 0x7f040010

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1075
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->finish()V

    move v2, v5

    .line 1076
    goto :goto_0

    :pswitch_3
    move v2, v5

    .line 1103
    goto :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    return-void
.end method

.method public setAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 928
    iget-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    if-nez v3, :cond_0

    .line 929
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    .line 931
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 932
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 933
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 935
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 937
    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 935
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 939
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 940
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 942
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->controller:Landroid/view/animation/LayoutAnimationController;

    .line 943
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    .line 945
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public showToastNfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const v0, 0x7f040004

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    const v0, 0x7f040005

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateAds()V
    .locals 9

    .prologue
    const-string v8, "ca-mb-app-pub-6807707624701585"

    const-string v7, "Magma Mobile"

    const-string v6, "AndroLib Wallpapers"

    const-string v4, "0835371735"

    const-string v5, "/"

    .line 864
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/ads/GoogleAdView;

    .line 867
    .local v1, adView:Lcom/google/ads/GoogleAdView;
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    new-instance v2, Lcom/google/ads/AdSenseSpec;

    const-string v3, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v2, v8}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 871
    const-string v3, "Magma Mobile"

    invoke-virtual {v2, v7}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 872
    const-string v3, "AndroLib Wallpapers"

    invoke-virtual {v2, v6}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 873
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 874
    const-string v3, "0835371735"

    invoke-virtual {v2, v4}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 875
    sget-object v3, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 876
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 877
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 878
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 879
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 880
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 881
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getPageLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 882
    sget-boolean v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 890
    .local v0, adSenseSpec:Lcom/google/ads/AdSenseSpec;
    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 892
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/List-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/MainWall$listType;

    invoke-virtual {v4}, Lcom/nix/apps/androlib/wallpapers/MainWall$listType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-Page-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 921
    :goto_0
    return-void

    .line 896
    .end local v0           #adSenseSpec:Lcom/google/ads/AdSenseSpec;
    :cond_0
    new-instance v2, Lcom/google/ads/AdSenseSpec;

    const-string v3, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v2, v8}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 897
    const-string v3, "Magma Mobile"

    invoke-virtual {v2, v7}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 898
    const-string v3, "AndroLib Wallpapers"

    invoke-virtual {v2, v6}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 899
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 900
    const-string v3, "0835371735"

    invoke-virtual {v2, v4}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 901
    sget-object v3, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 902
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 903
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 904
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 905
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 906
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v3

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 907
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getPageLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v2

    .line 908
    sget-boolean v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    invoke-virtual {v2, v3}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 916
    .restart local v0       #adSenseSpec:Lcom/google/ads/AdSenseSpec;
    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 918
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Search-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    goto/16 :goto_0
.end method
