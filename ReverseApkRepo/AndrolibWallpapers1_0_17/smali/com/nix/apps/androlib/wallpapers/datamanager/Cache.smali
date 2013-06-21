.class public Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;
    }
.end annotation


# instance fields
.field public api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

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

.field public includeViewId:I

.field public item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->includeViewId:I

    .line 23
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;->None:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->cacheType:Lcom/nix/apps/androlib/wallpapers/datamanager/Cache$enumCacheType;

    .line 24
    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 25
    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->api:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    .line 26
    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/Cache;->categories:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
