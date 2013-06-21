.class public Lcom/rubycell/pianisthd/ui/PianoView;
.super Landroid/view/View;


# instance fields
.field A:F

.field B:F

.field C:F

.field D:Ljava/util/ArrayList;

.field E:Z

.field F:Landroid/graphics/Paint;

.field G:Landroid/graphics/Paint;

.field H:I

.field I:I

.field J:I

.field K:Z

.field L:F

.field M:Landroid/os/Vibrator;

.field N:Ljava/lang/String;

.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/graphics/Bitmap;

.field i:F

.field j:Landroid/content/Context;

.field k:Landroid/graphics/Bitmap;

.field l:Landroid/graphics/Bitmap;

.field m:Landroid/graphics/Bitmap;

.field n:Landroid/graphics/Bitmap;

.field o:Landroid/graphics/Bitmap;

.field p:Landroid/graphics/Bitmap;

.field q:Landroid/graphics/Bitmap;

.field r:Landroid/graphics/Bitmap;

.field s:Ljava/util/HashMap;

.field t:Ljava/util/HashMap;

.field u:Ljava/util/HashMap;

.field v:Ljava/util/HashMap;

.field w:Ljava/util/HashMap;

.field x:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field y:I

.field z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->K:Z

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->M:Landroid/os/Vibrator;

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

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/rubycell/pianisthd/c/f;)I
    .locals 9

    const/16 v3, 0x34

    const/4 v4, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->i:F

    iget v1, p1, Lcom/rubycell/pianisthd/c/f;->a:F

    sub-float/2addr v0, v1

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    div-float v0, v2, v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    if-gt v0, v3, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->v:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    sub-int v1, v3, v4

    if-lez v1, :cond_0

    sub-int v1, v3, v4

    move v4, v1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    sget-object v5, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v1, v5, :cond_3

    add-int/lit8 v1, v3, 0x1

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/f;

    iget-object v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

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

    if-gez v6, :cond_4

    cmpg-float v6, v1, v2

    if-gez v6, :cond_4

    move v0, v4

    :goto_3
    return v0

    :cond_1
    iget v0, p1, Lcom/rubycell/pianisthd/c/f;->a:F

    move v2, v0

    goto/16 :goto_0

    :cond_2
    move v0, v3

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_4
    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    cmpg-float v0, v2, v1

    if-gez v0, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v0, -0x1

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
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

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
    .locals 7

    const/4 v6, 0x1

    move v2, v6

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    sub-int v1, v2, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    int-to-float v3, p2

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->t:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->c:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget v3, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    int-to-float v4, p2

    iget v5, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->g:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->e:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->g:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->c:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

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

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->D:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

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
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    const/4 v3, -0x1

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_2
    invoke-static {v1}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 8

    const/high16 v7, 0x4100

    const/4 v6, 0x1

    move v2, v6

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    sub-int v1, v2, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    int-to-float v3, p2

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    invoke-static {v1, v3, v4}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    int-to-float v4, p2

    iget v5, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    iget-object v5, p0, Lcom/rubycell/pianisthd/ui/PianoView;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-boolean v1, Lcom/rubycell/pianisthd/d/b;->R:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    :cond_1
    sget-boolean v1, Lcom/rubycell/pianisthd/d/b;->S:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_2
    sget-object v1, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    sub-int v3, v2, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    int-to-float v4, p2

    iget v5, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const v5, 0x3f6e147b

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    sget v4, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v4, v7

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->D:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    new-instance v2, Lcom/rubycell/pianisthd/c/f;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-direct {p0, v2}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Lcom/rubycell/pianisthd/c/f;)I

    move-result v2

    if-lez v2, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "------------touch down="

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    sub-int v4, v2, v6

    add-int/lit8 v4, v4, 0x15

    const/high16 v5, 0x3f80

    invoke-static {v3, v4, v1, v5}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->d()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int v3, v2, v6

    add-int/lit8 v3, v3, 0x15

    iget v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    const/4 v3, -0x1

    invoke-static {v3}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    :cond_2
    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private c()V
    .locals 14

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4100

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->i:F

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v1, 0x3f3d70a4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    const/4 v0, 0x0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, v0

    move v12, v3

    move v3, v2

    move v2, v12

    move v13, v1

    move v1, v4

    move v4, v13

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "black_up_center.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "black_down_center.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v0, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "black_up_left.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "black_down_left.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v0, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "black_up_right.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "black_down_right.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    float-to-int v0, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "keynormal_normal.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->N:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keynormal_down.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    float-to-int v0, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->k:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->m:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->m:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->o:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->q:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->q:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->l:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->l:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->n:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->p:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->p:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->r:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->r:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/graphics/Canvas;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/4 v6, 0x1

    sub-int v6, v1, v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v6, "m"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    packed-switch v3, :pswitch_data_0

    move v0, v4

    :goto_1
    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->t:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    iget v8, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v8, v0

    iget v9, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const/4 v10, 0x0

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_4

    const/4 v3, 0x1

    move v4, v5

    move v12, v3

    move v3, v0

    move v0, v2

    move v2, v12

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    iget v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v7, 0x3d75c28f

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    add-float/2addr v0, v4

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const/high16 v6, 0x4000

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v7, 0x3d75c28f

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    add-float/2addr v0, v4

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    iget v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v7, 0x3d75c28f

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    add-float/2addr v0, v4

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const/high16 v6, 0x4000

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v7, 0x3d75c28f

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    add-float/2addr v0, v4

    goto/16 :goto_1

    :pswitch_4
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    iget v6, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const v7, 0x3d75c28f

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    add-float/2addr v0, v4

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    iget v8, p0, Lcom/rubycell/pianisthd/ui/PianoView;->B:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v8, v0

    const/4 v9, 0x0

    iget v10, p0, Lcom/rubycell/pianisthd/ui/PianoView;->C:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->v:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    iget v8, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v8, v5

    iget v9, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const/4 v10, 0x0

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const/high16 v11, 0x4000

    mul-float/2addr v10, v11

    const/high16 v11, 0x4040

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    add-float/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/rubycell/pianisthd/c/f;

    iget v8, p0, Lcom/rubycell/pianisthd/ui/PianoView;->z:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    const/high16 v11, 0x4000

    mul-float/2addr v10, v11

    const/high16 v11, 0x4040

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v4, v5

    move v12, v3

    move v3, v0

    move v0, v2

    move v2, v12

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 3

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->M:Landroid/os/Vibrator;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->p:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->r:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Landroid/view/MotionEvent;FI)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->D:Ljava/util/ArrayList;

    if-ne p4, v2, :cond_2

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_2
    invoke-virtual {p0, p2}, Lcom/rubycell/pianisthd/ui/PianoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    goto :goto_0

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->d:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->d:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    iput v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->s:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->t:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->K:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x4334

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->i:F

    div-float/2addr v1, v7

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->n:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->p:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v2, v7

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->r:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v2, v8

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v9

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->m:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->o:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v2, v7

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->q:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->L:F

    mul-float/2addr v2, v8

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v2, v9

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v3, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->d:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    const/4 v4, 0x1

    sub-int v4, v3, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/f;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->a:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/rubycell/pianisthd/c/f;->a:F

    iget v0, v0, Lcom/rubycell/pianisthd/c/f;->b:F

    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->i:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->A:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->D:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    new-instance v0, Lcom/rubycell/pianisthd/c/f;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/rubycell/pianisthd/c/f;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Lcom/rubycell/pianisthd/c/f;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    sub-int v4, v3, v6

    add-int/lit8 v4, v4, 0x15

    const/high16 v5, 0x3f80

    invoke-static {v0, v4, v2, v5}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->d()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    sub-int v0, v3, v6

    add-int/lit8 v0, v0, 0x15

    iget v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->invalidate()V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v1, v0, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

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

.method public setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->x:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    return-void
.end method

.method public setType(IZ)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-boolean p2, p0, Lcom/rubycell/pianisthd/ui/PianoView;->E:Z

    iput p1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    iput v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    :goto_0
    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->invalidate()V

    return-void

    :pswitch_0
    iput v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->s:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->I:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->t:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->J:I

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/rubycell/pianisthd/ui/PianoView;->K:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->t:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->v:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->u:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->w:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->D:Ljava/util/ArrayList;

    iget v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/rubycell/pianisthd/d/b;->N:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->y:I

    :goto_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/PianoView;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x4250

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->i:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    sget v2, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->G:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/PianoView;->c()V

    goto/16 :goto_1

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->O:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/PianoView;->y:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
