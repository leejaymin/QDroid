.class public Lcom/rookiestudio/perfectviewer/Util20;
.super Ljava/lang/Object;
.source "Util20.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UpdateWallpaper(Landroid/content/Context;II)V
    .locals 2
    .parameter "APPContext"
    .parameter "WallpaperWidth"
    .parameter "WallpaperHeight"

    .prologue
    .line 9
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->WallpaperManagement:Z

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 14
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 15
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 17
    .end local v0           #wpm:Landroid/app/WallpaperManager;
    :cond_0
    return-void
.end method
