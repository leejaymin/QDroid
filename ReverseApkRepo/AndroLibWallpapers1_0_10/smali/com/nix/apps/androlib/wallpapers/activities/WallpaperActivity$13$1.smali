.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13$1;
.super Ljava/lang/Thread;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;

    .line 294
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->setThisWallpaperThread()V

    return-void
.end method
