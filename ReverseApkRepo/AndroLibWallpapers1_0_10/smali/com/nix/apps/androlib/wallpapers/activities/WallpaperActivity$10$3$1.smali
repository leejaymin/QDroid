.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3$1;
.super Ljava/lang/Thread;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3$1;->this$2:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$3;

    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->removeFavWallpaper(Ljava/lang/String;)V

    return-void
.end method
