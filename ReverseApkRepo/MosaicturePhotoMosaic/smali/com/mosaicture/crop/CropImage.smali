.class public Lcom/mosaicture/crop/CropImage;
.super Lcom/mosaicture/crop/MonitoredActivity;

# interfaces
.implements Lcom/mosaicture/view/m;


# static fields
.field public static d:Lcom/markupartist/android/widget/ActionBar;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/mosaicture/crop/m;

.field e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private final h:Landroid/os/Handler;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Landroid/content/ContentResolver;

.field private p:Lcom/mosaicture/crop/CropImageView;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/mosaicture/crop/MonitoredActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->h:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mosaicture/crop/CropImage;->l:Z

    iput-boolean v1, p0, Lcom/mosaicture/crop/CropImage;->n:Z

    iput-boolean v1, p0, Lcom/mosaicture/crop/CropImage;->b:Z

    new-instance v0, Lcom/mosaicture/crop/a;

    invoke-direct {v0, p0}, Lcom/mosaicture/crop/a;-><init>(Lcom/mosaicture/crop/CropImage;)V

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v8, 0x3f80

    const v7, 0x3f666666

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v2, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v3, v0, p3

    if-nez p4, :cond_2

    if-ltz v2, :cond_0

    if-gez v3, :cond_2

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v3, v2, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, p2, v1

    sub-int v8, p3, v2

    invoke-direct {v6, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float v4, p2

    int-to-float v6, p3

    div-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    int-to-float v0, p3

    div-float/2addr v0, v2

    cmpg-float v2, v0, v7

    if-ltz v2, :cond_3

    cmpl-float v2, v0, v8

    if-lez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    :cond_4
    :goto_1
    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_2
    if-eq v2, p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_6
    int-to-float v2, p2

    div-float v0, v2, v0

    cmpg-float v2, v0, v7

    if-ltz v2, :cond_7

    cmpl-float v2, v0, v8

    if-lez v2, :cond_4

    :cond_7
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_1

    :cond_8
    move-object v2, p1

    goto :goto_2
.end method

.method private a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->o:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p2, :cond_0

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, p2, :cond_1

    :cond_0
    const-wide/high16 v4, 0x4000

    int-to-double v6, p2

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->o:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v4, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002d

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/mosaicture/view/b;->b:Lcom/mosaicture/view/b;

    invoke-static {p0, v0, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->finish()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/mosaicture/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p1}, Lcom/mosaicture/g/k;->b(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "imagePath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mosaicture/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/mosaicture/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static b(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mosaicture/crop/e;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/mosaicture/crop/e;-><init>(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/mosaicture/crop/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/crop/CropImage;->f:I

    return v0
.end method

.method static synthetic d(Lcom/mosaicture/crop/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/crop/CropImage;->g:I

    return v0
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iget-object v1, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mosaicture/crop/CropImageView;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/mosaicture/crop/c;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/c;-><init>(Lcom/mosaicture/crop/CropImage;)V

    iget-object v2, p0, Lcom/mosaicture/crop/CropImage;->h:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/mosaicture/crop/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/crop/CropImage;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/mosaicture/crop/CropImage;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/mosaicture/crop/CropImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/crop/CropImage;->d()V

    return-void
.end method

.method static synthetic h(Lcom/mosaicture/crop/CropImage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->r:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic i(Lcom/mosaicture/crop/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/crop/CropImage;->i:I

    return v0
.end method

.method static synthetic j(Lcom/mosaicture/crop/CropImage;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/crop/CropImage;->j:I

    return v0
.end method

.method static synthetic k(Lcom/mosaicture/crop/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/crop/CropImage;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/mosaicture/crop/CropImage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/crop/CropImage;->l:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iget-object v0, v0, Lcom/mosaicture/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iget-object v0, v0, Lcom/mosaicture/crop/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/crop/m;

    invoke-virtual {v1, v0}, Lcom/mosaicture/crop/CropImageView;->b(Lcom/mosaicture/crop/m;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    sget-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    if-nez v0, :cond_0

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    :cond_0
    sget-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->d()V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->c()[Lcom/markupartist/android/widget/b;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, v1, v0

    sget-object v4, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v4, v3}, Lcom/markupartist/android/widget/ActionBar;->b(Lcom/markupartist/android/widget/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mosaicture/crop/CropImage;->b:Z

    if-eqz v0, :cond_0

    new-array v0, v4, [Lcom/markupartist/android/widget/b;

    new-instance v1, Lcom/mosaicture/crop/h;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/h;-><init>(Lcom/mosaicture/crop/CropImage;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/mosaicture/crop/k;

    invoke-direct {v1, p0, p0}, Lcom/mosaicture/crop/k;-><init>(Lcom/mosaicture/crop/CropImage;Lcom/mosaicture/crop/MonitoredActivity;)V

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/markupartist/android/widget/b;

    new-instance v1, Lcom/mosaicture/crop/g;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/g;-><init>(Lcom/mosaicture/crop/CropImage;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/mosaicture/crop/i;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/i;-><init>(Lcom/mosaicture/crop/CropImage;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/mosaicture/crop/j;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/j;-><init>(Lcom/mosaicture/crop/CropImage;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mosaicture/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/CropImage;->requestWindowFeature(I)Z

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/CropImage;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->o:Landroid/content/ContentResolver;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/crop/CropImageView;

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->p:Lcom/mosaicture/crop/CropImageView;

    iput-object p0, v0, Lcom/mosaicture/crop/CropImageView;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "data"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    const-string v0, "aspectX"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mosaicture/crop/CropImage;->f:I

    const-string v0, "aspectY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mosaicture/crop/CropImage;->g:I

    const-string v0, "maxImageSize"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mosaicture/crop/CropImage;->m:I

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->r:Landroid/net/Uri;

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->r:Landroid/net/Uri;

    iget v1, p0, Lcom/mosaicture/crop/CropImage;->m:I

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/crop/CropImage;->a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mosaicture/crop/CropImage;->q:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->b()V

    sget-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    new-instance v1, Lcom/markupartist/android/widget/c;

    invoke-static {p0}, Lcom/mosaicture/view/MosaictureActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-direct {v1, p0, v2, v3}, Lcom/markupartist/android/widget/c;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/ActionBar;->a(Lcom/markupartist/android/widget/b;)V

    sget-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->c()V

    invoke-direct {p0}, Lcom/mosaicture/crop/CropImage;->d()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mosaicture/crop/MonitoredActivity;->onDestroy()V

    sget-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/mosaicture/crop/CropImage;->d:Lcom/markupartist/android/widget/ActionBar;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/mosaicture/crop/MonitoredActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/mosaicture/crop/MonitoredActivity;->onResume()V

    invoke-virtual {p0}, Lcom/mosaicture/crop/CropImage;->b()V

    return-void
.end method
