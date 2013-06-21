.class public Lccc71/utils/ccc71_histogram_view;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Ljava/util/ArrayList;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const v0, -0xaaaa01

    sput v0, Lccc71/utils/ccc71_histogram_view;->a:I

    .line 15
    const v0, 0x888800

    sput v0, Lccc71/utils/ccc71_histogram_view;->b:I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/ccc71_histogram_view;->f:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/utils/ccc71_histogram_view;->f:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 127
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_histogram_view;->getWidth()I

    move-result v13

    .line 68
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_histogram_view;->getHeight()I

    move-result v14

    .line 69
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_histogram_view;->getDrawingCacheBackgroundColor()I

    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 73
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    const v5, -0x77000001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->d:Landroid/graphics/Paint;

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    const-wide/16 v7, 0x0

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 85
    const/4 v4, 0x0

    move v12, v4

    :goto_0
    if-lt v12, v15, :cond_3

    .line 97
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-eqz v4, :cond_0

    .line 104
    div-int/2addr v13, v15

    .line 105
    const/4 v4, 0x0

    move v12, v4

    :goto_1
    if-ge v12, v15, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 108
    array-length v0, v4

    move/from16 v16, v0

    .line 109
    const-wide/16 v9, 0x0

    .line 110
    const-wide/16 v5, 0x0

    .line 111
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v16

    if-lt v11, v0, :cond_5

    .line 105
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1

    .line 87
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 88
    array-length v0, v4

    move/from16 v16, v0

    .line 89
    const-wide/16 v9, 0x0

    .line 90
    const/4 v5, 0x0

    move/from16 v25, v5

    move-wide v5, v9

    move/from16 v9, v25

    :goto_3
    move/from16 v0, v16

    if-lt v9, v0, :cond_4

    .line 94
    cmp-long v4, v5, v7

    if-lez v4, :cond_7

    move-wide v4, v5

    .line 85
    :goto_4
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move-wide v7, v4

    goto :goto_0

    .line 92
    :cond_4
    aget v10, v4, v9

    int-to-long v10, v10

    add-long/2addr v10, v5

    .line 90
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move-wide v5, v10

    goto :goto_3

    .line 113
    :cond_5
    aget v17, v4, v11

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v9, v9, v17

    .line 115
    new-instance v17, Landroid/graphics/RectF;

    mul-int v18, v13, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-long v0, v14

    move-wide/from16 v19, v0

    int-to-long v0, v14

    move-wide/from16 v21, v0

    mul-long v21, v21, v9

    div-long v21, v21, v7

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    .line 116
    add-int/lit8 v20, v12, 0x1

    mul-int v20, v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v21, v0

    int-to-long v0, v14

    move-wide/from16 v23, v0

    mul-long v5, v5, v23

    div-long/2addr v5, v7

    sub-long v5, v21, v5

    long-to-float v5, v5

    .line 115
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lccc71/utils/ccc71_histogram_view;->f:Z

    if-eqz v5, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    sget v6, Lccc71/utils/ccc71_histogram_view;->a:I

    add-int/lit8 v18, v12, 0x1

    sget v19, Lccc71/utils/ccc71_histogram_view;->b:I

    mul-int v18, v18, v19

    div-int v18, v18, v15

    add-int v6, v6, v18

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 111
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-wide v5, v9

    goto/16 :goto_2

    .line 121
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_histogram_view;->c:Landroid/graphics/Paint;

    const v6, -0xffff01

    const v18, 0x8000

    mul-int v18, v18, v11

    add-int v6, v6, v18

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_7
    move-wide v4, v7

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_histogram_view;->setMeasuredDimension(II)V

    .line 57
    return-void
.end method

.method public setSingleTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccc71/utils/ccc71_histogram_view;->f:Z

    .line 138
    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_histogram_view;->setTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 139
    return-void
.end method

.method public setTimes(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 146
    if-nez v5, :cond_0

    .line 178
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 151
    :goto_1
    if-lt v4, v6, :cond_1

    .line 177
    invoke-virtual {p0}, Lccc71/utils/ccc71_histogram_view;->invalidate()V

    goto :goto_0

    .line 153
    :cond_1
    new-array v7, v5, [I

    move v2, v3

    .line 155
    :goto_2
    if-lt v2, v5, :cond_2

    .line 174
    iget-object v0, p0, Lccc71/utils/ccc71_histogram_view;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 159
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 161
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v4, :cond_3

    .line 164
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v8, v0, v9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v9

    sub-int v0, v8, v0

    aput v0, v7, v2

    .line 155
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v9

    aput v0, v7, v2

    goto :goto_3

    .line 170
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v9

    aput v0, v7, v2

    goto :goto_3
.end method
