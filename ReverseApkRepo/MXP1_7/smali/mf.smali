.class Lmf;
.super Lmm;


# instance fields
.field protected ㅼ꽑嫄:F

.field protected 弱밧:F

.field protected final 癤욱븳援:Landroid/graphics/Bitmap;

.field protected final 궗:Landroid/graphics/Paint;

.field private 뚮젮議뚮떎怨:I

.field protected final 먯꽌:Landroid/graphics/ColorMatrix;

.field protected 쇰뒗:F


# direct methods
.method constructor <init>(IIFFJLandroid/graphics/Bitmap;Z)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lmm;-><init>(IIFFJZ)V

    iput-object p7, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmf;->궗:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lmf;->먯꽌:Landroid/graphics/ColorMatrix;

    iget v0, p0, Lmf;->붿슧:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lmf;->ㅼ꽑嫄:F

    iget v0, p0, Lmf;->붿슧:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lmf;->弱밧:F

    iget v0, p0, Lmf;->붿슧:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lmf;->쇰뒗:F

    return-void
.end method


# virtual methods
.method 癤욱븳援(Landroid/graphics/Canvas;J)Z
    .locals 7

    const/high16 v6, 0x437f

    invoke-virtual {p0, p2, p3}, Lmf;->癤욱븳援(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lmf;->뚮젮議뚮떎怨:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lmf;->뚮젮議뚮떎怨:I

    iget-object v1, p0, Lmf;->먯꽌:Landroid/graphics/ColorMatrix;

    iget v2, p0, Lmf;->ㅼ꽑嫄:F

    iget v3, p0, Lmf;->弱밧:F

    iget v4, p0, Lmf;->쇰뒗:F

    int-to-float v5, v0

    div-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v1, p0, Lmf;->궗:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lmf;->먯꽌:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object v1, p0, Lmf;->먯꽌:Landroid/graphics/ColorMatrix;

    iget v2, p0, Lmf;->ㅼ꽑嫄:F

    iget v3, p0, Lmf;->弱밧:F

    iget v4, p0, Lmf;->쇰뒗:F

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v0, p0, Lmf;->궗:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lmf;->먯꽌:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p2, p3}, Lmf;->궗(J)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lmf;->몃Ъ:F

    iget v2, p0, Lmf;->먯껜蹂대떎:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lmf;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    iget v1, p0, Lmf;->몃Ъ:F

    iget-object v2, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lmf;->먯껜蹂대떎:F

    iget-object v3, p0, Lmf;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lmf;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
