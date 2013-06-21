.class Lcom/rookiestudio/perfectviewer/TViewerMain$11;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperScreen()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$11;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1298
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1299
    .local v2, wpm:Landroid/app/WallpaperManager;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBootReceiver(Z)V

    .line 1300
    sput-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->WallpaperManagement:Z

    .line 1301
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sput v3, Lcom/rookiestudio/perfectviewer/Config;->WallpaperWidth:I

    .line 1302
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sput v3, Lcom/rookiestudio/perfectviewer/Config;->WallpaperHeight:I

    .line 1303
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    .line 1304
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    .line 1305
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1303
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1309
    .local v0, WallpaperBMP:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v3, "WallpaperManagement"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1310
    const-string v3, "WallpaperWidth"

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->WallpaperWidth:I

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 1311
    const-string v3, "WallpaperHeight"

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->WallpaperHeight:I

    invoke-static {v3, v4}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 1313
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :goto_0
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

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
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$11;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
