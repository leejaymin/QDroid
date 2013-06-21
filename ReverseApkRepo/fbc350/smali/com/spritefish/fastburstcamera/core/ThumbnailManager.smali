.class public Lcom/spritefish/fastburstcamera/core/ThumbnailManager;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# instance fields
.field private db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 23
    return-void
.end method

.method public static createThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "path"
    .parameter "rotate"
    .parameter "size"

    .prologue
    .line 50
    move v5, p3

    .line 51
    .local v5, w:I
    move v4, p3

    .line 52
    .local v4, h:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int v5, v6, v7

    .line 59
    :goto_0
    const/4 v6, 0x1

    invoke-static {p0, v5, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, b2:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 63
    .local v1, b3:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 66
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, exif:Landroid/media/ExifInterface;
    invoke-static {v0, v3}, Lcom/spritefish/camera/Util;->rotateImage(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    .line 77
    .end local v3           #exif:Landroid/media/ExifInterface;
    :goto_1
    return-object v1

    .line 55
    .end local v0           #b2:Landroid/graphics/Bitmap;
    .end local v1           #b3:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int v4, v6, v7

    goto :goto_0

    .line 69
    .restart local v0       #b2:Landroid/graphics/Bitmap;
    .restart local v1       #b3:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 71
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getThumbnailForBurst(Lcom/spritefish/fastburstcamera/db/dao/Burst;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "burst"

    .prologue
    .line 27
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->getThumbnailForBurst(Lcom/spritefish/fastburstcamera/db/dao/Burst;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailForBurst(Lcom/spritefish/fastburstcamera/db/dao/Burst;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "burst"
    .parameter "sz"

    .prologue
    .line 33
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    .line 34
    .local v2, pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 34
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 35
    .local v1, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, p2}, Lcom/spritefish/fastburstcamera/core/ThumbnailManager;->createThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 39
    .local v3, scaled:Landroid/graphics/Bitmap;
    goto :goto_0
.end method
