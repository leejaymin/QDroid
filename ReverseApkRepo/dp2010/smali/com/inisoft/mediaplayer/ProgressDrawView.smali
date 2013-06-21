.class public Lcom/inisoft/mediaplayer/ProgressDrawView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field c:J

.field d:J

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-wide/16 v5, -0x1

    const/high16 v4, 0x40c0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    const/16 v1, 0x55

    const/16 v2, 0xaa

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0xd0

    const/16 v3, 0xee

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-wide v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->c:J

    iput-wide v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->d:J

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->e:I

    return-void
.end method

.method final a(JJ)V
    .locals 0

    iput-wide p3, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->c:J

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->d:J

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v4, 0x4040

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->c:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_1

    const/16 v0, 0x60

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x78

    :cond_0
    iget v2, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->e:I

    mul-int/2addr v0, v2

    div-int/lit16 v6, v0, 0xa0

    int-to-float v3, v6

    iget-object v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-long v2, v6

    iget-wide v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->d:J

    mul-long/2addr v2, v5

    iget-wide v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->c:J

    div-long/2addr v2, v5

    long-to-int v0, v2

    int-to-float v3, v0

    iget-object v5, p0, Lcom/inisoft/mediaplayer/ProgressDrawView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
