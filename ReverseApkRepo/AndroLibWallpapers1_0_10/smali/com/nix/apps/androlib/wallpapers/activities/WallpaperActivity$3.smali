.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$3;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$3;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 119
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->mainApp:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->CategoryID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchCategory(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$3;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->finish()V

    .line 121
    return-void
.end method
