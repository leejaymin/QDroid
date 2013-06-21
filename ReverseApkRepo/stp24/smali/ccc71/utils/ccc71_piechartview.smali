.class public Lccc71/utils/ccc71_piechartview;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:I

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    const/4 v4, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getPaddingLeft()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getPaddingTop()I

    move-result v2

    .line 72
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getPaddingRight()I

    move-result v6

    .line 73
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getPaddingBottom()I

    move-result v7

    .line 75
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getWidth()I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getHeight()I

    move-result v0

    .line 77
    if-le v1, v0, :cond_3

    .line 79
    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 80
    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    move v5, v3

    move v3, v2

    move v2, v1

    .line 87
    :goto_0
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    :cond_2
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    const/high16 v8, -0x7701

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    const/high16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v5, v5

    int-to-float v3, v3

    sub-int/2addr v2, v6

    int-to-float v2, v2

    sub-int/2addr v0, v7

    int-to-float v0, v0

    invoke-direct {v1, v5, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    const/high16 v0, 0x41f0

    iput v0, p0, Lccc71/utils/ccc71_piechartview;->c:F

    .line 106
    iget-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 107
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 109
    iget-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/aa;

    .line 110
    iget-object v2, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    iget v3, v0, Lccc71/utils/aa;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    const/high16 v2, 0x43b4

    iget-wide v8, v0, Lccc71/utils/aa;->b:J

    long-to-float v0, v8

    iget v3, p0, Lccc71/utils/ccc71_piechartview;->e:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lccc71/utils/ccc71_piechartview;->d:F

    .line 112
    iget v2, p0, Lccc71/utils/ccc71_piechartview;->c:F

    iget v3, p0, Lccc71/utils/ccc71_piechartview;->d:F

    iget-object v5, p0, Lccc71/utils/ccc71_piechartview;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    iget v2, p0, Lccc71/utils/ccc71_piechartview;->c:F

    iget v3, p0, Lccc71/utils/ccc71_piechartview;->d:F

    iget-object v5, p0, Lccc71/utils/ccc71_piechartview;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 114
    iget v0, p0, Lccc71/utils/ccc71_piechartview;->c:F

    iget v2, p0, Lccc71/utils/ccc71_piechartview;->d:F

    add-float/2addr v0, v2

    iput v0, p0, Lccc71/utils/ccc71_piechartview;->c:F

    .line 107
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 84
    :cond_3
    sub-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 85
    sub-int v5, v0, v1

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    move v5, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 43
    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 54
    :cond_1
    :goto_1
    :sswitch_1
    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_piechartview;->setMeasuredDimension(II)V

    .line 55
    return-void

    .line 39
    :sswitch_2
    if-le v0, v1, :cond_0

    move v0, v1

    .line 40
    goto :goto_0

    .line 49
    :sswitch_3
    if-ge v0, v1, :cond_1

    move v1, v0

    .line 50
    goto :goto_1

    .line 33
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 43
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x100

    .line 120
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 122
    iput-object p1, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    .line 123
    iput v0, p0, Lccc71/utils/ccc71_piechartview;->e:I

    .line 124
    iget-object v1, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 125
    :goto_0
    if-lt v1, v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lccc71/utils/ccc71_piechartview;->invalidate()V

    .line 136
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lccc71/utils/ccc71_piechartview;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/aa;

    .line 128
    iget v4, p0, Lccc71/utils/ccc71_piechartview;->e:I

    int-to-long v4, v4

    iget-wide v6, v0, Lccc71/utils/aa;->b:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lccc71/utils/ccc71_piechartview;->e:I

    .line 129
    if-eqz p2, :cond_1

    .line 131
    const/high16 v4, -0x100

    const/high16 v5, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lccc71/utils/aa;->a:I

    .line 125
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
