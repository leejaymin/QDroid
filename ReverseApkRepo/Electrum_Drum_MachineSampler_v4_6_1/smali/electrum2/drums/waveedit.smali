.class public Lelectrum2/drums/waveedit;
.super Landroid/widget/ImageView;
.source "waveedit.java"


# instance fields
.field public EditEndPoint:Z

.field public EditStartPoint:Z

.field public EndPoint:I

.field StartMoving:Z

.field public StartPoint:I

.field backgroundpaint:Landroid/graphics/Paint;

.field private borderpaint:Landroid/graphics/Paint;

.field boxpaint:Landroid/graphics/Paint;

.field data:[S

.field datalen:I

.field displayoffset:I

.field jumpfactor:I

.field jumpfactorfloat:F

.field linepaint:Landroid/graphics/Paint;

.field oldMouseX:I

.field oldX:I

.field oldY:I

.field scaleval:D

.field startpaint:Landroid/graphics/Paint;

.field widthscale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x96

    const/16 v4, 0x50

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v3, p0, Lelectrum2/drums/waveedit;->widthscale:F

    .line 35
    iput v0, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    .line 36
    iput-boolean v0, p0, Lelectrum2/drums/waveedit;->StartMoving:Z

    .line 38
    iput v0, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    .line 40
    iput v0, p0, Lelectrum2/drums/waveedit;->StartPoint:I

    .line 41
    iput v0, p0, Lelectrum2/drums/waveedit;->EndPoint:I

    .line 43
    iput-boolean v0, p0, Lelectrum2/drums/waveedit;->EditStartPoint:Z

    .line 44
    iput-boolean v0, p0, Lelectrum2/drums/waveedit;->EditEndPoint:Z

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xfa

    invoke-static {v1, v2, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/waveedit;->backgroundpaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lelectrum2/drums/waveedit;->backgroundpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lelectrum2/drums/waveedit;->backgroundpaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/waveedit;->startpaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lelectrum2/drums/waveedit;->startpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lelectrum2/drums/waveedit;->startpaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/waveedit;->boxpaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lelectrum2/drums/waveedit;->boxpaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lelectrum2/drums/waveedit;->boxpaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    const/16 v2, 0xa0

    invoke-static {v5, v1, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->startpos:I

    iput v0, p0, Lelectrum2/drums/waveedit;->StartPoint:I

    .line 109
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplelen:I

    iput v0, p0, Lelectrum2/drums/waveedit;->EndPoint:I

    .line 115
    :cond_0
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v0, v0, Lelectrum2/drums/soundObj;->sounddata:[S

    iput-object v0, p0, Lelectrum2/drums/waveedit;->data:[S

    .line 118
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v0, p0, Lelectrum2/drums/waveedit;->datalen:I

    .line 121
    return-void
.end method


# virtual methods
.method public ZoomIn()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lelectrum2/drums/waveedit;->widthscale:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/waveedit;->widthscale:F

    .line 66
    invoke-virtual {p0}, Lelectrum2/drums/waveedit;->invalidate()V

    .line 69
    return-void
.end method

.method public ZoomOut()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 53
    iget v0, p0, Lelectrum2/drums/waveedit;->widthscale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 55
    iget v0, p0, Lelectrum2/drums/waveedit;->widthscale:F

    sub-float/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/waveedit;->widthscale:F

    .line 56
    invoke-virtual {p0}, Lelectrum2/drums/waveedit;->invalidate()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v24

    .line 132
    .local v24, picwidth:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v23

    .line 133
    .local v23, picheight:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v1

    div-int/lit8 v12, v1, 0x2

    .line 134
    .local v12, halfWidth:I
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v1

    div-int/lit8 v11, v1, 0x2

    .line 136
    .local v11, halfHeight:I
    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    if-eqz v1, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/waveedit;->data:[S

    if-eqz v1, :cond_1

    .line 142
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->backgroundpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 144
    move-object/from16 v0, p0

    iput v11, v0, Lelectrum2/drums/waveedit;->oldY:I

    .line 145
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    .line 147
    div-int/lit8 v1, v23, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x4700

    div-float/2addr v1, v2

    float-to-double v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lelectrum2/drums/waveedit;->scaleval:D

    .line 149
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    int-to-float v1, v1

    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lelectrum2/drums/waveedit;->widthscale:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    .line 152
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    int-to-float v1, v1

    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lelectrum2/drums/waveedit;->widthscale:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    .line 154
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    int-to-float v2, v2

    sub-float v17, v1, v2

    .line 158
    .local v17, jumpfactorremainder:F
    const/4 v8, 0x0

    .line 160
    .local v8, currentremainder:F
    const/16 v18, 0x0

    .line 163
    .local v18, lastindex:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v24

    if-lt v13, v0, :cond_3

    .line 260
    .end local v8           #currentremainder:F
    .end local v13           #i:I
    .end local v17           #jumpfactorremainder:F
    .end local v18           #lastindex:I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->StartPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->displayoffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v26, v0

    .line 262
    .local v26, startx:I
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->startpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->EndPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->displayoffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v25, v0

    .line 267
    .local v25, start2:I
    move/from16 v0, v25

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->startpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->EndPoint:I

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->StartPoint:I

    if-le v1, v2, :cond_2

    .line 274
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->boxpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 284
    .end local v25           #start2:I
    .end local v26           #startx:I
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lelectrum2/drums/waveedit;->getHeight()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->borderpaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    return-void

    .line 166
    .restart local v8       #currentremainder:F
    .restart local v13       #i:I
    .restart local v17       #jumpfactorremainder:F
    .restart local v18       #lastindex:I
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    mul-int/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lelectrum2/drums/waveedit;->displayoffset:I

    add-int/2addr v1, v2

    add-int v14, v1, v18

    .line 168
    .local v14, index:I
    const/high16 v1, 0x3f80

    cmpl-float v1, v8, v1

    if-lez v1, :cond_4

    .line 170
    const/high16 v1, 0x3f80

    sub-float/2addr v8, v1

    .line 171
    add-int/lit8 v14, v14, 0x1

    .line 172
    add-int/lit8 v18, v18, 0x1

    .line 176
    :cond_4
    add-float v8, v8, v17

    .line 179
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    if-ge v14, v1, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/waveedit;->data:[S

    aget-short v1, v1, v14

    neg-int v1, v1

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/waveedit;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v11

    add-double/2addr v1, v3

    double-to-int v9, v1

    .line 184
    .local v9, datapoint:I
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldY:I

    int-to-float v3, v1

    int-to-float v4, v13

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    move-object/from16 v0, p0

    iput v13, v0, Lelectrum2/drums/waveedit;->oldX:I

    .line 187
    move-object/from16 v0, p0

    iput v9, v0, Lelectrum2/drums/waveedit;->oldY:I

    .line 189
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 193
    move v15, v14

    .line 196
    .local v15, index2:I
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->jumpfactor:I

    add-int v16, v15, v1

    .line 198
    .local v16, indexend:I
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    move/from16 v0, v16

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    sub-int v16, v1, v14

    .line 201
    :cond_5
    const/16 v21, 0x0

    .line 202
    .local v21, minpoint:I
    const/16 v19, 0x0

    .line 205
    .local v19, maxpoint:I
    const/16 v22, 0x0

    .line 206
    .local v22, mintouched:Z
    const/16 v20, 0x0

    .line 208
    .local v20, maxtouched:Z
    move v7, v15

    .local v7, c:I
    :goto_1
    move/from16 v0, v16

    if-lt v7, v0, :cond_8

    .line 234
    move/from16 v0, v21

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/waveedit;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v11

    add-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v21, v0

    .line 235
    move/from16 v0, v19

    int-to-double v1, v0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lelectrum2/drums/waveedit;->scaleval:D

    mul-double/2addr v1, v3

    int-to-double v3, v11

    add-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v19, v0

    .line 237
    if-eqz v22, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    int-to-float v4, v1

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    :cond_6
    if-eqz v20, :cond_7

    .line 243
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->oldX:I

    int-to-float v4, v1

    move/from16 v0, v19

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lelectrum2/drums/waveedit;->linepaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    .end local v7           #c:I
    .end local v9           #datapoint:I
    .end local v15           #index2:I
    .end local v16           #indexend:I
    .end local v19           #maxpoint:I
    .end local v20           #maxtouched:Z
    .end local v21           #minpoint:I
    .end local v22           #mintouched:Z
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 211
    .restart local v7       #c:I
    .restart local v9       #datapoint:I
    .restart local v15       #index2:I
    .restart local v16       #indexend:I
    .restart local v19       #maxpoint:I
    .restart local v20       #maxtouched:Z
    .restart local v21       #minpoint:I
    .restart local v22       #mintouched:Z
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lelectrum2/drums/waveedit;->datalen:I

    if-ge v7, v1, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lelectrum2/drums/waveedit;->data:[S

    aget-short v1, v1, v7

    neg-int v10, v1

    .line 216
    .local v10, datapoint2:I
    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    .line 218
    const/16 v22, 0x1

    .line 219
    move/from16 v21, v10

    .line 221
    :cond_9
    move/from16 v0, v19

    if-le v10, v0, :cond_a

    .line 223
    const/16 v20, 0x1

    .line 224
    move/from16 v19, v10

    .line 208
    .end local v10           #datapoint2:I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 304
    .local v0, action:I
    if-nez v0, :cond_0

    .line 306
    iput-boolean v7, p0, Lelectrum2/drums/waveedit;->StartMoving:Z

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    .line 314
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 317
    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->StartMoving:Z

    if-eqz v3, :cond_7

    .line 320
    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->EditStartPoint:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->EditEndPoint:Z

    if-nez v3, :cond_3

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    sub-int v1, v3, v4

    .line 327
    .local v1, diff:I
    iget v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    int-to-float v4, v1

    iget v5, p0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    .line 329
    iget v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    if-gez v3, :cond_1

    iput v6, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    .line 333
    .end local v1           #diff:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 335
    iget v3, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 338
    .restart local v1       #diff:I
    iget v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    int-to-float v4, v1

    iget v5, p0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    .line 340
    iget v3, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    if-gez v3, :cond_2

    iput v6, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    .line 344
    .end local v1           #diff:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lelectrum2/drums/waveedit;->oldMouseX:I

    .line 346
    invoke-virtual {p0}, Lelectrum2/drums/waveedit;->invalidate()V

    .line 350
    :cond_3
    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->EditStartPoint:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->EditEndPoint:Z

    if-eqz v3, :cond_7

    .line 354
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lelectrum2/drums/waveedit;->jumpfactorfloat:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lelectrum2/drums/waveedit;->displayoffset:I

    add-int v2, v3, v4

    .line 356
    .local v2, sampleval:I
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 357
    :cond_5
    sget-object v3, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v3, v3, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v2, v3, :cond_6

    sget-object v3, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v3, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 360
    :cond_6
    iget-boolean v3, p0, Lelectrum2/drums/waveedit;->EditStartPoint:Z

    if-eqz v3, :cond_9

    .line 362
    iput v2, p0, Lelectrum2/drums/waveedit;->StartPoint:I

    .line 368
    :goto_0
    invoke-virtual {p0}, Lelectrum2/drums/waveedit;->invalidate()V

    .line 378
    .end local v2           #sampleval:I
    :cond_7
    if-ne v0, v7, :cond_8

    .line 380
    iput-boolean v6, p0, Lelectrum2/drums/waveedit;->StartMoving:Z

    .line 381
    iput-boolean v6, p0, Lelectrum2/drums/waveedit;->EditStartPoint:Z

    .line 382
    iput-boolean v6, p0, Lelectrum2/drums/waveedit;->EditEndPoint:Z

    .line 388
    :cond_8
    return v7

    .line 365
    .restart local v2       #sampleval:I
    :cond_9
    iput v2, p0, Lelectrum2/drums/waveedit;->EndPoint:I

    goto :goto_0
.end method
