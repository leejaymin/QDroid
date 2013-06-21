.class Lcom/rookiestudio/perfectviewer/TViewerMain$9;
.super Ljava/lang/Object;
.source "TViewerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop1()V
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
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$9;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$9;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1259
    const/4 v1, 0x0

    sput-object v1, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    .line 1260
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
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
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$9;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
