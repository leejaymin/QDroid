.class Lcom/nix/apps/androlib/wallpapers/MainWall$48$1;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall$48;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$48;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall$48;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$48$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$48;

    .line 1947
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$48$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$48;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$48;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall$48;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$48;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v0

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->downloadwallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1949
    return-void
.end method
