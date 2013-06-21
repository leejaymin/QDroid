.class public Lcom/rubycell/pianisthd/ui/MySeekBar;
.super Landroid/view/View;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/content/Context;

.field i:Landroid/graphics/Paint;

.field j:F

.field k:F

.field l:Lcom/rubycell/pianisthd/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x42c8

    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->h:Landroid/content/Context;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "layout_height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_width"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const-string v3, "dip"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    const-string v0, "dip"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    float-to-int v1, v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    mul-float/2addr v2, v6

    div-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020079

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    float-to-int v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020021

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    float-to-int v3, v3

    iget v4, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    iput v8, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput v8, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v9, v9, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->k:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x40c0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->f:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->b:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    invoke-interface {v0}, Lcom/rubycell/pianisthd/b/a;->a()V

    :cond_1
    move v0, v4

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->k:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    cmpg-float v1, v0, v3

    if-gez v1, :cond_4

    move v0, v3

    :cond_4
    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v5, v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MySeekBar;->invalidate()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/rubycell/pianisthd/b/a;->a(I)V

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method public setOnProgressChangeListener(Lcom/rubycell/pianisthd/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->a:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->c:F

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->j:F

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v4, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MySeekBar;->l:Lcom/rubycell/pianisthd/b/a;

    float-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/rubycell/pianisthd/b/a;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MySeekBar;->invalidate()V

    return-void
.end method
