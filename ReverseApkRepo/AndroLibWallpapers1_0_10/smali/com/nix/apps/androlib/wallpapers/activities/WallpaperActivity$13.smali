.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->setThisWallpaper()V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 294
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;)V

    .line 295
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    return-void
.end method
