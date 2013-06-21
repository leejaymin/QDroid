.class final Lcom/tequnique/camerax/bf;
.super Landroid/view/View;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private b:Landroid/text/TextPaint;

.field private c:Lcom/tequnique/camerax/cf;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    iput-object v1, p0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/tequnique/camerax/bf;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/bf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42a0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const-string v1, "0000000000000"

    :goto_0
    iget-object v2, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Lcom/tequnique/camerax/cf;

    invoke-direct {v0}, Lcom/tequnique/camerax/cf;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const v4, 0x3dcccccd

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0
.end method

.method private a()V
    .locals 11

    const/high16 v2, 0x3f00

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42f0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v6, v1

    const/high16 v1, 0x42a0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v7, v1

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v8, v0

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-int/lit8 v1, v6, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v9, v0

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-int/lit8 v1, v7, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v10, v0

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    const/16 v1, 0x20

    new-array v1, v1, [F

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;[F)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/4 v1, 0x0

    int-to-float v2, v9

    int-to-float v3, v10

    add-int v4, v9, v8

    int-to-float v4, v4

    int-to-float v5, v10

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/4 v1, 0x4

    int-to-float v2, v9

    add-int/lit8 v3, v10, -0x4

    int-to-float v3, v3

    int-to-float v4, v9

    add-int v5, v10, v8

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0x8

    add-int v2, v9, v6

    int-to-float v2, v2

    int-to-float v3, v10

    add-int v4, v9, v6

    sub-int/2addr v4, v8

    int-to-float v4, v4

    int-to-float v5, v10

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0xc

    add-int v2, v9, v6

    int-to-float v2, v2

    add-int/lit8 v3, v10, -0x4

    int-to-float v3, v3

    add-int v4, v9, v6

    int-to-float v4, v4

    add-int v5, v10, v8

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0x10

    int-to-float v2, v9

    add-int v3, v10, v7

    int-to-float v3, v3

    add-int v4, v9, v8

    int-to-float v4, v4

    add-int v5, v10, v7

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0x14

    int-to-float v2, v9

    add-int v3, v10, v7

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    int-to-float v4, v9

    add-int v5, v10, v7

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0x18

    add-int v2, v9, v6

    int-to-float v2, v2

    add-int v3, v10, v7

    int-to-float v3, v3

    add-int v4, v9, v6

    sub-int/2addr v4, v8

    int-to-float v4, v4

    add-int v5, v10, v7

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v0

    const/16 v1, 0x1c

    add-int v2, v9, v6

    int-to-float v2, v2

    add-int v3, v10, v7

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    add-int v4, v9, v6

    int-to-float v4, v4

    add-int v5, v10, v7

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-static/range {v0 .. v5}, Lcom/tequnique/camerax/bf;->a([FIFFFF)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/RectF;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v2, v10

    add-int v3, v9, v6

    int-to-float v3, v3

    add-int v4, v10, v7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static a([FIFFFF)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aput p2, p0, p1

    add-int/lit8 v1, v0, 0x1

    aput p3, p0, v0

    add-int/lit8 v0, v1, 0x1

    aput p4, p0, v1

    aput p5, p0, v0

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->e:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->az:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v9, v3, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v3}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v3

    iget v3, v3, Lcom/tequnique/camerax/bo;->aA:I

    div-int v10, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v3}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v3

    iget v3, v3, Lcom/tequnique/camerax/bo;->aA:I

    div-int v11, v2, v3

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget v2, v2, Lcom/tequnique/camerax/bo;->aA:I

    if-le v8, v2, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->d(Lcom/tequnique/camerax/CameraProActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v4}, Lcom/tequnique/camerax/CameraProActivity;->k(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const/high16 v5, 0x4100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v4}, Lcom/tequnique/camerax/CameraProActivity;->i(Lcom/tequnique/camerax/CameraProActivity;)[F

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ay:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->l(Lcom/tequnique/camerax/CameraProActivity;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L

    mul-double v8, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v12, v2

    sub-float v13, v11, v10

    sub-float v14, v12, v10

    add-float v15, v11, v10

    add-float v16, v12, v10

    const/high16 v2, 0x40a0

    sub-float v3, v13, v2

    add-float v4, v14, v10

    const/high16 v2, 0x40a0

    add-float v5, v13, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40a0

    sub-float v3, v15, v2

    const/high16 v2, 0x40a0

    add-float v5, v15, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v3, v13, v10

    const/high16 v2, 0x40a0

    add-float v4, v14, v2

    const/high16 v2, 0x40a0

    sub-float v6, v14, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40a0

    add-float v4, v16, v2

    const/high16 v2, 0x40a0

    sub-float v6, v16, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v13, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v8, v2

    neg-float v2, v10

    mul-float/2addr v2, v13

    sub-float/2addr v2, v8

    add-float v3, v2, v11

    neg-float v2, v10

    mul-float/2addr v2, v8

    add-float/2addr v2, v13

    add-float v6, v2, v12

    mul-float v2, v13, v10

    sub-float/2addr v2, v8

    add-float v5, v2, v11

    mul-float v2, v8, v10

    add-float/2addr v2, v13

    add-float v4, v2, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-float v2, v10

    mul-float/2addr v2, v8

    sub-float v2, v13, v2

    add-float v3, v2, v11

    neg-float v2, v10

    mul-float/2addr v2, v13

    add-float/2addr v2, v8

    add-float v6, v2, v12

    mul-float v2, v8, v10

    sub-float v2, v13, v2

    add-float v5, v2, v11

    mul-float v2, v13, v10

    add-float/2addr v2, v8

    add-float v4, v2, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v3, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v7, 0x3ff8

    cmpg-double v2, v2, v7

    if-ltz v2, :cond_7

    sub-float v2, v6, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ax:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->m(Lcom/tequnique/camerax/CameraProActivity;)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v9, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    iget v2, v2, Lcom/tequnique/camerax/cf;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    add-float v12, v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    iget v2, v2, Lcom/tequnique/camerax/cf;->a:I

    int-to-float v2, v2

    add-float v13, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    iget v2, v2, Lcom/tequnique/camerax/cf;->b:I

    int-to-float v2, v2

    add-float v14, v2, v11

    neg-float v2, v11

    mul-float/2addr v2, v9

    sub-float/2addr v2, v10

    add-float v3, v2, v13

    neg-float v2, v11

    mul-float/2addr v2, v10

    add-float/2addr v2, v9

    add-float v4, v2, v14

    mul-float v2, v9, v11

    sub-float/2addr v2, v10

    add-float v5, v2, v13

    mul-float v2, v10, v11

    add-float/2addr v2, v9

    add-float v6, v2, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x2

    new-array v15, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050075

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    aput v5, v16, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    aput v5, v16, v4

    neg-float v4, v12

    mul-float/2addr v4, v9

    sub-float/2addr v4, v10

    add-float/2addr v4, v13

    neg-float v5, v12

    mul-float/2addr v5, v10

    add-float/2addr v5, v9

    add-float/2addr v5, v14

    mul-float v6, v9, v12

    sub-float/2addr v6, v10

    add-float/2addr v6, v13

    mul-float v7, v10, v12

    add-float/2addr v7, v9

    add-float/2addr v7, v14

    const/16 v17, 0x0

    aget v17, v3, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v4, v4, v17

    const/16 v17, 0x1

    aget v17, v3, v17

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v5, v5, v17

    new-instance v17, Landroid/graphics/RectF;

    const/16 v18, 0x0

    aget v18, v3, v18

    add-float v18, v18, v4

    const/16 v19, 0x1

    aget v3, v3, v19

    add-float/2addr v3, v5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v4, v5, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float v3, v6, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v4, v7, v4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget v6, v2, v6

    add-float/2addr v6, v3

    const/4 v7, 0x1

    aget v2, v2, v7

    add-float/2addr v2, v4

    invoke-direct {v5, v3, v4, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    neg-float v2, v11

    mul-float/2addr v2, v10

    sub-float v2, v9, v2

    add-float v3, v2, v13

    neg-float v2, v11

    mul-float/2addr v2, v9

    add-float/2addr v2, v10

    add-float v4, v2, v14

    mul-float v2, v10, v11

    sub-float v2, v9, v2

    add-float v5, v2, v13

    mul-float v2, v9, v11

    add-float/2addr v2, v10

    add-float v6, v2, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-float v2, v12

    mul-float/2addr v2, v10

    sub-float v2, v9, v2

    add-float/2addr v2, v13

    neg-float v3, v12

    mul-float/2addr v3, v9

    add-float/2addr v3, v10

    add-float/2addr v3, v14

    mul-float v4, v10, v12

    sub-float v4, v9, v4

    add-float/2addr v4, v13

    mul-float v5, v9, v12

    add-float/2addr v5, v10

    add-float/2addr v5, v14

    const/4 v6, 0x0

    aget v6, v16, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    const/4 v6, 0x1

    aget v6, v16, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget v7, v16, v7

    add-float/2addr v7, v2

    const/4 v9, 0x1

    aget v9, v16, v9

    add-float/2addr v9, v3

    invoke-direct {v6, v2, v3, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    aget v2, v15, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v5, v15, v5

    add-float/2addr v5, v2

    const/4 v7, 0x1

    aget v7, v15, v7

    add-float/2addr v7, v3

    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tequnique/camerax/bf;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    return-void

    :cond_6
    mul-int v2, v8, v10

    add-int/2addr v2, v9

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int v2, v8, v10

    add-int/2addr v2, v9

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v9

    mul-int v2, v8, v11

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tequnique/camerax/bf;->getWidth()I

    move-result v2

    sub-int/2addr v2, v9

    int-to-float v5, v2

    mul-int v2, v8, v11

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tequnique/camerax/bf;->d:Landroid/graphics/Paint;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    const/high16 v7, 0x4000

    const/high16 v3, 0x3f00

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v2, 0x42a0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v2, Lcom/tequnique/camerax/cf;

    const-wide v3, 0x3ff3333333333333L

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v3, v1

    sub-int v3, p4, v3

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v3, v0, v1, v1}, Lcom/tequnique/camerax/cf;-><init>(IIII)V

    iput-object v2, p0, Lcom/tequnique/camerax/bf;->c:Lcom/tequnique/camerax/cf;

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/tequnique/camerax/bf;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {p0}, Lcom/tequnique/camerax/bf;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->d(Lcom/tequnique/camerax/CameraProActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/bf;->a()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->d(Lcom/tequnique/camerax/CameraProActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v4, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v2, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2}, Lcom/tequnique/camerax/CameraProActivity;->c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;

    move-result-object v2

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v1, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/tequnique/camerax/bf;->a()V

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->e(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->g(Lcom/tequnique/camerax/CameraProActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v1

    iget v1, v1, Lcom/tequnique/camerax/bo;->W:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/bf;->invalidate()V

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->h(Lcom/tequnique/camerax/CameraProActivity;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tequnique/camerax/bf;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1, v4}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method
