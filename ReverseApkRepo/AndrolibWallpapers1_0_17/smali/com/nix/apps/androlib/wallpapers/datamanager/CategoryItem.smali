.class public Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;
    }
.end annotation


# instance fields
.field public CatCount:Ljava/lang/String;

.field public CatID:Ljava/lang/String;

.field public CatName:Ljava/lang/String;

.field public Special:Z

.field public Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatID:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatCount:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    .line 19
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    .line 3
    return-void
.end method
