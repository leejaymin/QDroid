.class public Lui/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/utils/ImageUtils$EFFECTS;
    }
.end annotation


# static fields
.field private static canvas:Landroid/graphics/Canvas;

.field private static decodeBounds:Landroid/graphics/BitmapFactory$Options;

.field private static effectCanvas:Landroid/graphics/Canvas;

.field private static effectMatrix:Landroid/graphics/Matrix;

.field private static effectPaint:Landroid/graphics/Paint;

.field public static flipX:Z

.field public static flipY:Z

.field private static inSampleSize:Landroid/graphics/BitmapFactory$Options;

.field static matrixMirrorY:Landroid/graphics/Matrix;

.field static mirrorY:[F

.field private static paint:Landroid/graphics/Paint;

.field static reallyApply:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 24
    sput-object v0, Lui/utils/ImageUtils;->mirrorY:[F

    .line 33
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    .line 34
    sget-object v0, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 35
    sget-object v0, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 36
    sget-object v0, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    .line 39
    sget-object v0, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    sget-object v0, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->matrixMirrorY:Landroid/graphics/Matrix;

    .line 43
    sget-object v0, Lui/utils/ImageUtils;->matrixMirrorY:Landroid/graphics/Matrix;

    sget-object v1, Lui/utils/ImageUtils;->mirrorY:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->canvas:Landroid/graphics/Canvas;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->paint:Landroid/graphics/Paint;

    .line 251
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->effectCanvas:Landroid/graphics/Canvas;

    .line 252
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->effectMatrix:Landroid/graphics/Matrix;

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lui/utils/ImageUtils;->effectPaint:Landroid/graphics/Paint;

    .line 311
    sput-boolean v2, Lui/utils/ImageUtils;->reallyApply:Z

    .line 19
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBitmapEffect(Landroid/graphics/Bitmap;Lui/utils/ImageUtils$EFFECTS;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "sourceBitmap"
    .parameter "effect"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 313
    sget-boolean v2, Lui/utils/ImageUtils;->reallyApply:Z

    if-eqz v2, :cond_0

    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    if-ne p1, v2, :cond_1

    .line 314
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, b:Landroid/graphics/Bitmap;
    move-object v1, v0

    .line 327
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 316
    :cond_1
    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->BLACK_WHITE:Lui/utils/ImageUtils$EFFECTS;

    if-eq p1, v2, :cond_2

    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->VIVID_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    if-eq p1, v2, :cond_2

    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->INVERT_COLOURS:Lui/utils/ImageUtils$EFFECTS;

    if-ne p1, v2, :cond_3

    move v2, v3

    :goto_1
    sget-object v5, Lui/utils/ImageUtils$EFFECTS;->SEPHIA:Lui/utils/ImageUtils$EFFECTS;

    if-ne p1, v5, :cond_4

    move v5, v3

    :goto_2
    or-int/2addr v2, v5

    sget-object v5, Lui/utils/ImageUtils$EFFECTS;->VINTAGE:Lui/utils/ImageUtils$EFFECTS;

    if-ne p1, v5, :cond_5

    :goto_3
    or-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 317
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 319
    .local v1, effectBitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lui/utils/ImageUtils;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lui/utils/ImageUtils$EFFECTS;->getFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 321
    sget-object v2, Lui/utils/ImageUtils;->effectCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    sget-object v2, Lui/utils/ImageUtils;->effectCanvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 323
    sget-object v2, Lui/utils/ImageUtils;->effectCanvas:Landroid/graphics/Canvas;

    sget-object v3, Lui/utils/ImageUtils;->effectMatrix:Landroid/graphics/Matrix;

    sget-object v4, Lui/utils/ImageUtils;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v1           #effectBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move v2, v4

    .line 316
    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 327
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBitmapDimension(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v7, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v1           #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    move-object v2, v3

    .line 59
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "filePath"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "fillHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, b:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, fis:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    sget-object v14, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 81
    const/4 v8, 0x1

    .line 83
    .local v8, scale:I
    :goto_0
    sget-object v12, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v12, v12

    add-int/lit8 v14, v8, 0x1

    int-to-double v14, v14

    div-double/2addr v12, v14

    move/from16 v0, p1

    int-to-double v14, v0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    sget-object v12, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v12, v12

    add-int/lit8 v14, v8, 0x1

    int-to-double v14, v14

    div-double/2addr v12, v14

    move/from16 v0, p2

    int-to-double v14, v0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_1

    .line 87
    :cond_0
    sget-object v12, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    iput v8, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 89
    if-eqz p3, :cond_2

    .line 90
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    :goto_1
    sget-object v12, Lui/utils/ImageUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #fis:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v6       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    sget-object v14, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 99
    .local v3, canvasBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 103
    if-nez v3, :cond_3

    .line 104
    const/4 v12, 0x0

    .line 162
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #scale:I
    :goto_2
    return-object v12

    .line 84
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #scale:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 92
    :cond_2
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 107
    .restart local v3       #canvasBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v0, p1

    int-to-float v12, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 108
    .local v11, scaleRatioWidth:F
    move/from16 v0, p2

    int-to-float v12, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v12, v13

    .line 110
    .local v10, scaleRatioHeight:F
    move v9, v11

    .line 111
    .local v9, scaleRatio:F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    move/from16 v0, p2

    int-to-float v13, v0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 112
    move v9, v10

    .line 117
    :cond_4
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    sub-int v4, v12, p1

    .line 119
    .local v4, diffWidth:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    .local v7, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 122
    if-eqz p3, :cond_5

    .line 123
    neg-int v12, v4

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 126
    :cond_5
    sget-boolean v12, Lui/utils/ImageUtils;->flipX:Z

    if-eqz v12, :cond_8

    sget-boolean v12, Lui/utils/ImageUtils;->flipY:Z

    if-nez v12, :cond_8

    .line 127
    const/high16 v12, -0x4080

    const/high16 v13, 0x3f80

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 128
    move/from16 v0, p1

    int-to-float v12, v0

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 137
    :cond_6
    :goto_4
    sget-object v12, Lui/utils/ImageUtils;->canvas:Landroid/graphics/Canvas;

    sget-object v13, Lui/utils/ImageUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v3, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 148
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffWidth:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scale:I
    .end local v9           #scaleRatio:F
    .end local v10           #scaleRatioHeight:F
    .end local v11           #scaleRatioWidth:F
    :goto_5
    if-nez v2, :cond_a

    .line 160
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Error decoding bitmap"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 113
    .restart local v3       #canvasBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #scale:I
    .restart local v9       #scaleRatio:F
    .restart local v10       #scaleRatioHeight:F
    .restart local v11       #scaleRatioWidth:F
    :cond_7
    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    move/from16 v0, p2

    int-to-float v13, v0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    if-eqz p3, :cond_4

    .line 114
    move v9, v10

    goto :goto_3

    .line 129
    .restart local v4       #diffWidth:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    :cond_8
    sget-boolean v12, Lui/utils/ImageUtils;->flipX:Z

    if-nez v12, :cond_9

    sget-boolean v12, Lui/utils/ImageUtils;->flipY:Z

    if-eqz v12, :cond_9

    .line 130
    const/high16 v12, 0x3f80

    const/high16 v13, -0x4080

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 131
    const/4 v12, 0x0

    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 149
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffWidth:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scale:I
    .end local v9           #scaleRatio:F
    .end local v10           #scaleRatioHeight:F
    .end local v11           #scaleRatioWidth:F
    :catch_0
    move-exception v5

    .line 150
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 132
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #canvasBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #diffWidth:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #scale:I
    .restart local v9       #scaleRatio:F
    .restart local v10       #scaleRatioHeight:F
    .restart local v11       #scaleRatioWidth:F
    :cond_9
    :try_start_2
    sget-boolean v12, Lui/utils/ImageUtils;->flipX:Z

    if-eqz v12, :cond_6

    sget-boolean v12, Lui/utils/ImageUtils;->flipY:Z

    if-eqz v12, :cond_6

    .line 133
    const/high16 v12, -0x4080

    const/high16 v13, -0x4080

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 134
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 151
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffWidth:I
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scale:I
    .end local v9           #scaleRatio:F
    .end local v10           #scaleRatioHeight:F
    .end local v11           #scaleRatioWidth:F
    :catch_1
    move-exception v5

    .line 152
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 154
    .local v5, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_5

    .line 155
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    .line 156
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v5           #e:Ljava/lang/Exception;
    :cond_a
    move-object v12, v2

    .line 162
    goto/16 :goto_2
.end method

.method public static inSampleSizedBitmap([BIIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "data"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "fillHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, b:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 169
    .local v7, inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    sget-object v14, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v13, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 172
    const/4 v9, 0x1

    .line 174
    .local v9, scale:I
    :goto_0
    sget-object v13, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v13, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v13, v13

    add-int/lit8 v15, v9, 0x1

    int-to-double v15, v15

    div-double/2addr v13, v15

    move/from16 v0, p1

    int-to-double v15, v0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_0

    sget-object v13, Lui/utils/ImageUtils;->decodeBounds:Landroid/graphics/BitmapFactory$Options;

    iget v13, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v13, v13

    add-int/lit8 v15, v9, 0x1

    int-to-double v15, v15

    div-double/2addr v13, v15

    move/from16 v0, p2

    int-to-double v15, v0

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_4

    .line 178
    :cond_0
    sget-object v13, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    iput v9, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    if-eqz p3, :cond_5

    .line 181
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    :goto_1
    sget-object v13, Lui/utils/ImageUtils;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .end local v7           #inputStream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    .restart local v7       #inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    sget-object v14, Lui/utils/ImageUtils;->inSampleSize:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v13, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 191
    .local v3, canvasBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 193
    move/from16 v0, p1

    int-to-float v13, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v12, v13, v14

    .line 194
    .local v12, scaleRatioWidth:F
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 196
    .local v11, scaleRatioHeight:F
    move v10, v12

    .line 197
    .local v10, scaleRatio:F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    move/from16 v0, p2

    int-to-float v14, v0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 198
    move v10, v11

    .line 203
    :cond_1
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-int v13, v13

    sub-int v5, v13, p1

    .line 204
    .local v5, diffWidth:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-int v13, v13

    sub-int v4, v13, p2

    .line 206
    .local v4, diffHeight:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    .local v8, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v8, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 209
    if-eqz p3, :cond_2

    .line 210
    neg-int v13, v5

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    :cond_2
    sget-boolean v13, Lui/utils/ImageUtils;->flipX:Z

    if-eqz v13, :cond_7

    sget-boolean v13, Lui/utils/ImageUtils;->flipY:Z

    if-nez v13, :cond_7

    .line 214
    const/high16 v13, -0x4080

    const/high16 v14, 0x3f80

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 215
    move/from16 v0, p1

    int-to-float v13, v0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 224
    :cond_3
    :goto_3
    sget-object v13, Lui/utils/ImageUtils;->canvas:Landroid/graphics/Canvas;

    sget-object v14, Lui/utils/ImageUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v3, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    const/4 v3, 0x0

    .line 228
    const/4 v7, 0x0

    .line 229
    const/4 v8, 0x0

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffHeight:I
    .end local v5           #diffWidth:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v9           #scale:I
    .end local v10           #scaleRatio:F
    .end local v11           #scaleRatioHeight:F
    .end local v12           #scaleRatioWidth:F
    :goto_4
    if-nez v2, :cond_9

    .line 241
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error decoding bitmap"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 175
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #scale:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 183
    :cond_5
    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 199
    .restart local v3       #canvasBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #scaleRatio:F
    .restart local v11       #scaleRatioHeight:F
    .restart local v12       #scaleRatioWidth:F
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    move/from16 v0, p2

    int-to-float v14, v0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    if-eqz p3, :cond_1

    .line 200
    move v10, v11

    goto :goto_2

    .line 216
    .restart local v4       #diffHeight:I
    .restart local v5       #diffWidth:I
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    :cond_7
    sget-boolean v13, Lui/utils/ImageUtils;->flipX:Z

    if-nez v13, :cond_8

    sget-boolean v13, Lui/utils/ImageUtils;->flipY:Z

    if-eqz v13, :cond_8

    .line 217
    const/high16 v13, 0x3f80

    const/high16 v14, -0x4080

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 218
    const/4 v13, 0x0

    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 232
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffHeight:I
    .end local v5           #diffWidth:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v9           #scale:I
    .end local v10           #scaleRatio:F
    .end local v11           #scaleRatioHeight:F
    .end local v12           #scaleRatioWidth:F
    :catch_0
    move-exception v6

    .line 233
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 219
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #canvasBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #diffHeight:I
    .restart local v5       #diffWidth:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v9       #scale:I
    .restart local v10       #scaleRatio:F
    .restart local v11       #scaleRatioHeight:F
    .restart local v12       #scaleRatioWidth:F
    :cond_8
    :try_start_2
    sget-boolean v13, Lui/utils/ImageUtils;->flipX:Z

    if-eqz v13, :cond_3

    sget-boolean v13, Lui/utils/ImageUtils;->flipY:Z

    if-eqz v13, :cond_3

    .line 220
    const/high16 v13, -0x4080

    const/high16 v14, -0x4080

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 221
    move/from16 v0, p1

    int-to-float v13, v0

    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 234
    .end local v3           #canvasBitmap:Landroid/graphics/Bitmap;
    .end local v4           #diffHeight:I
    .end local v5           #diffWidth:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v9           #scale:I
    .end local v10           #scaleRatio:F
    .end local v11           #scaleRatioHeight:F
    .end local v12           #scaleRatioWidth:F
    :catch_1
    move-exception v6

    .line 235
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 236
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 237
    .local v6, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4

    .line 243
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    return-object v2
.end method
