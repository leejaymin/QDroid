.class public final Lcom/mosaicture/g/k;
.super Ljava/lang/Object;


# static fields
.field public static a:F

.field public static b:F

.field public static c:F

.field public static d:Z

.field public static e:Ljava/util/List;

.field public static f:Lcom/mosaicture/g/b;

.field private static g:Landroid/os/Handler;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:Landroid/graphics/Canvas;

.field private static l:Landroid/graphics/Bitmap;

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x4210

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/g/k;->g:Landroid/os/Handler;

    sput v1, Lcom/mosaicture/g/k;->m:I

    sput v1, Lcom/mosaicture/g/k;->n:I

    sput v1, Lcom/mosaicture/g/k;->o:I

    sput-boolean v1, Lcom/mosaicture/g/k;->p:Z

    sput v2, Lcom/mosaicture/g/k;->a:F

    sput v2, Lcom/mosaicture/g/k;->b:F

    const/high16 v0, 0x3f80

    sput v0, Lcom/mosaicture/g/k;->c:F

    sput-boolean v1, Lcom/mosaicture/g/k;->d:Z

    return-void
.end method

.method public static a(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, p0, p1, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v2, Lcom/mosaicture/g/k;->a:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/mosaicture/g/k;->b:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/mosaicture/e/a;

    invoke-direct {v0}, Lcom/mosaicture/e/a;-><init>()V

    throw v0

    :cond_2
    sget-object v1, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mosaicture/g/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mosaicture/g/k;->a(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Z)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mosaicture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const-string v0, "/Temp"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "/MosaicturePhotos"

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a([III)Ljava/util/ArrayList;
    .locals 14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p0

    div-int/lit8 v9, v0, 0x9

    div-int/lit8 v10, p1, 0x3

    div-int/lit8 v11, p2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    return-object v8

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-lt v7, v11, :cond_1

    div-int v2, v5, v6

    div-int/2addr v4, v6

    div-int/2addr v3, v6

    new-instance v5, Lcom/mosaicture/d/b;

    invoke-direct {v5}, Lcom/mosaicture/d/b;-><init>()V

    iput v2, v5, Lcom/mosaicture/d/b;->a:I

    iput v4, v5, Lcom/mosaicture/d/b;->b:I

    iput v3, v5, Lcom/mosaicture/d/b;->c:I

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v10, :cond_2

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    :cond_2
    mul-int v12, v2, v11

    add-int/2addr v12, v7

    add-int/2addr v12, v1

    aget v12, p0, v12

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v5, v13

    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v4, v13

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v3, v12

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static a(IIFF)V
    .locals 3

    const-string v0, "MosaicGenerationDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Canvas Initialized: canvasVerticalTilesQuantity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canvasHorizontalTilesQuantity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/mosaicture/g/k;->o:I

    sput p0, Lcom/mosaicture/g/k;->m:I

    sput p1, Lcom/mosaicture/g/k;->n:I

    sput p2, Lcom/mosaicture/g/k;->a:F

    sput p3, Lcom/mosaicture/g/k;->b:F

    sget v0, Lcom/mosaicture/g/k;->n:I

    int-to-float v0, v0

    sget v1, Lcom/mosaicture/g/k;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/mosaicture/g/k;->m:I

    int-to-float v1, v1

    sget v2, Lcom/mosaicture/g/k;->b:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/g/k;->l:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/mosaicture/g/k;->l:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/mosaicture/g/k;->k:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mosaicture/g/k;->p:Z

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 5

    sget-boolean v0, Lcom/mosaicture/g/k;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The canvas should be initialized first."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mosaicture/g/k;->k:Landroid/graphics/Canvas;

    sget v1, Lcom/mosaicture/g/k;->o:I

    sget v2, Lcom/mosaicture/g/k;->n:I

    rem-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/mosaicture/g/k;->a:F

    mul-float/2addr v1, v2

    sget v2, Lcom/mosaicture/g/k;->o:I

    sget v3, Lcom/mosaicture/g/k;->n:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/mosaicture/g/k;->b:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v0, Lcom/mosaicture/g/k;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mosaicture/g/k;->o:I

    sget v1, Lcom/mosaicture/g/k;->n:I

    sget v2, Lcom/mosaicture/g/k;->m:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/mosaicture/g/k;->b()V

    :cond_1
    sget v0, Lcom/mosaicture/g/k;->o:I

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/mosaicture/g/k;->n:I

    sget v2, Lcom/mosaicture/g/k;->m:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    sput v0, Lcom/mosaicture/g/k;->i:I

    sget v1, Lcom/mosaicture/g/k;->j:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/mosaicture/g/k;->i:I

    sget-object v1, Lcom/mosaicture/g/k;->h:Ljava/lang/String;

    sget-object v2, Lcom/mosaicture/g/k;->g:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "percent"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "imagePath"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/mosaicture/g/k;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    sget v0, Lcom/mosaicture/g/k;->i:I

    sput v0, Lcom/mosaicture/g/k;->j:I

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/mosaicture/g/k;->g:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mosaicture/g/k;->a(Z)Ljava/io/File;

    move-result-object v1

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mosaicture/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Mosaics/IMG_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/mosaicture/g/k;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The parameter bitmap and path cannot be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Lcom/mosaicture/a/a;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/mosaicture/g/s;

    invoke-direct {v2, v1}, Lcom/mosaicture/g/s;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/media/MediaScannerConnection;

    invoke-direct {v3, v0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v3, v2, Lcom/mosaicture/g/s;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/mosaicture/g/k;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/g/k;->k:Landroid/graphics/Canvas;

    sput-object v1, Lcom/mosaicture/g/k;->h:Ljava/lang/String;

    sget-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sput-boolean v6, Lcom/mosaicture/g/k;->d:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v2, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-virtual {v2, v0}, Lcom/mosaicture/g/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static b([III)[F
    .locals 14

    const/16 v0, 0x1b

    new-array v8, v0, [F

    array-length v0, p0

    div-int/lit8 v9, v0, 0x9

    div-int/lit8 v10, p1, 0x3

    div-int/lit8 v11, p2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    const/16 v0, 0x9

    if-lt v6, v0, :cond_0

    return-object v8

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-lt v5, v11, :cond_1

    div-int v0, v4, v1

    div-int/2addr v3, v1

    div-int v1, v2, v1

    mul-int/lit8 v2, v6, 0x3

    int-to-float v0, v0

    aput v0, v8, v2

    mul-int/lit8 v0, v6, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v3

    aput v2, v8, v0

    mul-int/lit8 v0, v6, 0x3

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v1

    aput v1, v8, v0

    add-int v1, v7, v9

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v10, :cond_2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    mul-int v12, v0, v11

    add-int/2addr v12, v5

    add-int/2addr v12, v7

    aget v12, p0, v12

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v4, v13

    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v3, v13

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v2, v12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
