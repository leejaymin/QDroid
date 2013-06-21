.class Lcom/wareone/tappmt/Chart$PieChartView;
.super Landroid/view/View;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PieChartView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Chart;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/Chart;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    .line 91
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 35
    .parameter "canvas"

    .prologue
    .line 98
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    new-instance v21, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v21, nf:Ljava/text/DecimalFormat;
    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 105
    .local v10, paint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    const/high16 v5, -0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    const/16 v16, 0x0

    .line 110
    .local v16, currentAngle:F
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getBottom()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 111
    .local v20, mRadius:I
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    const-wide v7, 0x3fd6666666666666L

    mul-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v26, v0

    .line 112
    .local v26, radius:I
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v12, v5, 0x2

    .line 113
    .local v12, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getBottom()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Chart$PieChartView;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v13, v5, 0x2

    .line 114
    .local v13, centerY:I
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    const v6, 0x3f666666

    mul-float v27, v5, v6

    .line 115
    .local v27, shortRadius:F
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    const v6, 0x3f8ccccd

    mul-float v19, v5, v6

    .line 116
    .local v19, longRadius:F
    new-instance v23, Landroid/graphics/RectF;

    sub-int v5, v12, v26

    int-to-float v5, v5

    sub-int v6, v13, v26

    int-to-float v6, v6

    add-int v7, v12, v26

    int-to-float v7, v7

    add-int v8, v13, v26

    int-to-float v8, v8

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    .local v23, oval:Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v22

    .line 120
    .local v22, oldStroke:F
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x4040

    add-float/2addr v5, v6

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    const/high16 v5, -0x100

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    int-to-float v5, v12

    int-to-float v6, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    move-object v0, v10

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 168
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/wareone/tappmt/Chart;->access$1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "name"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ---> "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v8, "percent"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "percent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v30

    .line 130
    .local v30, value:F
    const/high16 v5, 0x43b4

    mul-float v11, v30, v5

    .line 132
    .local v11, angle:F
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "color"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    const/high16 v6, 0x4120

    add-int/lit8 v5, v18, 0x1

    mul-int/lit8 v5, v5, 0xf

    int-to-float v7, v5

    const/high16 v8, 0x41a0

    add-int/lit8 v5, v18, 0x1

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0xa

    int-to-float v9, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    const/4 v9, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v23

    move/from16 v7, v16

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 139
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    const/high16 v5, -0x100

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v9, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v23

    move/from16 v7, v16

    move v8, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "percent"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 144
    const/high16 v5, -0x100

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    const/high16 v5, 0x42b4

    const/high16 v6, 0x4000

    div-float v6, v11, v6

    add-float v6, v6, v16

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    .line 146
    .local v24, rAngle:D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    .line 147
    .local v28, sinValue:D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 148
    .local v14, cosValue:D
    int-to-float v5, v12

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide v6, v0

    mul-double v6, v6, v28

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v31

    .line 149
    .local v31, x1:I
    int-to-float v5, v13

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide v6, v0

    mul-double/2addr v6, v14

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v33

    .line 150
    .local v33, y1:I
    int-to-float v5, v12

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide v6, v0

    mul-double v6, v6, v28

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v32

    .line 151
    .local v32, x2:I
    int-to-float v5, v13

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide v6, v0

    mul-double/2addr v6, v14

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v34

    .line 152
    .local v34, y2:I
    move/from16 v0, v31

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    const/16 v17, 0xa

    .line 154
    .local v17, extra:I
    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_1

    .line 155
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    .line 156
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    :cond_1
    move/from16 v0, v32

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v7, v0

    add-int v5, v32, v17

    int-to-float v8, v5

    move/from16 v0, v34

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int v6, v32, v17

    int-to-float v6, v6

    add-int/lit8 v7, v34, 0x5

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    .end local v14           #cosValue:D
    .end local v17           #extra:I
    .end local v24           #rAngle:D
    .end local v28           #sinValue:D
    .end local v31           #x1:I
    .end local v32           #x2:I
    .end local v33           #y1:I
    .end local v34           #y2:I
    :cond_2
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart$PieChartView;->this$0:Lcom/wareone/tappmt/Chart;

    move-object v5, v0

    #getter for: Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;
    invoke-static {v5}, Lcom/wareone/tappmt/Chart;->access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x42c8

    mul-float v6, v6, v30

    float-to-double v6, v6

    move-object/from16 v0, v21

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41c8

    add-int/lit8 v7, v18, 0x1

    mul-int/lit8 v7, v7, 0xf

    add-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    add-float v16, v16, v11

    .line 125
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method
