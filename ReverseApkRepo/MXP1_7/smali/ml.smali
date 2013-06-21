.class Lml;
.super Lmf;


# instance fields
.field private 덉쓣:I

.field private 뚮젮議뚮떎怨:F

.field private 留먰븷:F


# direct methods
.method constructor <init>(IIFFJLandroid/graphics/Bitmap;Z)V
    .locals 2

    invoke-direct/range {p0 .. p8}, Lmf;-><init>(IIFFJLandroid/graphics/Bitmap;Z)V

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lml;->뚮젮議뚮떎怨:F

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4100

    iput v0, p0, Lml;->留먰븷:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x3f00

    iput v0, p0, Lml;->留먰븷:F

    goto :goto_0
.end method


# virtual methods
.method 癤욱븳援(Landroid/graphics/Canvas;J)Z
    .locals 6

    invoke-virtual {p0, p2, p3}, Lml;->癤욱븳援(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lml;->덉쓣:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lml;->덉쓣:I

    iget-object v1, p0, Lml;->먯꽌:Landroid/graphics/ColorMatrix;

    iget v2, p0, Lml;->ㅼ꽑嫄:F

    iget v3, p0, Lml;->弱밧:F

    iget v4, p0, Lml;->쇰뒗:F

    int-to-float v0, v0

    const/high16 v5, 0x437f

    div-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v0, p0, Lml;->궗:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lml;->먯꽌:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lml;->몃Ъ:F

    iget v1, p0, Lml;->먯껜蹂대떎:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lml;->뚮젮議뚮떎怨:F

    iget v1, p0, Lml;->留먰븷:F

    add-float/2addr v0, v1

    iput v0, p0, Lml;->뚮젮議뚮떎怨:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0, p2, p3}, Lml;->궗(J)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    iget-object v0, p0, Lml;->癤욱븳援:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lml;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lml;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lml;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0
.end method
