.class public Lcom/rubycell/pianisthd/ui/PianoView3;
.super Landroid/view/View;


# instance fields
.field A:Landroid/graphics/Paint;

.field B:I

.field C:I

.field D:F

.field E:I

.field F:I

.field G:I

.field H:I

.field I:Landroid/os/Vibrator;

.field J:Ljava/lang/String;

.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/graphics/Bitmap;

.field i:Landroid/content/Context;

.field j:Landroid/graphics/Bitmap;

.field k:Landroid/graphics/Bitmap;

.field l:Landroid/graphics/Bitmap;

.field m:Landroid/graphics/Bitmap;

.field n:Landroid/graphics/Bitmap;

.field o:Landroid/graphics/Bitmap;

.field p:Ljava/util/HashMap;

.field q:Ljava/util/HashMap;

.field r:Ljava/util/HashMap;

.field s:Ljava/util/HashMap;

.field t:Ljava/util/HashMap;

.field u:I

.field v:F

.field w:F

.field x:F

.field y:F

.field z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->I:Landroid/os/Vibrator;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->L:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    const/4 v0, 0x7

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->u:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    sget v2, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->E:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->F:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->C:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->B:I

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const-string v1, "c3"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const-string v1, "b5"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->b()V

    goto/16 :goto_0
.end method

