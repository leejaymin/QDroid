.class public final Ld;
.super Landroid/media/MediaMetadataRetriever;


# instance fields
.field private 癤욱븳援:Ljava/util/Random;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ld;->癤욱븳援:Ljava/util/Random;

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ld;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public extractMetadata(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    const/16 v1, 0xb

    if-lt p1, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public 癤욱븳援(IIIZ)Landroid/graphics/Bitmap;
    .locals 10

    const-wide/32 v0, 0x989680

    const-wide/16 v5, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_4

    invoke-super {p0}, Landroid/media/MediaMetadataRetriever;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    if-nez p4, :cond_1

    invoke-static {v0}, Lcom/mxtech/ImageUtils;->isBitmapBlanc(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Le;->癤욱븳援(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_4
    const/16 v2, 0x9

    invoke-super {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v0, v4

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v2

    cmp-long v2, v7, v5

    if-gtz v2, :cond_6

    move-object v0, v4

    goto :goto_0

    :cond_6
    const v2, 0x989680

    iget-object v3, p0, Ld;->癤욱븳援:Ljava/util/Random;

    const v9, 0x1312d00

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v9, v2, v7

    if-lez v9, :cond_c

    :goto_2
    int-to-long v2, p3

    div-long v2, v7, v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_b

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, p3, :cond_3

    const/4 v3, 0x2

    invoke-super {p0, v5, v6, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v0, v4

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_8

    add-int/lit8 v7, p3, -0x1

    if-eq v2, v7, :cond_9

    :cond_8
    invoke-static {v3}, Lcom/mxtech/ImageUtils;->isBitmapBlanc(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    const/4 v0, 0x2

    invoke-static {v3, p1, p2, v0}, Le;->癤욱븳援(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    add-long/2addr v5, v0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_b
    move-wide v0, v2

    goto :goto_3

    :cond_c
    move-wide v5, v2

    goto :goto_2
.end method
