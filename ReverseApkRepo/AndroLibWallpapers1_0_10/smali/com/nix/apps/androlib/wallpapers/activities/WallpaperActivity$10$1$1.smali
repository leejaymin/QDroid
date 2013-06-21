.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1$1;
.super Ljava/lang/Thread;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1$1;->this$2:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;

    .line 176
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->addFavWallpaper(Ljava/lang/String;)V

    return-void
.end method
