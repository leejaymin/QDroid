.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;
.super Ljava/lang/Thread;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->onRatingChanged(Landroid/widget/RatingBar;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

.field private final synthetic val$rate:I


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;->val$rate:I

    .line 365
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;->val$rate:I

    invoke-static {v0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->rateWallpaper(Ljava/lang/String;I)V

    return-void
.end method
