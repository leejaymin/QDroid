.class public Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "FbcWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 53
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;-><init>(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 58
    return-void
.end method
