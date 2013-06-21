.class Lcom/nix/apps/androlib/wallpapers/MainWall$23;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpaperDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$23;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 486
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$23;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpapersList:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 488
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$23;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->CategoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method
