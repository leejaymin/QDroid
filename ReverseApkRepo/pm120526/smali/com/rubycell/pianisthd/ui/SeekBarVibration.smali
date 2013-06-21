.class public Lcom/rubycell/pianisthd/ui/SeekBarVibration;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field a:Lcom/rubycell/pianisthd/ui/g;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/content/Context;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/view/GestureDetector;

.field private m:Z

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    iput v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    iput v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    iput v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b()V

    return-void
.end method

.method private a(F)I
    .locals 4

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-le v0, v3, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020180

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->l:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->o:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->f:Z

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->o:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    :cond_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    :cond_1
    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    :cond_2
    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a(F)I

    move-result v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    invoke-interface {v1, v0}, Lcom/rubycell/pianisthd/ui/g;->a(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/rubycell/pianisthd/ui/g;->a(I)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->invalidate()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iput p2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->d:I

    iget v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->e:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->n:Landroid/graphics/Bitmap;

    div-int/lit8 v0, p2, 0x5

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->b:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    invoke-interface {v0}, Lcom/rubycell/pianisthd/ui/g;->a()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->m:Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->invalidate()V

    return-void
.end method

.method public setIOnSeekBarChange(Lcom/rubycell/pianisthd/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->a:Lcom/rubycell/pianisthd/ui/g;

    return-void
.end method

.method public setPersent(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    :cond_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->c:I

    :cond_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/SeekBarVibration;->invalidate()V

    return-void
.end method
