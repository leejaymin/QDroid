.class public Lafzkl/development/mColorPicker/views/ColorPanelView;
.super Landroid/view/View;


# instance fields
.field private ㅼ꽑嫄:Landroid/graphics/Paint;

.field private 弱밧:Landroid/graphics/RectF;

.field private 洹:F

.field private 癤욱븳援:I

.field private 궗:I

.field private 대쫫:Lb;

.field private 먯꽌:Landroid/graphics/Paint;

.field private 쇰뒗:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x919192

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->癤욱븳援:I

    const/high16 v0, -0x100

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗:I

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->癤욱븳援()V

    return-void
.end method

.method private 癤욱븳援()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->먯꽌:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->ㅼ꽑嫄:Landroid/graphics/Paint;

    const/high16 v0, 0x3f80

    sget v1, Lee;->궗:F

    mul-float/2addr v0, v1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    return-void
.end method

.method private 궗()V
    .locals 5

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    sub-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    sub-float/2addr v0, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    new-instance v0, Lb;

    const/high16 v1, 0x40a0

    sget v2, Lee;->궗:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lb;-><init>(I)V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->대쫫:Lb;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->대쫫:Lb;

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lb;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->癤욱븳援:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->쇰뒗:Landroid/graphics/RectF;

    iget v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->먯꽌:Landroid/graphics/Paint;

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->癤욱븳援:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    iget-object v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->먯꽌:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->대쫫:Lb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->대쫫:Lb;

    invoke-virtual {v1, p1}, Lb;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->ㅼ꽑嫄:Landroid/graphics/Paint;

    iget v2, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->ㅼ꽑嫄:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->癤욱븳援:I

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    sget v0, Lee;->궗:F

    mul-float/2addr v0, p1

    iput v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->洹:F

    iget-object v0, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->弱밧:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗()V

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lafzkl/development/mColorPicker/views/ColorPanelView;->궗:I

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->invalidate()V

    return-void
.end method
