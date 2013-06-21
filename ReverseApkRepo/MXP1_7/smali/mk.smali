.class Lmk;
.super Lmm;


# static fields
.field private static final 癤욱븳援:Landroid/graphics/RectF;


# instance fields
.field private ㅼ꽑嫄:F

.field private final 궗:Landroid/graphics/Paint;

.field private 먯꽌:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x4210

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v1, Lmk;->癤욱븳援:Landroid/graphics/RectF;

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

    iput-object p7, p0, Lmk;->궗:Landroid/graphics/Paint;

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmk;->먯꽌:F

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4100

    iput v0, p0, Lmk;->ㅼ꽑嫄:F

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x3f00

    iput v0, p0, Lmk;->ㅼ꽑嫄:F

    goto :goto_0
.end method


# virtual methods
.method 癤욱븳援(Landroid/graphics/Canvas;J)Z
    .locals 3

    iget-object v0, p0, Lmk;->궗:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p3, v0}, Lmk;->癤욱븳援(JLandroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lmk;->궗(J)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lmk;->몃Ъ:F

    iget v2, p0, Lmk;->먯껜蹂대떎:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lmk;->먯꽌:F

    iget v2, p0, Lmk;->ㅼ꽑嫄:F

    add-float/2addr v1, v2

    iput v1, p0, Lmk;->먯꽌:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    sget-object v0, Lmk;->癤욱븳援:Landroid/graphics/RectF;

    iget-object v1, p0, Lmk;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0
.end method
