.class public final Limoblife/cmfilemanager/aq;
.super Ljava/lang/Thread;


# static fields
.field private static g:I

.field private static h:I


# instance fields
.field a:Ljava/util/List;

.field b:Z

.field c:Ljava/io/File;

.field d:Landroid/os/Handler;

.field e:Landroid/content/Context;

.field private f:Limoblife/cmfilemanager/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Limoblife/cmfilemanager/aq;->g:I

    sput v0, Limoblife/cmfilemanager/aq;->h:I

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/List;Landroid/os/Handler;Landroid/content/Context;Limoblife/cmfilemanager/b/c;)V
    .locals 1

    const-string v0, "Thumbnail Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Limoblife/cmfilemanager/aq;->a:Ljava/util/List;

    iput-object p1, p0, Limoblife/cmfilemanager/aq;->c:Ljava/io/File;

    iput-object p3, p0, Limoblife/cmfilemanager/aq;->d:Landroid/os/Handler;

    iput-object p4, p0, Limoblife/cmfilemanager/aq;->e:Landroid/content/Context;

    iput-object p5, p0, Limoblife/cmfilemanager/aq;->f:Limoblife/cmfilemanager/b/c;

    return-void
.end method

.method public static a(I)V
    .locals 1

    sput p0, Limoblife/cmfilemanager/aq;->h:I

    mul-int/lit8 v0, p0, 0x4

    div-int/lit8 v0, v0, 0x3

    sput v0, Limoblife/cmfilemanager/aq;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Limoblife/cmfilemanager/aq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v1, "OIFM_ThumbnailLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Scanning for thumbnails (files="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x10

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    const-string v0, "OIFM_ThumbnailLoader"

    const-string v1, "Done scanning for thumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, p0, Limoblife/cmfilemanager/aq;->a:Ljava/util/List;

    :goto_1
    return-void

    :cond_0
    iget-boolean v0, p0, Limoblife/cmfilemanager/aq;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "OIFM_ThumbnailLoader"

    const-string v1, "Thumbnail loader canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, p0, Limoblife/cmfilemanager/aq;->a:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Limoblife/cmfilemanager/aq;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/cmfilemanager/ac;

    invoke-virtual {v0}, Limoblife/cmfilemanager/ac;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x0

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v1, "video/mpeg"

    iget-object v6, p0, Limoblife/cmfilemanager/aq;->f:Limoblife/cmfilemanager/b/c;

    invoke-virtual {v6, v5}, Limoblife/cmfilemanager/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Limoblife/cmfilemanager/aq;->c:Ljava/io/File;

    invoke-static {v1, v5}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_2

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v6, Limoblife/cmfilemanager/aq;->g:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    sget v6, Limoblife/cmfilemanager/aq;->g:I

    div-int/2addr v1, v6

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v7, Limoblife/cmfilemanager/aq;->h:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    sget v7, Limoblife/cmfilemanager/aq;->h:I

    div-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v9, :cond_4

    add-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v1

    if-eqz v6, :cond_4

    :goto_3
    add-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v1

    if-nez v6, :cond_5

    shl-int/lit8 v1, v1, 0x1

    :cond_4
    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Limoblife/cmfilemanager/aq;->c:Ljava/io/File;

    invoke-static {v1, v5}, Limoblife/cmfilemanager/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Limoblife/cmfilemanager/aq;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Limoblife/cmfilemanager/a/a;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Limoblife/cmfilemanager/aq;->g:I

    sget v8, Limoblife/cmfilemanager/aq;->h:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v1}, Limoblife/cmfilemanager/ac;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Limoblife/cmfilemanager/aq;->d:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v6, v1, -0x1

    and-int/2addr v1, v6

    goto :goto_3
.end method