.method private a(Lcom/rubycell/pianisthd/c/f;)I
    .locals 9

    const/16 v3, 0x15

    const/4 v5, 0x1

    iget v2, p1, Lcom/rubycell/pianisthd/c/f;->a:F

    iget v0, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    div-float v1, v2, v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->s:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    sub-int v1, v3, v5

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    if-lt v1, v4, :cond_1

    sub-int v1, v3, v5

    move v4, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    iget v5, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    if-gt v1, v5, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/f;

    iget-object v6, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/f;

    iget v6, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float v6, v2, v6

    iget v7, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float v7, v2, v7

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v8, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float/2addr v7, v8

    iget v8, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float v0, v8, v0

    mul-float/2addr v0, v7

    add-float/2addr v0, v6

    iget v6, v1, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float v6, v2, v6

    iget v7, v1, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float v7, v2, v7

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v8, v1, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float/2addr v7, v8

    iget v8, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v1, v1, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    iget v6, p0, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float v6, v2, v6

    iget v7, p0, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float/2addr v2, v7

    mul-float/2addr v2, v6

    iget v6, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v7, p0, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float/2addr v6, v7

    iget v7, p1, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v8, p0, Lcom/rubycell/pianisthd/c/f;->b:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    cmpg-float v6, v1, v0

    if-gez v6, :cond_3

    cmpg-float v6, v1, v2

    if-gez v6, :cond_3

    move v0, v4

    :goto_3
    return v0

    :cond_0
    move v0, v3

    goto/16 :goto_0

    :cond_1
    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    move v4, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    move v5, v1

    goto :goto_2

    :cond_3
    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method private static a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 6

    const/high16 v5, 0x4000

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    int-to-float v3, p2

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->p:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->c:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->g:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->g:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->c:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    move v0, v5

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->B:I

    invoke-static {v4, v4, v2, v5}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_2
    invoke-static {v1}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 19

    sget v3, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->E:I

    move v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40e0

    div-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->F:I

    move v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    const v4, 0x3f3d70a4

    mul-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v3, v0

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v4, v0

    neg-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    move v9, v0

    move v10, v3

    move/from16 v16, v8

    move v8, v5

    move/from16 v5, v16

    move/from16 v17, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v18, v4

    move v4, v9

    move/from16 v9, v18

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    move v3, v0

    if-le v4, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "black_up_center.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "black_down_center.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v5, v0

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v6, v0

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v5, v0

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "black_up_left.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "black_down_left.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v5, v0

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v6, v0

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v5, v0

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "black_up_right.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "black_down_right.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v5, v0

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v6, v0

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v5, v0

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "keynormal_normal.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->J:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "keynormal_down.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v5, v0

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v6, v0

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v5, v0

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->j:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->j:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Canvas;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->l:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->l:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Canvas;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->n:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->n:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Canvas;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->k:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->k:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->b(Landroid/graphics/Canvas;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->m:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->m:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->b(Landroid/graphics/Canvas;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->D:F

    move v3, v0

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v4, v0

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/rubycell/pianisthd/ui/PianoView3;->o:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->o:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->b(Landroid/graphics/Canvas;I)V

    return-void

    :cond_0
    sget-object v3, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v11, "m"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    packed-switch v6, :pswitch_data_0

    move v3, v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    move-object v9, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/rubycell/pianisthd/c/f;

    invoke-direct {v12, v3, v7}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->p:Ljava/util/HashMap;

    move-object v9, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    move-object v9, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/rubycell/pianisthd/c/f;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v13, v0

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->y:F

    move v14, v0

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v14, v7

    invoke-direct {v12, v13, v14}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x5

    if-le v6, v9, :cond_4

    const/4 v6, 0x1

    move v9, v10

    move/from16 v16, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move v3, v5

    move/from16 v5, v16

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v11, v0

    const v12, 0x3d75c28f

    mul-float/2addr v11, v12

    sub-float/2addr v3, v11

    add-float/2addr v3, v9

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v11, v0

    const v12, 0x3d75c28f

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    add-float/2addr v3, v9

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    const/high16 v11, 0x4000

    mul-float/2addr v3, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v11, v0

    const v12, 0x3d75c28f

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    sub-float/2addr v3, v11

    add-float/2addr v3, v9

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v11, v0

    const v12, 0x3d75c28f

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    add-float/2addr v3, v9

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v11, v0

    const v12, 0x3d75c28f

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    add-float/2addr v3, v9

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/rubycell/pianisthd/c/f;

    invoke-direct {v12, v10, v8}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->s:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->r:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/rubycell/pianisthd/c/f;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v13, v0

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v14, v0

    const/high16 v15, 0x4000

    mul-float/2addr v14, v15

    const/high16 v15, 0x4040

    div-float/2addr v14, v15

    add-float/2addr v14, v8

    invoke-direct {v12, v13, v14}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    move v3, v0

    add-float/2addr v3, v10

    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x8

    if-eq v5, v10, :cond_2

    const/16 v10, 0xf

    if-ne v5, v10, :cond_3

    :cond_2
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->x:F

    move v9, v0

    neg-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v10, v0

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    move v10, v0

    add-float/2addr v7, v10

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    move/from16 v17, v7

    move v7, v8

    move v8, v9

    move v9, v6

    move/from16 v6, v17

    goto/16 :goto_2

    :cond_3
    move/from16 v16, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v3

    move/from16 v3, v16

    goto/16 :goto_2

    :cond_4
    move v9, v10

    move/from16 v16, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move v3, v5

    move/from16 v5, v16

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 8

    const/high16 v7, 0x4100

    const/high16 v6, 0x4000

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->G:I

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->H:I

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    int-to-float v3, p2

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->v:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v1, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    sget v3, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v3, v7

    add-float/2addr v0, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    const v4, 0x3f6e147b

    mul-float/2addr v3, v4

    sget v4, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    new-instance v2, Lcom/rubycell/pianisthd/c/f;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-direct {p0, v2}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Lcom/rubycell/pianisthd/c/f;)I

    move-result v2

    if-lez v2, :cond_3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->C:I

    add-int/lit8 v4, v2, 0x15

    const/high16 v5, 0x3f80

    invoke-static {v3, v4, v1, v5}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int v3, v2, v6

    add-int/lit8 v3, v3, 0x15

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->B:I

    invoke-static {v1, v3, v4, v6}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    const/4 v3, -0x1

    invoke-static {v3}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    :cond_2
    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->invalidate()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->I:Landroid/os/Vibrator;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->C:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->B:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->m:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->o:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v2, v7

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v8

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->l:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->n:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->w:F

    mul-float/2addr v2, v7

    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v8

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->a:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->q:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->d:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->E:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->F:I

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView3;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView3;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView3;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_5
    move v1, v6

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    new-instance v0, Lcom/rubycell/pianisthd/c/f;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView3;->a(Lcom/rubycell/pianisthd/c/f;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->t:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->C:I

    add-int/lit8 v4, v3, 0x15

    const/high16 v5, 0x3f80

    invoke-static {v0, v4, v2, v5}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    add-int/lit8 v0, v3, 0x15

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView3;->B:I

    invoke-static {v2, v0, v3, v6}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView3;->invalidate()V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
