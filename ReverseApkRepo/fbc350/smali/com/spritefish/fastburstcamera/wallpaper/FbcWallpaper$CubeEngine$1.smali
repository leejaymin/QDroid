.class Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine$1;
.super Ljava/lang/Object;
.source "FbcWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine$1;->this$1:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine$1;->this$1:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawFrame()V

    .line 89
    return-void
.end method
