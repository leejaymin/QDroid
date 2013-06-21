.class public Lcom/scoreloop/client/android/core/addon/AndroidImage;
.super Lcom/scoreloop/client/android/core/model/Image;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/graphics/BitmapFactory$Options;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Image;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->c:Landroid/net/Uri;

    .line 56
    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->a:Landroid/content/ContentResolver;

    .line 59
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v0, :cond_3

    .line 63
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Not an image."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    return-void
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)F
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 28
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 29
    const-string v1, "orientation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    .line 36
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/scoreloop/client/android/core/model/Image$ResizeMode;)[B
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v9, 0x90

    .line 70
    sget-object v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->CROP:Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    if-eq p1, v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, v9, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, v9, :cond_3

    .line 77
    :cond_1
    const-wide/high16 v2, 0x4000

    invoke-static {v9, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v7, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->b:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v7, 0x3fe0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    .line 84
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->a:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    if-nez v0, :cond_2

    move-object v0, v1

    .line 122
    :goto_1
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 102
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 103
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 106
    invoke-static {v9, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 109
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 113
    iget-object v4, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->c:Landroid/net/Uri;

    iget-object v7, p0, Lcom/scoreloop/client/android/core/addon/AndroidImage;->a:Landroid/content/ContentResolver;

    invoke-static {v4, v7}, Lcom/scoreloop/client/android/core/addon/AndroidImage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)F

    move-result v4

    .line 114
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v4, v3

    .line 116
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method
