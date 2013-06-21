.class public final Lcom/rubycell/moregame/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/rubycell/moregame/a/a/d;

.field private c:Lcom/rubycell/moregame/a/a/j;

.field private d:Lcom/rubycell/moregame/a/a/h;

.field private e:Lcom/rubycell/moregame/a/a/i;

.field private f:I

.field private g:I

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/rubycell/moregame/a/a/j;

    invoke-direct {v0}, Lcom/rubycell/moregame/a/a/j;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->c:Lcom/rubycell/moregame/a/a/j;

    new-instance v0, Lcom/rubycell/moregame/a/a/h;

    invoke-direct {v0}, Lcom/rubycell/moregame/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    new-instance v0, Lcom/rubycell/moregame/a/a/i;

    invoke-direct {v0, p0}, Lcom/rubycell/moregame/a/a/i;-><init>(Lcom/rubycell/moregame/a/a/e;)V

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/moregame/a/a/e;->f:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->h:Ljava/util/Map;

    iput-object p1, p0, Lcom/rubycell/moregame/a/a/e;->a:Landroid/content/Context;

    iput p2, p0, Lcom/rubycell/moregame/a/a/e;->f:I

    const v0, 0x7f07000b

    iput v0, p0, Lcom/rubycell/moregame/a/a/e;->g:I

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/a/a/i;->setPriority(I)V

    new-instance v0, Lcom/rubycell/moregame/a/a/d;

    invoke-direct {v0, p1}, Lcom/rubycell/moregame/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->b:Lcom/rubycell/moregame/a/a/d;

    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/a/a/e;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/rubycell/moregame/a/a/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->b:Lcom/rubycell/moregame/a/a/d;

    invoke-virtual {v0, p1}, Lcom/rubycell/moregame/a/a/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/e;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rubycell/moregame/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rubycell/moregame/a/a/e;->a:Landroid/content/Context;

    iget v3, p0, Lcom/rubycell/moregame/a/a/e;->g:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--------------->mPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/c;->a(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/rubycell/moregame/a/a/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    return-object v0
.end method

.method static synthetic b(Lcom/rubycell/moregame/a/a/e;)Lcom/rubycell/moregame/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->c:Lcom/rubycell/moregame/a/a/j;

    return-object v0
.end method

.method static synthetic c(Lcom/rubycell/moregame/a/a/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->h:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    if-nez v1, :cond_1

    monitor-exit v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-virtual {v1, p2}, Lcom/rubycell/moregame/a/a/h;->a(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/rubycell/moregame/a/a/g;

    invoke-direct {v1, p1, p2}, Lcom/rubycell/moregame/a/a/g;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-static {v2}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    invoke-virtual {v0}, Lcom/rubycell/moregame/a/a/i;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    invoke-virtual {v0}, Lcom/rubycell/moregame/a/a/i;->start()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/rubycell/moregame/a/a/e;)I
    .locals 1

    iget v0, p0, Lcom/rubycell/moregame/a/a/e;->f:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;

    invoke-virtual {v0}, Lcom/rubycell/moregame/a/a/i;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/h;->b(Lcom/rubycell/moregame/a/a/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/e;->e:Lcom/rubycell/moregame/a/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IMAGELOADERMOREGAME"

    const-string v2, "Error in imageloader moregame"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->h:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->c:Lcom/rubycell/moregame/a/a/j;

    invoke-virtual {v0, p1}, Lcom/rubycell/moregame/a/a/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/rubycell/moregame/a/a/e;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget v0, p0, Lcom/rubycell/moregame/a/a/e;->f:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->d:Lcom/rubycell/moregame/a/a/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->h:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/e;->c:Lcom/rubycell/moregame/a/a/j;

    invoke-virtual {v0, p1}, Lcom/rubycell/moregame/a/a/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/rubycell/moregame/a/a/e;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f02011b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
