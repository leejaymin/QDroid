.class public Lcom/superdroid/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 66
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 67
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 69
    .local v0, h:D
    if-ne p2, v10, :cond_0

    move v2, v11

    .line 71
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 74
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 84
    :goto_2
    return v6

    .line 70
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .line 72
    .restart local v2       #lowerBound:I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 71
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .line 79
    .restart local v3       #upperBound:I
    :cond_2
    if-ne p2, v10, :cond_3

    if-ne p1, v10, :cond_3

    move v6, v11

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    .line 82
    goto :goto_2

    :cond_4
    move v6, v3

    .line 84
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/superdroid/util/BitmapUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 52
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 61
    :goto_1
    return v1

    .line 55
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 23
    :goto_0
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 29
    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 32
    return-object v0

    .line 27
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getCompressBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/16 v0, 0x1e0

    invoke-static {p0, v0}, Lcom/superdroid/util/BitmapUtil;->getCompressBitmapFromFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCompressBitmapFromFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filePath"
    .parameter "minSideLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 145
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    iget-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    .line 152
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    :cond_0
    move-object v3, v4

    .line 164
    :goto_0
    return-object v3

    .line 157
    :cond_1
    const/high16 v3, 0x10

    .line 156
    invoke-static {v2, p1, v3}, Lcom/superdroid/util/BitmapUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 158
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 160
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, b:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 164
    goto :goto_0
.end method

.method public static getCompressDrawableFromFile(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    invoke-static {p0}, Lcom/superdroid/util/BitmapUtil;->getCompressBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public static getCompressDrawableFromInputStream(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "istream"
    .parameter "minSideLength"

    .prologue
    const/4 v2, 0x0

    .line 195
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 207
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 208
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 209
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, b:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getCompressDrawableFromResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "res"
    .parameter "id"

    .prologue
    .line 168
    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0}, Lcom/superdroid/util/BitmapUtil;->getCompressDrawableFromResource(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCompressDrawableFromResource(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "id"
    .parameter "minSideLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 173
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 178
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_0

    .line 179
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_1

    .line 180
    :cond_0
    const/4 v2, 0x0

    .line 190
    :goto_0
    return-object v2

    .line 184
    :cond_1
    const/high16 v2, 0x10

    .line 183
    invoke-static {v1, p2, v2}, Lcom/superdroid/util/BitmapUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 187
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 188
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, b:Landroid/graphics/Bitmap;
    move-object v2, v0

    .line 190
    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .parameter "bitmap"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->ensureDirExists(Ljava/io/File;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1           #fos:Ljava/io/FileOutputStream;
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 44
    return-void
.end method

.method public static scaleBitmap(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "ctx"
    .parameter "width"
    .parameter "height"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .end local v0           #f:Ljava/io/File;
    if-nez v0, :cond_1

    .line 92
    const/4 p0, 0x0

    .line 127
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :cond_0
    :goto_0
    return-object p0

    .line 95
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, fis:Ljava/io/FileInputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 99
    .local p0, metrics:Landroid/util/DisplayMetrics;
    iget p3, p0, Landroid/util/DisplayMetrics;->density:F

    .end local p3
    float-to-int p3, p3

    mul-int v3, p3, p1

    .line 100
    .local v3, w:I
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .end local p0           #metrics:Landroid/util/DisplayMetrics;
    float-to-int p0, p0

    mul-int p1, p0, p2

    .line 101
    .local p1, h:I
    const/4 v2, 0x1

    .line 103
    .local v2, sampleSize:I
    const/4 p0, 0x1

    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 105
    .local p0, fd:Ljava/io/FileDescriptor;
    const/4 p2, 0x0

    invoke-static {p0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    .end local p2
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 p3, p2, 0x1

    .line 107
    .local p3, nextWidth:I
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 p2, p2, 0x1

    .local p2, nextHeight:I
    move v0, v2

    .line 108
    .end local v2           #sampleSize:I
    .local v0, sampleSize:I
    :goto_1
    if-le p3, v3, :cond_2

    if-gt p2, p1, :cond_5

    .line 114
    :cond_2
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    const/4 p2, 0x0

    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    .end local p2           #nextHeight:I
    const/4 p2, 0x0

    invoke-static {p0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 118
    .local p0, b:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 119
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p2, v3, :cond_3

    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p2, p1, :cond_0

    .line 120
    :cond_3
    const/4 p2, 0x1

    invoke-static {p0, v3, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 121
    .local p1, tmp:Landroid/graphics/Bitmap;
    if-eq p1, p0, :cond_4

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    :cond_4
    move-object p0, p1

    goto :goto_0

    .line 109
    .local p0, fd:Ljava/io/FileDescriptor;
    .local p1, h:I
    .restart local p2       #nextHeight:I
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 110
    shr-int/lit8 p3, p3, 0x1

    .line 111
    shr-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method
