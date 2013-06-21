.class public Lcom/shoutem/GraphicUtils;
.super Ljava/lang/Object;
.source "GraphicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractExifOrientation(Ljava/io/File;)I
    .locals 5
    .parameter "imageFile"

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/drew/imaging/jpeg/JpegMetadataReader;->readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    .line 39
    .local v2, metadata:Lcom/drew/metadata/Metadata;
    if-eqz v2, :cond_0

    const-class v3, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Metadata;->containsDirectory(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-class v3, Lcom/drew/metadata/exif/ExifDirectory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Metadata;->getDirectory(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v1

    .line 41
    .local v1, exifDir:Lcom/drew/metadata/Directory;
    const/16 v3, 0x112

    invoke-virtual {v1, v3}, Lcom/drew/metadata/Directory;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 47
    .end local v1           #exifDir:Lcom/drew/metadata/Directory;
    .end local v2           #metadata:Lcom/drew/metadata/Metadata;
    :goto_0
    return v3

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "exif"

    const-string v4, "Unable to extract EXIF metadata"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getRotationAmount(I)I
    .locals 1
    .parameter "exifOrientation"

    .prologue
    const/4 v0, 0x0

    .line 60
    packed-switch p0, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    return v0

    .line 64
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 66
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 68
    :pswitch_3
    const/16 v0, 0x168

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static resizeBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "f"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 20
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    .local v0, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 23
    const/4 v2, 0x1

    .line 24
    .local v2, scale:I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, p1, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, p1, :cond_1

    .line 25
    :cond_0
    int-to-double v3, p1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v2, v3

    .line 29
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 30
    .local v1, o2:Landroid/graphics/BitmapFactory$Options;
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 32
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "originalBitmap"
    .parameter "amount"

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 56
    .end local p0
    :goto_0
    return-object p0

    .line 54
    .restart local p0
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    .local v5, rotateMatrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3
    .parameter "bitmap"
    .parameter "outFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v0, outFileStream:Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 78
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 79
    return-void
.end method
