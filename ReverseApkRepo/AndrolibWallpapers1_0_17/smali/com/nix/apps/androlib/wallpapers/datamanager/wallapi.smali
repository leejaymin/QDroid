.class public Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
.super Ljava/lang/Object;
.source "wallapi.java"


# instance fields
.field public cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public currentAuthorID:Ljava/lang/String;

.field public currentCategoryID:Ljava/lang/String;

.field public currentPageNum:I

.field public description:Ljava/lang/String;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;",
            ">;"
        }
    .end annotation
.end field

.field public link:Ljava/lang/String;

.field public pageSize:I

.field public query:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->title:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->description:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->link:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->total:I

    .line 12
    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->pageSize:I

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentPageNum:I

    .line 14
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->query:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentAuthorID:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->currentCategoryID:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->items:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;->categories:Ljava/util/ArrayList;

    .line 7
    return-void
.end method
