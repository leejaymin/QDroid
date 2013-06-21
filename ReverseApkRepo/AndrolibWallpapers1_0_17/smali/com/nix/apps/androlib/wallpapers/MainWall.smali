.class public Lcom/nix/apps/androlib/wallpapers/MainWall;
.super Landroid/app/Activity;
.source "MainWall.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType:[I = null

.field private static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$modCommon$enumIncludes:[I = null

.field private static final MENU_DOWNLOADED:I = 0x8

.field private static final MENU_LANGUAGE:I = 0x4

.field private static final MENU_MMUSIA:I = 0x9

.field private static final MENU_MYFAVS:I = 0x7

.field private static final MENU_OUROTHERAPPS:I = 0x2

.field private static final MENU_QUIT:I = 0x3

.field private static final MENU_SENDTOFRIEND:I = 0x6

.field private static final MENU_SETWALLPAPER:I = 0x5

.field private static final MENU_SUBMITWALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpapers"


# instance fields
.field private animSet:Landroid/view/animation/AnimationSet;

.field private animationSetted:Z

.field private cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private canRefreshAds:Z

.field private controller:Landroid/view/animation/LayoutAnimationController;

.field private currentAuthorID:Ljava/lang/String;

.field private currentCategoryID:Ljava/lang/String;

.field private currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field private currentPageNum:I

.field private currentPageSize:I

.field private currentSearch:Ljava/lang/String;

.field private currentVisibleInclude:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

.field private currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

.field private lastPage:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mList:Landroid/widget/ListView;

.field private mListCat:Landroid/widget/ListView;

.field private mainGridDownload:Landroid/widget/GridView;

.field private maxResults:I

.field messageHandler:Landroid/os/Handler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->values()[Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Wallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$modCommon$enumIncludes()[I
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$modCommon$enumIncludes:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->values()[Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$modCommon$enumIncludes:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 94
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    .line 96
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 98
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    .line 100
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentVisibleInclude:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 108
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 109
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    .line 1428
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    .line 1452
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nix/apps/androlib/wallpapers/MainWall;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nix/apps/androlib/wallpapers/MainWall;)I
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    return v0
.end method

.method static synthetic access$7(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 1
    .parameter

    .prologue
    .line 2043
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->loadLocalFileList()Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/nix/apps/androlib/wallpapers/MainWall;Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 1809
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1810
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 1820
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    :goto_1
    return v3

    .line 1812
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 1813
    .local v2, success:Z
    if-nez v2, :cond_2

    .line 1814
    const/4 v3, 0x0

    goto :goto_1

    .line 1811
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadLocalFileList()Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .locals 12

    .prologue
    const-string v11, "/"

    .line 2045
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;-><init>()V

    .line 2046
    .local v0, api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ".jpg"

    aput-object v9, v1, v8

    .line 2047
    .local v1, extensions:[Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    const-string v8, "/sdcard/AndroLibWallpapers"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2048
    .local v7, podDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 2050
    :cond_0
    new-instance v2, Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;

    invoke-direct {v2, v1}, Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;-><init>([Ljava/lang/String;)V

    .line 2052
    .local v2, filter:Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2053
    invoke-virtual {v7, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 2055
    .local v5, lst:[Ljava/io/File;
    array-length v8, v5

    new-array v6, v8, [Lcom/nix/apps/androlib/wallpapers/utils/FileItem;

    .line 2056
    .local v6, names:[Lcom/nix/apps/androlib/wallpapers/utils/FileItem;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v5

    if-lt v3, v8, :cond_2

    .line 2064
    const/4 v3, 0x0

    :goto_1
    array-length v8, v6

    if-lt v3, v8, :cond_3

    .line 2073
    .end local v3           #i:I
    .end local v5           #lst:[Ljava/io/File;
    .end local v6           #names:[Lcom/nix/apps/androlib/wallpapers/utils/FileItem;
    :cond_1
    return-object v0

    .line 2057
    .restart local v3       #i:I
    .restart local v5       #lst:[Ljava/io/File;
    .restart local v6       #names:[Lcom/nix/apps/androlib/wallpapers/utils/FileItem;
    :cond_2
    new-instance v8, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;

    invoke-direct {v8}, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;-><init>()V

    aput-object v8, v6, v3

    .line 2058
    aget-object v8, v6, v3

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileName:Ljava/lang/String;

    .line 2059
    aget-object v8, v6, v3

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->folder:Ljava/lang/String;

    .line 2060
    aget-object v8, v6, v3

    sget-object v9, Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;->jpg:Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;

    iput-object v9, v8, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileType:Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;

    .line 2061
    aget-object v8, v6, v3

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->lastModified:J

    .line 2056
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2066
    :cond_3
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    invoke-direct {v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;-><init>()V

    .line 2067
    .local v4, item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v6, v3

    iget-object v9, v9, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->folder:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v3

    iget-object v9, v9, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    .line 2068
    const-string v8, "Wallpapers"

    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v10, v6, v3

    iget-object v10, v10, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->folder:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v3

    iget-object v10, v10, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v8, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public static trimCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1799
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1800
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1801
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1803
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

    .line 1781
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1782
    .local v0, trans1:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans1:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1783
    .restart local v0       #trans1:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1784
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1785
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1786
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1787
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->controller:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1788
    return-void
.end method

.method public animateGoAway()V
    .locals 3

    .prologue
    const/high16 v2, 0x43f0

    const/4 v1, 0x0

    .line 1772
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1773
    .local v0, trans1:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #trans1:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1774
    .restart local v0       #trans1:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1775
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1776
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1777
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1778
    return-void
.end method

.method public bye()V
    .locals 1

    .prologue
    .line 1792
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1793
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->clear()V

    .line 1794
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->trimCache(Landroid/content/Context;)V

    .line 1795
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->finish()V

    .line 1796
    return-void
.end method

.method public checkButtons()V
    .locals 8

    .prologue
    const v7, 0x7f06002d

    const/16 v6, 0xff

    const/16 v5, 0x32

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 655
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    if-lez v0, :cond_0

    .line 657
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 658
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 660
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    .line 664
    :cond_0
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v0, v3, :cond_2

    .line 666
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 667
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 673
    :goto_0
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    .line 675
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 676
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 684
    :goto_1
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v0, v3, :cond_4

    .line 686
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 687
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 694
    :goto_2
    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->lastPage:I

    if-ne v0, v3, :cond_5

    .line 696
    :cond_1
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 697
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 704
    :goto_3
    iget-boolean v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    if-eqz v0, :cond_6

    .line 706
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->updateAds()V

    .line 711
    :goto_4
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->showToastNfo()V

    .line 712
    return-void

    .line 669
    :cond_2
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 670
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0

    .line 679
    :cond_3
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 680
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_1

    .line 690
    :cond_4
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 691
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_2

    .line 700
    :cond_5
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 701
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_3

    .line 708
    :cond_6
    iput-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->canRefreshAds:Z

    goto :goto_4
.end method

.method public downloadWallpaper()V
    .locals 3

    .prologue
    .line 1938
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1940
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1941
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1942
    const v1, 0x7f040028

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1943
    const v1, 0x7f040029

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1944
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$48;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$48;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1953
    const v1, 0x7f040019

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$49;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$49;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1958
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1959
    return-void
.end method

.method public fillCategories()V
    .locals 3

    .prologue
    .line 1582
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;-><init>(Landroid/content/Context;)V

    .line 1583
    .local v0, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1584
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->controller:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1585
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->updateAdsCategories()V

    .line 1586
    return-void
.end method

.method public fillList(Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;Z)V
    .locals 5
    .parameter "lst"
    .parameter "fromCache"

    .prologue
    const/4 v3, 0x0

    const-string v4, "An error occured"

    .line 1535
    if-nez p1, :cond_0

    .line 1537
    const-string v2, "An error occured"

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1579
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1542
    const-string v2, "An error occured"

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    if-nez v2, :cond_5

    .line 1547
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;-><init>(Landroid/content/Context;)V

    .line 1548
    .local v0, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 1549
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1556
    :goto_1
    iget v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->total:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    .line 1557
    iget v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->pageSize:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    .line 1558
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->query:Ljava/lang/String;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 1559
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentAuthorID:Ljava/lang/String;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 1560
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentCategoryID:Ljava/lang/String;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 1562
    if-nez p2, :cond_2

    .line 1564
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;-><init>()V

    .line 1565
    .local v1, cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1566
    iput-object p1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1567
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    .end local v1           #cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :cond_2
    iget v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentPageNum:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 1571
    iget v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentPageNum:I

    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 1573
    :cond_3
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    if-eq v2, v3, :cond_4

    .line 1575
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1577
    :cond_4
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->checkButtons()V

    .line 1578
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateComeIn()V

    goto :goto_0

    .line 1551
    .end local v0           #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    :cond_5
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    .line 1553
    .restart local v0       #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    iget-object v2, p1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 1554
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public fillLocalFiles()V
    .locals 5

    .prologue
    const v4, 0x7f060007

    const-string v3, ""

    .line 1590
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1591
    const-string v2, ""

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 1592
    const-string v2, ""

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 1593
    const-string v2, ""

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 1595
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1597
    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    :goto_0
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;-><init>(Landroid/content/Context;)V

    .line 1604
    .local v0, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

    .line 1605
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1607
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;-><init>()V

    .line 1608
    .local v1, cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Downloaded:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1609
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1610
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    return-void

    .line 1599
    .end local v0           #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;
    .end local v1           #cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public fillWallpaper(Z)V
    .locals 6
    .parameter "fromCache"

    .prologue
    const v5, 0x7f06001c

    .line 1615
    if-nez p1, :cond_0

    .line 1617
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;-><init>()V

    .line 1618
    .local v0, cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Wallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1619
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 1620
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    .end local v0           #cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :cond_0
    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 1625
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1628
    .local v1, imgNews:Landroid/widget/ImageView;
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMediumImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1630
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020015

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1631
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Creator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1633
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->GlobalRating:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1636
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->IsFav:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1638
    invoke-virtual {p0, v5}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000f

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1643
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1645
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->clear()V

    .line 1646
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->isSDKAPI4Mini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1648
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMedium:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1652
    :goto_1
    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->UserRating:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1653
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->updateAdsWallpaper()V

    .line 1654
    return-void

    .line 1640
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1650
    :cond_2
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMedium:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThreadSDK3(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public getPageLink()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "http://wallpapers.androlib.com/"

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 1273
    const-string v1, "http://wallpapers.androlib.com/"

    move-object v1, v3

    .line 1282
    :goto_0
    return-object v1

    .line 1275
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->link:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->link:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1278
    :cond_1
    const-string v1, "http://wallpapers.androlib.com/"

    move-object v1, v3

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1282
    const-string v1, "http://wallpapers.androlib.com/"

    move-object v1, v3

    goto :goto_0
.end method

.method public getRemoteImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "aURL"

    .prologue
    .line 1962
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1963
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 1964
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1965
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1987
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    .line 1995
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #conn:Ljava/net/URLConnection;
    :goto_0
    return-object v4

    .line 1989
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1991
    .local v3, e:Ljava/io/IOException;
    const v4, 0x7f040022

    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1995
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1992
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 1993
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRemoteImageInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 4
    .parameter "aURL"

    .prologue
    .line 1999
    :try_start_0
    const-string v2, "Wallpapers"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 2001
    .local v0, conn:Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 2002
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2009
    .end local v0           #conn:Ljava/net/URLConnection;
    :goto_0
    return-object v2

    .line 2003
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2005
    .local v1, e:Ljava/io/IOException;
    const v2, 0x7f040022

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2009
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2006
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 2007
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public goFirstPage()V
    .locals 3

    .prologue
    .line 619
    const/4 v0, 0x1

    .line 621
    .local v0, firstPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 632
    :goto_0
    :pswitch_0
    return-void

    .line 623
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 624
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 625
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 626
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 627
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 628
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 629
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 630
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public goLastPage()V
    .locals 4

    .prologue
    .line 635
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    div-int v0, v1, v2

    .line 636
    .local v0, lastPage:I
    int-to-float v1, v0

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->maxResults:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 638
    add-int/lit8 v0, v0, 0x1

    .line 641
    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 652
    :goto_0
    :pswitch_0
    return-void

    .line 643
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 644
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 645
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 646
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 647
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 648
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 649
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 650
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public goNextPage()V
    .locals 3

    .prologue
    .line 585
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    add-int/lit8 v0, v1, 0x1

    .line 587
    .local v0, nextPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 598
    :goto_0
    :pswitch_0
    return-void

    .line 589
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 590
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 591
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 592
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 593
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 594
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 595
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 596
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public goPreviousPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 601
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    if-gt v1, v2, :cond_0

    .line 616
    :goto_0
    return-void

    .line 603
    :cond_0
    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    sub-int v0, v1, v2

    .line 605
    .local v0, previousPage:I
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 607
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V

    goto :goto_0

    .line 608
    :pswitch_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    goto :goto_0

    .line 609
    :pswitch_3
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0

    .line 611
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    goto :goto_0

    .line 612
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    goto :goto_0

    .line 613
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    goto :goto_0

    .line 614
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public hideAllIncludes()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1852
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1853
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1854
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1855
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1856
    return-void
.end method

.method public includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V
    .locals 3
    .parameter "inc"

    .prologue
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->hideAllIncludes()V

    .line 1825
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentVisibleInclude:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    .line 1826
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$modCommon$enumIncludes()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1849
    :goto_0
    return-void

    .line 1830
    :pswitch_0
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1835
    :pswitch_1
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1840
    :pswitch_2
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1845
    :pswitch_3
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1826
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public launchAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "authorID"

    .prologue
    .line 808
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V

    .line 809
    return-void
.end method

.method public launchAuthor(Ljava/lang/String;I)V
    .locals 3
    .parameter "authorID"
    .parameter "Page"

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 813
    move v2, p2

    .line 814
    .local v2, p:I
    move-object v0, p1

    .line 815
    .local v0, id:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$33;

    invoke-direct {v1, p0, v0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$33;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;I)V

    .line 816
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 817
    return-void
.end method

.method public launchAuthorThread(Ljava/lang/String;I)V
    .locals 7
    .parameter "authorID"
    .parameter "Page"

    .prologue
    const/4 v5, 0x1

    const-string v6, ""

    .line 820
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 821
    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 822
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 823
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 824
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 825
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 828
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

    .line 829
    .local v1, urlEnd:Ljava/lang/String;
    if-le p2, v5, :cond_0

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

    .line 832
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYAUTHOR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listAuthor:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p2}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    return-void

    .line 839
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 840
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "catID"

    .prologue
    .line 765
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;I)V

    .line 766
    return-void
.end method

.method public launchCategory(Ljava/lang/String;I)V
    .locals 3
    .parameter "catID"
    .parameter "Page"

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 770
    move v2, p2

    .line 771
    .local v2, p:I
    move-object v0, p1

    .line 772
    .local v0, id:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$32;

    invoke-direct {v1, p0, v0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$32;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;I)V

    .line 773
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 774
    return-void
.end method

.method public launchCategoryThread(Ljava/lang/String;I)V
    .locals 7
    .parameter "catID"
    .parameter "Page"

    .prologue
    const/4 v5, 0x1

    const-string v6, ""

    .line 778
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 780
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 781
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 782
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 783
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 786
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

    .line 787
    .local v1, urlEnd:Ljava/lang/String;
    if-le p2, v5, :cond_0

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

    .line 790
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCHBYCAT:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listCategories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p2}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    return-void

    .line 798
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 799
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchDownloadedWallpapers()V
    .locals 3

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1066
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1067
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->clear()V

    .line 1068
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1069
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 1070
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$39;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$39;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 1071
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1072
    return-void
.end method

.method public launchDownloadedWallpapersThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1076
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v2, 0x2c

    const v3, 0x7f040037

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1077
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1079
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->loadLocalFileList()Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1081
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    return-void
.end method

.method public launchLastWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 728
    move v1, p1

    .line 729
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$31;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$31;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 730
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 731
    return-void
.end method

.method public launchLastWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 735
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040007

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 738
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 739
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 740
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 741
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 743
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

    .line 744
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

    .line 747
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_LASTWALLPAPERS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listLast:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 761
    return-void

    .line 755
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 757
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchMyFavsWallpapers()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers(I)V

    .line 1025
    return-void
.end method

.method public launchMyFavsWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 1030
    move v1, p1

    .line 1031
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$38;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$38;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 1032
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1033
    return-void
.end method

.method public launchMyFavsWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 1036
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f04000b

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1038
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 1039
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1040
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 1041
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 1042
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 1044
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

    .line 1045
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

    .line 1048
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_MYFAVSWALLPAPER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listMyFav:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1060
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    return-void

    .line 1056
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1057
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchRandomWallpapers()V
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchRandomWallpapers(I)V

    .line 1088
    return-void
.end method

.method public launchRandomWallpapers(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 1093
    move v1, p1

    .line 1094
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$40;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$40;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 1095
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1096
    return-void
.end method

.method public launchRandomWallpapersThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 1099
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f04000c

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 1102
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1103
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 1104
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 1105
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 1107
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

    .line 1108
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

    .line 1111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_RANDOM:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listRandom:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1124
    return-void

    .line 1119
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchSearch()V
    .locals 2

    .prologue
    .line 972
    const v0, 0x7f06001f

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

    .line 974
    const v0, 0x7f040017

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V

    goto :goto_0
.end method

.method public launchSearch(I)V
    .locals 7
    .parameter "Page"

    .prologue
    const v6, 0x7f06001f

    .line 981
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 983
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 984
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v6}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 985
    const v4, 0x7f06001e

    invoke-virtual {p0, v4}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 987
    move v2, p1

    .line 988
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

    .line 989
    .local v3, query:Ljava/lang/String;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$37;

    invoke-direct {v1, p0, v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall$37;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;ILjava/lang/String;)V

    .line 990
    .local v1, mThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method

.method public launchSearchThread(ILjava/lang/String;)V
    .locals 7
    .parameter "Page"
    .parameter "query"

    .prologue
    const/4 v5, 0x1

    const-string v6, ""

    .line 994
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 996
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 997
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 998
    const-string v2, ""

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 999
    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&di="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getPhoneID2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, urlEnd:Ljava/lang/String;
    if-le p1, v5, :cond_0

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

    .line 1006
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_SEARCH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listSearch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1019
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1020
    return-void

    .line 1014
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1015
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopFavs()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopFavs(I)V

    .line 850
    return-void
.end method

.method public launchTopFavs(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 854
    move v1, p1

    .line 855
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$34;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$34;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 856
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 857
    return-void
.end method

.method public launchTopFavsThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 860
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040008

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 861
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 862
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 863
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 864
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 865
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 866
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 869
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

    .line 870
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

    .line 873
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPFAVS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopFavs:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 885
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 886
    return-void

    .line 880
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 881
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopInstalls()V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopInstalls(I)V

    .line 891
    return-void
.end method

.method public launchTopInstalls(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 895
    move v1, p1

    .line 896
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$35;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$35;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 897
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 898
    return-void
.end method

.method public launchTopInstallsThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 901
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f040009

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 903
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 904
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 905
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 906
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 907
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 910
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

    .line 911
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

    .line 914
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPINSTALLS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopInstall:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 927
    return-void

    .line 921
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 922
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public launchTopRated()V
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchTopRated(I)V

    .line 932
    return-void
.end method

.method public launchTopRated(I)V
    .locals 2
    .parameter "Page"

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 936
    move v1, p1

    .line 937
    .local v1, p:I
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$36;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$36;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 938
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 939
    return-void
.end method

.method public launchTopRatedThread(I)V
    .locals 9
    .parameter "Page"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    .line 942
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    const v5, 0x7f04000a

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 943
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 944
    iput p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    .line 945
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 946
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentCategoryID:Ljava/lang/String;

    .line 947
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentAuthorID:Ljava/lang/String;

    .line 948
    const-string v2, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    .line 951
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

    .line 952
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

    .line 955
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_TOPRATED:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->listTopRated:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v2, v3, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperItemAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v1           #urlEnd:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 967
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v3, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    return-void

    .line 962
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 963
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadCategories()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "0"

    .line 1128
    iget-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1132
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;-><init>()V

    .line 1135
    .local v0, api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_start_0
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->API_URL_CATEGORIES:Ljava/lang/String;

    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-static {v5, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/JSONParser;->parseWallpaperCategoryAPI(Ljava/lang/String;Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1141
    :goto_0
    new-instance v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    invoke-direct {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;-><init>()V

    .line 1142
    .local v3, cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    iput-object v0, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1143
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v5, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1144
    iget-object v5, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    iput-object v5, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->categories:Ljava/util/ArrayList;

    .line 1145
    iget-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object v5, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    sput-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    .line 1149
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1150
    .local v1, cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1151
    const v5, 0x7f04002f

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1152
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1153
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1154
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1156
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1157
    .restart local v1       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1158
    const v5, 0x7f040030

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1159
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1160
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1161
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1163
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1164
    .restart local v1       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1165
    const v5, 0x7f040031

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1166
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1167
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1168
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1170
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1171
    .restart local v1       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1172
    const v5, 0x7f040032

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1173
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1174
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1175
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1177
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1178
    .restart local v1       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1179
    const v5, 0x7f040033

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1180
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1181
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1182
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1184
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;-><init>()V

    .line 1185
    .restart local v1       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    const-string v5, "0"

    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 1186
    const v5, 0x7f040034

    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 1187
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v5, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 1188
    iput-boolean v8, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 1189
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1201
    .end local v0           #api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .end local v1           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    :goto_1
    iget-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    iget-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1204
    return-void

    .line 1136
    .end local v3           #cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    .restart local v0       #api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1138
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1191
    .end local v0           #api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    invoke-direct {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;-><init>()V

    .line 1192
    .restart local v3       #cc:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    new-instance v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-direct {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;-><init>()V

    .line 1193
    .local v2, catapi:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    iput-object v5, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    .line 1194
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v5, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1195
    iput-object v2, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1196
    sget-object v5, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->Categories:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v5, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 1197
    iget-object v5, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    iput-object v5, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->categories:Ljava/util/ArrayList;

    .line 1198
    iget-object v5, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const-string v11, "/"

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    sput-boolean v12, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    .line 150
    const-string v9, "http://wallapers.androlib.com/"

    sput-object v9, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 151
    const-string v9, "-AndrolibWallpapers"

    sput-object v9, Lcom/adwhirl/obj/Extra2;->extraLinkMarketCustom:Ljava/lang/String;

    .line 155
    const/4 v8, 0x0

    .line 156
    .local v8, width:I
    const/4 v4, 0x0

    .line 158
    .local v4, height:I
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 162
    sput v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenHeight:I

    .line 163
    sput v8, Lcom/nix/apps/androlib/wallpapers/modCommon;->screenWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    :goto_0
    invoke-static {v8, v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->setUrls(II)V

    .line 172
    sput-object p0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    .line 173
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->initLanguage()V

    .line 174
    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->forceLocate(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02000a

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    sput-object v9, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMediumImage:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02000b

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    sput-object v9, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    .line 179
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modPreferences;->LoadPreferences()V

    .line 181
    const v9, 0x7f03000c

    invoke-virtual {p0, v9}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setContentView(I)V

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 214
    .local v7, settings:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLastVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030002

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 219
    const v9, 0x7f020017

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 220
    const v9, 0x7f040002

    invoke-static {v9}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    const v9, 0x7f040004

    invoke-static {v9}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/nix/apps/androlib/wallpapers/MainWall$2;

    invoke-direct {v10, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$2;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 228
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "LastVersion"

    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpapersListInc()V

    .line 233
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->paramCategoriesInc()V

    .line 234
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpaperDetail()V

    .line 236
    new-instance v5, Lcom/nix/apps/androlib/wallpapers/MainWall$3;

    invoke-direct {v5, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$3;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 237
    .local v5, mThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 239
    new-instance v6, Lcom/magmamobile/mmusia/MMUSIA;

    invoke-direct {v6}, Lcom/magmamobile/mmusia/MMUSIA;-><init>()V

    .line 240
    .local v6, mmusia:Lcom/magmamobile/mmusia/MMUSIA;
    const/high16 v9, 0x7f04

    invoke-virtual {p0, v9}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p0, v9}, Lcom/magmamobile/mmusia/MMUSIA;->Init(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    return-void

    .line 164
    .end local v5           #mThread:Ljava/lang/Thread;
    .end local v6           #mmusia:Lcom/magmamobile/mmusia/MMUSIA;
    .end local v7           #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 166
    .local v2, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1671
    const v0, 0x7f04000f

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1673
    const/4 v0, 0x2

    const v1, 0x7f040010

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1674
    const/4 v0, 0x5

    const v1, 0x7f040026

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1675
    const/4 v0, 0x6

    const v1, 0x7f040027

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1676
    const/4 v0, 0x7

    const v1, 0x7f040030

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1677
    const/16 v0, 0x8

    const v1, 0x7f040038

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1678
    const/16 v0, 0x9

    const-string v1, "Magma Mobile News"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1679
    const/4 v0, 0x3

    const v1, 0x7f040012

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1680
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->stop()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "i"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1211
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1212
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;

    .line 1215
    .local v1, ch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/MainWall;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$Cache$enumCacheType()[I

    move-result-object v2

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1244
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->cache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1263
    .end local v1           #ch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :goto_1
    const/4 v2, 0x0

    .line 1265
    :goto_2
    return v2

    .line 1225
    .restart local v1       #ch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :pswitch_0
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 1226
    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 1227
    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    invoke-virtual {p0, v2, v5}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillList(Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;Z)V

    goto :goto_0

    .line 1230
    :pswitch_1
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 1231
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillCategories()V

    goto :goto_0

    .line 1234
    :pswitch_2
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 1235
    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    sput-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 1236
    invoke-virtual {p0, v5}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillWallpaper(Z)V

    goto :goto_0

    .line 1239
    :pswitch_3
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    goto :goto_0

    .line 1246
    .end local v1           #ch:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1247
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1248
    const v2, 0x7f020009

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1249
    const v2, 0x7f040013

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1250
    const v2, 0x7f040018

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nix/apps/androlib/wallpapers/MainWall$41;

    invoke-direct {v3, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$41;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1256
    const v2, 0x7f040019

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nix/apps/androlib/wallpapers/MainWall$42;

    invoke-direct {v3, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$42;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1265
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1685
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v6

    .line 1766
    :goto_0
    return v3

    .line 1687
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1688
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1689
    const v3, 0x7f02002f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1690
    const v3, 0x7f040014

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1691
    const v3, 0x7f040015

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1692
    const v3, 0x7f040004

    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nix/apps/androlib/wallpapers/MainWall$43;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$43;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v6

    .line 1698
    goto :goto_0

    .line 1701
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://search?q=pub:\"Magma Mobile\""

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v6

    .line 1707
    goto :goto_0

    .line 1704
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1705
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1709
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->finish()V

    move v3, v6

    .line 1710
    goto :goto_0

    :pswitch_3
    move v3, v6

    .line 1737
    goto :goto_0

    .line 1739
    :pswitch_4
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisWallpaper()V

    move v3, v6

    .line 1740
    goto :goto_0

    .line 1742
    :pswitch_5
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->sendEmail()V

    move v3, v6

    .line 1743
    goto :goto_0

    .line 1745
    :pswitch_6
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 1746
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchMyFavsWallpapers()V

    move v3, v6

    .line 1747
    goto :goto_0

    .line 1749
    :pswitch_7
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 1750
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchDownloadedWallpapers()V

    move v3, v6

    .line 1751
    goto/16 :goto_0

    .line 1753
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1754
    .local v2, intentMuusia:Landroid/content/Intent;
    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v6

    .line 1755
    goto/16 :goto_0

    .line 1685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1658
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentVisibleInclude:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    if-eq v0, v1, :cond_0

    .line 1660
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1661
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1666
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1663
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1664
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 7
    .parameter "ratingBar"
    .parameter "rating"
    .parameter "fromUser"

    .prologue
    const/4 v6, 0x0

    .line 2026
    float-to-int v1, p2

    .line 2027
    .local v1, rate:I
    if-eqz p3, :cond_0

    .line 2029
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$50;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$50;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V

    .line 2030
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2032
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    new-instance v3, Ljava/lang/StringBuilder;

    float-to-int v4, p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->UserRating:Ljava/lang/String;

    .line 2033
    float-to-int v2, p2

    if-nez v2, :cond_1

    .line 2035
    const v2, 0x7f04002c

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2041
    .end local v0           #mThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 2037
    .restart local v0       #mThread:Ljava/lang/Thread;
    :cond_1
    const v2, 0x7f04002d

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    float-to-int v5, p2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    return-void
.end method

.method public paramCategoriesInc()V
    .locals 3

    .prologue
    .line 418
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    .line 419
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mListCat:Landroid/widget/ListView;

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$21;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$21;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 470
    return-void
.end method

.method public paramWallpaperDetail()V
    .locals 2

    .prologue
    .line 473
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 474
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$22;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$22;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 484
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$23;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$23;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 495
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$24;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$24;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$25;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$25;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$26;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$26;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 514
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$27;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$27;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 521
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$28;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$28;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 528
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$29;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$29;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 535
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$30;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 581
    return-void
.end method

.method public paramWallpapersListInc()V
    .locals 2

    .prologue
    .line 246
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;

    .line 247
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;

    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    .line 291
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateGoAway()V

    .line 293
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$5;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$5;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$6;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$6;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$7;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$7;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$8;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$8;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 331
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$9;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$9;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$10;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$10;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$11;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$11;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$12;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$12;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$13;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$13;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$14;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$14;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$15;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$15;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$16;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$16;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$17;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$17;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$18;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$18;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$19;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$19;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/MainWall$20;

    invoke-direct {v1, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$20;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    .line 405
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setAnimation()V

    .line 415
    return-void
.end method

.method protected sendEmail()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2014
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f040023

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f040024

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Link:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    const v1, 0x7f040025

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivity(Landroid/content/Intent;)V

    .line 2021
    return-void
.end method

.method public setAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1431
    iget-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    if-nez v3, :cond_0

    .line 1432
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    .line 1434
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1435
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1436
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1438
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 1440
    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 1438
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1442
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1443
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1445
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animSet:Landroid/view/animation/AnimationSet;

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->controller:Landroid/view/animation/LayoutAnimationController;

    .line 1446
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->animationSetted:Z

    .line 1448
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public setThisLOCALWallpaper(Ljava/lang/String;)V
    .locals 3
    .parameter "pathName"

    .prologue
    .line 1881
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1883
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1884
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1885
    const v1, 0x7f04002b

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1886
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$46;

    invoke-direct {v2, p0, p1}, Lcom/nix/apps/androlib/wallpapers/MainWall$46;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1892
    const v1, 0x7f040019

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$47;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$47;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1897
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1898
    return-void
.end method

.method public setThisLOCALWallpaperThread(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"

    .prologue
    .line 1920
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1923
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1933
    :goto_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1934
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1935
    return-void

    .line 1924
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1926
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1927
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1929
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1930
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1931
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setThisWallpaper()V
    .locals 3

    .prologue
    .line 1861
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1863
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1864
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1865
    const v1, 0x7f04002b

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1866
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$44;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$44;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1872
    const v1, 0x7f040019

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$45;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$45;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1878
    return-void
.end method

.method public setThisWallpaperThread()V
    .locals 4

    .prologue
    .line 1902
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1905
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getRemoteImageInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1915
    :goto_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1916
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1917
    return-void

    .line 1906
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1908
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1909
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1911
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1912
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1913
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showToastNfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 716
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 718
    const v0, 0x7f040005

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    const v0, 0x7f040006

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

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    iget v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->total:I

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
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getPageLink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 1298
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_DEFAULTKEYWORDS:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->setKeywords(Landroid/content/Context;Ljava/lang/String;)V

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "List-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentListType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Page-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentPageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->trackAndDispatch(Ljava/lang/String;)V

    .line 1357
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getPageLink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 1329
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->setKeywords(Landroid/content/Context;Ljava/lang/String;)V

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Search-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->trackAndDispatch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAdsCategories()V
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getPageLink()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->setKeywords(Landroid/content/Context;Ljava/lang/String;)V

    .line 1388
    const-string v0, "Categories"

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->trackAndDispatch(Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public updateAdsWallpaper()V
    .locals 2

    .prologue
    .line 1393
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Link:Ljava/lang/String;

    sput-object v0, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall;->currentSearch:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->setKeywords(Landroid/content/Context;Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wallpaper/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->trackAndDispatch(Ljava/lang/String;)V

    .line 1424
    return-void
.end method
