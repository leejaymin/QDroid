.class Lmg;
.super Lmm;


# static fields
.field private static final 癤욱븳援:F


# instance fields
.field private final 궗:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x4220

    invoke-static {v0}, Lee;->먯꽌(F)F

    move-result v0

    sput v0, Lmg;->癤욱븳援:F

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

    iput-object p7, p0, Lmg;->궗:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method 癤욱븳援(Landroid/graphics/Canvas;J)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmg;->궗:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p3, v0}, Lmg;->癤욱븳援(JLandroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lmg;->궗(J)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget v0, p0, Lmg;->몃Ъ:F

    iget v1, p0, Lmg;->먯껜蹂대떎:F

    sget v2, Lmg;->癤욱븳援:F

    iget-object v3, p0, Lmg;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lmg;->몃Ъ:F

    iget v2, p0, Lmg;->먯껜蹂대떎:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    sget v0, Lmg;->癤욱븳援:F

    iget-object v1, p0, Lmg;->궗:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method
