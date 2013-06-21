.class public Lcom/chillingo/crystal/views/BusyView;
.super Landroid/widget/ImageView;


# instance fields
.field private _busyIndicator:Landroid/graphics/Bitmap;

.field private _spinningAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    if-nez p2, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "busy indicator cannot be null!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/views/BusyView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/views/BusyView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public bitmapDimensions()Lcom/chillingo/crystal/utils/Size;
    .locals 3

    new-instance v0, Lcom/chillingo/crystal/utils/Size;

    iget-object v1, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public startAnimating()V
    .locals 6

    const/high16 v5, 0x4000

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x470ca000

    iget-object v3, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/chillingo/crystal/views/BusyView;->_busyIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/views/BusyView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public stopAnimating()V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/views/BusyView;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/views/BusyView;->_spinningAnimation:Landroid/view/animation/RotateAnimation;

    return-void
.end method
