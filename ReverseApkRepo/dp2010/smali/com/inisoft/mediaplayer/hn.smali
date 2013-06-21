.class public final Lcom/inisoft/mediaplayer/hn;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/Thread;

.field private d:Z

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hn;->d:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/hn;->e:Landroid/app/Activity;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hn;->e:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v9, 0x2

    const/4 v3, 0x0

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    const-string v5, ""

    new-instance v8, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;

    invoke-direct {v8}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v8, p1}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    invoke-static {p1}, Lcom/inisoft/mediaplayer/hw;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    :cond_0
    invoke-virtual {v8, v6, v7}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v8, v4}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v8, v4}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v4

    :try_start_2
    invoke-virtual {v8}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v10

    :goto_0
    if-eqz v0, :cond_1

    const/16 v5, 0xb4

    const/16 v6, 0x78

    invoke-static {v0, v5, v6, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    new-instance v5, Lcom/inisoft/mediaplayer/cj;

    invoke-direct {v5, p1, p0}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v4, 0x0

    invoke-virtual {v5, v6, v7, v4}, Lcom/inisoft/mediaplayer/cj;->a(JZ)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lcom/inisoft/mediaplayer/cj;->b(IZ)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Lcom/inisoft/mediaplayer/cj;->c(IZ)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/inisoft/mediaplayer/cj;->d(IZ)V

    invoke-virtual {v5}, Lcom/inisoft/mediaplayer/cj;->n()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v8}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v8}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_3
    throw v0

    :catch_4
    move-exception v5

    move-object v10, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hn;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/hn;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.dice_thumbnails/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/hn;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    return v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/hn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/hn;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/hn;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/hn;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.dice_thumbnails/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/inisoft/mediaplayer/hn;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hn;->d:Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Z)V
    .locals 2

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hn;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inisoft/mediaplayer/ho;

    invoke-direct {v1, p0, p2}, Lcom/inisoft/mediaplayer/ho;-><init>(Lcom/inisoft/mediaplayer/hn;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hn;->d:Z

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hn;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
