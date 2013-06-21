.class public Lcom/mxtech/subtitle/BitmapFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lhe;


# instance fields
.field private final ㅼ꽑嫄:I

.field private final 弱밧:Landroid/graphics/Bitmap;

.field private final 癤욱븳援:F

.field private final 궗:F

.field private 대쫫:Landroid/graphics/RectF;

.field private final 먯꽌:I

.field private 쇰뒗:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iput p1, p0, Lcom/mxtech/subtitle/BitmapFrame;->癤욱븳援:F

    iput p2, p0, Lcom/mxtech/subtitle/BitmapFrame;->궗:F

    iput p4, p0, Lcom/mxtech/subtitle/BitmapFrame;->먯꽌:I

    iput p5, p0, Lcom/mxtech/subtitle/BitmapFrame;->ㅼ꽑嫄:I

    iput-object p3, p0, Lcom/mxtech/subtitle/BitmapFrame;->弱밧:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->쇰뒗:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public 癤욱븳援(IIII)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->먯꽌:I

    if-eqz v0, :cond_0

    iget p3, p0, Lcom/mxtech/subtitle/BitmapFrame;->먯꽌:I

    :cond_0
    iget v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->ㅼ꽑嫄:I

    if-eqz v0, :cond_1

    iget p4, p0, Lcom/mxtech/subtitle/BitmapFrame;->ㅼ꽑嫄:I

    :cond_1
    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mxtech/subtitle/BitmapFrame;->癤욱븳援:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mxtech/subtitle/BitmapFrame;->癤욱븳援:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->弱밧:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mxtech/subtitle/BitmapFrame;->궗:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mxtech/subtitle/BitmapFrame;->궗:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->弱밧:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_2
    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, p1

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_3
    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->top:F

    :cond_4
    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p2

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    iput v4, v0, Landroid/graphics/RectF;->top:F

    :cond_5
    return-void
.end method

.method public 癤욱븳援(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/mxtech/subtitle/BitmapFrame;->弱밧:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mxtech/subtitle/BitmapFrame;->쇰뒗:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mxtech/subtitle/BitmapFrame;->대쫫:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
