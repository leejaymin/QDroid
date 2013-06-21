.class public Lelectrum2/drums/wavedisplay;
.super Landroid/widget/ImageView;
.source "wavedisplay.java"


# instance fields
.field EndPoint:I

.field StartPoint:I

.field backgroundpaint:Landroid/graphics/Paint;

.field private borderpaint:Landroid/graphics/Paint;

.field boxpaint:Landroid/graphics/Paint;

.field jumpfactor:I

.field linepaint:Landroid/graphics/Paint;

.field oldX:I

.field oldY:I

.field scaleval:D

.field selectpaint:Landroid/graphics/Paint;

.field startpaint:Landroid/graphics/Paint;

.field temppaint:Landroid/graphics/Paint;

.field textpaint:Landroid/graphics/Paint;

.field textpaint2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x100

    const/high16 v5, 0x3f80

    const/16 v4, 0x50

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lelectrum2/drums/wavedisplay;->StartPoint:I

    .line 39
    iput v0, p0, Lelectrum2/drums/wavedisplay;->EndPoint:I

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->temppaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->temppaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->temppaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xfa

    invoke-static {v1, v2, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xfa

    const/16 v3, 0x96

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint2:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint2:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->textpaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4130

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->startpaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->startpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->startpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->boxpaint:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->boxpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->boxpaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    const/16 v2, 0xc8

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lelectrum2/drums/wavedisplay;->selectpaint:Landroid/graphics/Paint;

    .line 116
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 124
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    :try_start_0
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->startpos:I

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/wavedisplay;->StartPoint:I

    .line 134
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v1, v1, Lelectrum2/drums/soundObj;->samplelen:I

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/wavedisplay;->EndPoint:I

    .line 138
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v27

    .line 139
    .local v27, picwidth:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v26

    .line 140
    .local v26, picheight:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v1

    div-int/lit8 v14, v1, 0x2

    .line 141
    .local v14, halfWidth:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v1

    div-int/lit8 v13, v1, 0x2

    .line 146
    .local v13, halfHeight:I
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    if-eqz v1, :cond_3

    .line 149
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v9, v1, Lelectrum2/drums/soundObj;->sounddata:[S

    .line 151
    .local v9, data:[S
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v10, v1, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 154
    .local v10, datalen:I
    if-eqz v9, :cond_1

    .line 157
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->selectpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    move-object/from16 v0, p0

    iput v13, v0, Lelectrum2/drums/wavedisplay;->oldY:I

    .line 160
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    .line 162
    div-int/lit8 v1, v26, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x4700

    div-float/2addr v1, v2

    float-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lelectrum2/drums/wavedisplay;->scaleval:D

    .line 164
    int-to-float v1, v10

    move/from16 v0, v27

    int-to-float v2, v0

    div-float v19, v1, v2

    .line 167
    .local v19, jumpfactorfloat:F
    div-int v1, v10, v27

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    .line 169
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    int-to-float v1, v1

    sub-float v20, v19, v1

    .line 171
    .local v20, jumpfactorremainder:F
    const/4 v8, 0x0

    .line 173
    .local v8, currentremainder:F
    const/16 v21, 0x0

    .line 175
    .local v21, lastindex:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v27

    if-lt v15, v0, :cond_4

    .line 273
    .end local v8           #currentremainder:F
    .end local v15           #i:I
    .end local v19           #jumpfactorfloat:F
    .end local v20           #jumpfactorremainder:F
    .end local v21           #lastindex:I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->StartPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    div-int v29, v1, v2

    .line 275
    .local v29, startx:I
    move/from16 v0, v29

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v29

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->startpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->EndPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    div-int v28, v1, v2

    .line 279
    .local v28, start2:I
    move/from16 v0, v28

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->startpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->EndPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/wavedisplay;->StartPoint:I

    if-le v1, v2, :cond_2

    .line 286
    move/from16 v0, v29

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->boxpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v1, v0, Lelectrum2/drums/wavedisplay;->selectpaint:Landroid/graphics/Paint;

    .line 300
    .end local v9           #data:[S
    .end local v10           #datalen:I
    .end local v28           #start2:I
    .end local v29           #startx:I
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 303
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/wavedisplay;->getHeight()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 305
    const-string v1, "Tap To Edit"

    const/high16 v2, 0x4120

    const/high16 v3, 0x41a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lelectrum2/drums/wavedisplay;->textpaint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    .end local v13           #halfHeight:I
    .end local v14           #halfWidth:I
    .end local v26           #picheight:I
    .end local v27           #picwidth:I
    :goto_1
    return-void

    .line 178
    .restart local v8       #currentremainder:F
    .restart local v9       #data:[S
    .restart local v10       #datalen:I
    .restart local v13       #halfHeight:I
    .restart local v14       #halfWidth:I
    .restart local v15       #i:I
    .restart local v19       #jumpfactorfloat:F
    .restart local v20       #jumpfactorremainder:F
    .restart local v21       #lastindex:I
    .restart local v26       #picheight:I
    .restart local v27       #picwidth:I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    mul-int/2addr v1, v15

    add-int v16, v1, v21

    .line 180
    .local v16, index:I
    const/high16 v1, 0x3f80

    cmpl-float v1, v8, v1

    if-lez v1, :cond_5

    .line 182
    const/high16 v1, 0x3f80

    sub-float/2addr v8, v1

    .line 183
    add-int/lit8 v16, v16, 0x1

    .line 184
    add-int/lit8 v21, v21, 0x1

    .line 188
    :cond_5
    add-float v8, v8, v20

    .line 192
    move/from16 v0, v16

    if-ge v0, v10, :cond_8

    .line 195
    aget-short v1, v9, v16

    neg-int v1, v1

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/wavedisplay;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v13

    add-double/2addr v1, v3

    double-to-int v11, v1

    .line 197
    .local v11, datapoint:I
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldY:I

    int-to-float v3, v1

    int-to-float v4, v15

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    move-object/from16 v0, p0

    iput v15, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    .line 200
    move-object/from16 v0, p0

    iput v11, v0, Lelectrum2/drums/wavedisplay;->oldY:I

    .line 202
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 206
    move/from16 v17, v16

    .line 210
    .local v17, index2:I
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->jumpfactor:I

    add-int v18, v17, v1

    .line 212
    .local v18, indexend:I
    move/from16 v0, v18

    if-le v0, v10, :cond_6

    sub-int v18, v10, v16

    .line 215
    :cond_6
    const/16 v24, 0x0

    .line 216
    .local v24, minpoint:I
    const/16 v22, 0x0

    .line 219
    .local v22, maxpoint:I
    const/16 v25, 0x0

    .line 220
    .local v25, mintouched:Z
    const/16 v23, 0x0

    .line 222
    .local v23, maxtouched:Z
    move/from16 v7, v17

    .local v7, c:I
    :goto_2
    move/from16 v0, v18

    if-lt v7, v0, :cond_9

    .line 248
    move/from16 v0, v24

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/wavedisplay;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v13

    add-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v24, v0

    .line 249
    move/from16 v0, v22

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/wavedisplay;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v13

    add-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v22, v0

    .line 251
    if-eqz v25, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    int-to-float v4, v1

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    :cond_7
    if-eqz v23, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/wavedisplay;->oldX:I

    int-to-float v4, v1

    move/from16 v0, v22

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/wavedisplay;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    .end local v7           #c:I
    .end local v11           #datapoint:I
    .end local v17           #index2:I
    .end local v18           #indexend:I
    .end local v22           #maxpoint:I
    .end local v23           #maxtouched:Z
    .end local v24           #minpoint:I
    .end local v25           #mintouched:Z
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 225
    .restart local v7       #c:I
    .restart local v11       #datapoint:I
    .restart local v17       #index2:I
    .restart local v18       #indexend:I
    .restart local v22       #maxpoint:I
    .restart local v23       #maxtouched:Z
    .restart local v24       #minpoint:I
    .restart local v25       #mintouched:Z
    :cond_9
    if-ge v7, v10, :cond_b

    .line 228
    aget-short v1, v9, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    neg-int v12, v1

    .line 230
    .local v12, datapoint2:I
    move/from16 v0, v24

    if-ge v12, v0, :cond_a

    .line 232
    const/16 v25, 0x1

    .line 233
    move/from16 v24, v12

    .line 235
    :cond_a
    move/from16 v0, v22

    if-le v12, v0, :cond_b

    .line 237
    const/16 v23, 0x1

    .line 238
    move/from16 v22, v12

    .line 222
    .end local v12           #datapoint2:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 310
    .end local v7           #c:I
    .end local v8           #currentremainder:F
    .end local v9           #data:[S
    .end local v10           #datalen:I
    .end local v11           #datapoint:I
    .end local v13           #halfHeight:I
    .end local v14           #halfWidth:I
    .end local v15           #i:I
    .end local v16           #index:I
    .end local v17           #index2:I
    .end local v18           #indexend:I
    .end local v19           #jumpfactorfloat:F
    .end local v20           #jumpfactorremainder:F
    .end local v21           #lastindex:I
    .end local v22           #maxpoint:I
    .end local v23           #maxtouched:Z
    .end local v24           #minpoint:I
    .end local v25           #mintouched:Z
    .end local v26           #picheight:I
    .end local v27           #picwidth:I
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, action:I
    if-nez v0, :cond_0

    .line 50
    iget-object v1, p0, Lelectrum2/drums/wavedisplay;->temppaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lelectrum2/drums/wavedisplay;->selectpaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 55
    :cond_0
    if-ne v0, v2, :cond_1

    .line 57
    iget-object v1, p0, Lelectrum2/drums/wavedisplay;->backgroundpaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lelectrum2/drums/wavedisplay;->selectpaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lelectrum2/drums/wavedisplay;->invalidate()V

    .line 62
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    return v2
.end method
