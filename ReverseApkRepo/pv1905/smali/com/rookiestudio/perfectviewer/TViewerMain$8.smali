.class Lcom/rookiestudio/perfectviewer/TViewerMain$8;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$8;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1224
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
    .line 1226
    const/4 v3, 0x0

    sput-object v3, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    .line 1227
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v2, WorkFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1230
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1243
    :goto_0
    return-object v3

    .line 1233
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName1:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v0, WorkFile1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName2:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v1, WorkFile2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1238
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1239
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1241
    :cond_2
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName1:Ljava/lang/String;

    .line 1242
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    mul-int/lit8 v5, v5, 0x2

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    .line 1241
    invoke-virtual {v3, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->SaveResizedImage(Ljava/lang/String;II)V

    .line 1243
    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

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
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$8;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
