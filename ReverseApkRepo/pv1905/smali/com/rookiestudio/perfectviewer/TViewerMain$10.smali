.class Lcom/rookiestudio/perfectviewer/TViewerMain$10;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$10;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1272
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBootReceiver(Z)V

    .line 1273
    const-string v2, "WallpaperManagement"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1274
    const-string v2, "WallpaperWidth"

    .line 1275
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1274
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 1276
    const-string v2, "WallpaperHeight"

    .line 1277
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1276
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 1279
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1280
    .local v1, wpm:Landroid/app/WallpaperManager;
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :goto_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1285
    const/4 v2, 0x0

    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    .line 1286
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$10;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
