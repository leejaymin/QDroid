.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$9;
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$9;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$9;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->downloadWallpaper()V

    .line 162
    return-void
.end method
