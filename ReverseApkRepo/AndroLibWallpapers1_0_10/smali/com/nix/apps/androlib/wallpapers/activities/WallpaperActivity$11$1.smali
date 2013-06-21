.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11$1;
.super Ljava/lang/Thread;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;

    .line 270
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    move-result-object v0

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMax:Ljava/lang/String;

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->downloadwallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    return-void
.end method
