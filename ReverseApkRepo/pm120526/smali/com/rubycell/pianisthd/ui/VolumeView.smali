.class public Lcom/rubycell/pianisthd/ui/VolumeView;
.super Landroid/view/View;


# instance fields
.field a:Lcom/rubycell/pianisthd/ui/h;

.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/rubycell/pianisthd/d/d;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->h:Z

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->h:Z

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->h:Z

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->b()V

    return-void
.end method

.method private a(FF)I
    .locals 5

    const/16 v4, 0x168

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/16 v0, 0xd2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/16 v0, 0x186

    goto :goto_0

    :cond_2
    neg-float v0, p2

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    add-int/lit16 v0, v0, 0xb4

    :cond_3
    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x78

    :goto_1
    if-le v0, v4, :cond_0

    add-int/lit16 v0, v0, -0x168

    goto :goto_1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Lcom/rubycell/pianisthd/d/d;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/rubycell/pianisthd/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->f:Lcom/rubycell/pianisthd/d/d;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->f:Lcom/rubycell/pianisthd/d/d;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/d/d;->c()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/lit8 v1, v1, 0x78

    int-to-float v1, v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x168

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->i:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->h:Z

    invoke-direct {p0, v1, v2}, Lcom/rubycell/pianisthd/ui/VolumeView;->a(FF)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    move v0, v4

    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->h:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v1, v2}, Lcom/rubycell/pianisthd/ui/VolumeView;->a(FF)I

    move-result v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    if-lt v0, v2, :cond_6

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    :goto_2
    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    if-gt v1, v5, :cond_5

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->a:Lcom/rubycell/pianisthd/ui/h;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    invoke-interface {v1, v2}, Lcom/rubycell/pianisthd/ui/h;->a(I)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->invalidate()V

    :cond_4
    :goto_3
    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    move v0, v4

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    goto :goto_2

    :cond_6
    if-lez v1, :cond_4

    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->j:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    :goto_4
    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    if-gt v1, v5, :cond_7

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->a:Lcom/rubycell/pianisthd/ui/h;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    invoke-interface {v1, v2}, Lcom/rubycell/pianisthd/ui/h;->a(I)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->invalidate()V

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    goto :goto_4

    :cond_8
    move v0, v6

    goto :goto_1
.end method

.method public setIOnVolumeChange(Lcom/rubycell/pianisthd/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->a:Lcom/rubycell/pianisthd/ui/h;

    return-void
.end method

.method public setVolumePersent(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/rubycell/pianisthd/ui/VolumeView;->g:I

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/VolumeView;->invalidate()V

    return-void
.end method
