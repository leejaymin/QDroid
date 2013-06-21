.class Lmn;
.super Lmm;


# static fields
.field private static final 癤욱븳援:Landroid/graphics/Path;


# instance fields
.field private ㅼ꽑嫄:F

.field private final 궗:Landroid/graphics/Paint;

.field private 먯꽌:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/high16 v7, 0x4040

    const v0, 0x3f5db3d7

    const/high16 v1, 0x3f00

    const/high16 v2, 0x42a0

    invoke-static {v2}, Lee;->먯꽌(F)F

    move-result v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sput-object v3, Lmn;->癤욱븳援:Landroid/graphics/Path;

    sget-object v3, Lmn;->癤욱븳援:Landroid/graphics/Path;

    mul-float v4, v2, v1

    neg-float v5, v2

    mul-float/2addr v5, v0

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v3, Lmn;->癤욱븳援:Landroid/graphics/Path;

    const/4 v4, 0x0

    mul-float v5, v2, v0

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v3, Lmn;->癤욱븳援:Landroid/graphics/Path;

    neg-float v4, v2

    mul-float/2addr v4, v1

    neg-float v5, v2

    mul-float/2addr v5, v0

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v3, Lmn;->癤욱븳援:Landroid/graphics/Path;

    mul-float/2addr v1, v2

    neg-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lmn;->癤욱븳援:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    sget-object v0, Lmn;->癤욱븳援:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method constructor <init>(IIFFJLandroid/graphics/Paint;Z)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lmm;-><init>(IIFFJZ)V

    iput-object p7, p0, Lmn;->궗:Landroid/graphics/Paint;

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmn;->먯꽌:F

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4100

    iput v0, p0, Lmn;->ㅼ꽑嫄:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x3f00

    iput v0, p0, Lmn;->ㅼ꽑嫄:F

    goto :goto_0
.end method


# virtual methods
.method 癤욱븳援(Landroid/graphics/Canvas;J)Z
    .locals 3

    iget-object v0, p0, Lmn;->궗:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p3, v0}, Lmn;->癤욱븳援(JLandroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lmn;->궗(J)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lmn;->몃Ъ:F

    iget v2, p0, Lmn;->먯껜蹂대떎:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lmn;->먯꽌:F

    iget v2, p0, Lmn;->ㅼ꽑嫄:F

    add-float/2addr v1, v2

    iput v1, p0, Lmn;->먯꽌:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    sget-object v0, Lmn;->癤욱븳援:Landroid/graphics/Path;

    iget-object v1, p0, Lmn;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0
.end method
