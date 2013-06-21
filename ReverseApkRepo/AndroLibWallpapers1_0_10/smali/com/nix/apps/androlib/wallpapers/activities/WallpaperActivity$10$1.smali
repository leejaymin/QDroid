.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 176
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;)V

    .line 177
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    const-string v2, "1"

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->IsFav:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$1;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020009

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    return-void
.end method
