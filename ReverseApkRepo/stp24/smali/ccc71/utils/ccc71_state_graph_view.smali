.class public Lccc71/utils/ccc71_state_graph_view;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/x;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field private static s:Lccc71/utils/w;


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Paint;

.field private r:Ljava/util/HashMap;

.field private t:Lccc71/utils/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x28

    sput v0, Lccc71/utils/ccc71_state_graph_view;->a:I

    .line 23
    const/16 v0, 0xd

    sput v0, Lccc71/utils/ccc71_state_graph_view;->b:I

    .line 24
    const/16 v0, 0xc

    sput v0, Lccc71/utils/ccc71_state_graph_view;->c:I

    .line 43
    new-instance v0, Lccc71/utils/w;

    invoke-direct {v0}, Lccc71/utils/w;-><init>()V

    sput-object v0, Lccc71/utils/ccc71_state_graph_view;->s:Lccc71/utils/w;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    .line 37
    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    sget v1, Lccc71/utils/ccc71_state_graph_view;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_state_graph_view;->j:I

    .line 55
    sget v1, Lccc71/utils/ccc71_state_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->f:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    .line 37
    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 63
    sget v1, Lccc71/utils/ccc71_state_graph_view;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_state_graph_view;->j:I

    .line 64
    sget v1, Lccc71/utils/ccc71_state_graph_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->f:I

    .line 65
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    return v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    .line 159
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    return v0
.end method

.method public final b(F)F
    .locals 3
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    iget v2, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v1, v2

    div-float v1, p1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_state_graph_view;->c(F)F

    move-result v0

    return v0
.end method

.method public final c(F)F
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 178
    iput p1, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget-object v0, v0, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    :cond_0
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 184
    iput v2, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    .line 188
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->invalidate()V

    .line 190
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    return v0

    .line 185
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    iget v2, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v2, v2

    iget v3, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    iget v4, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 186
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    iget v3, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->n:F

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    .line 386
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 387
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->l:F

    .line 388
    :cond_0
    return-void
.end method

.method public final d()Lccc71/utils/v;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    .line 220
    if-nez v3, :cond_1

    .line 319
    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_state_graph_view;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v4

    .line 228
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 229
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v1, v1

    move v9, v1

    .line 230
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lccc71/utils/ccc71_state_graph_view;->f:I

    .line 231
    move-object/from16 v0, p0

    iget v15, v0, Lccc71/utils/ccc71_state_graph_view;->h:I

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_state_graph_view;->g:I

    move/from16 v16, v0

    .line 233
    move-object/from16 v0, p0

    iget v10, v0, Lccc71/utils/ccc71_state_graph_view;->i:I

    .line 234
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->d:I

    .line 235
    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    .line 237
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_state_graph_view;->getDrawingCacheBackgroundColor()I

    move-result v5

    .line 238
    if-eqz v5, :cond_2

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v6, 0x3fc0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    add-int/lit8 v11, v2, -0x1

    int-to-float v11, v11

    invoke-direct {v5, v6, v7, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const v7, -0x7f7f80

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const/high16 v6, 0x40a0

    const/high16 v7, 0x40a0

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    add-int/lit8 v8, v1, -0x2

    int-to-float v8, v8

    add-int/lit8 v11, v2, -0x2

    int-to-float v11, v11

    invoke-direct {v5, v6, v7, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    const/high16 v6, 0x40a0

    const/high16 v7, 0x40a0

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const v6, -0xefeff0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v6, 0x4000

    const/high16 v7, 0x4000

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    invoke-direct {v5, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 255
    const/high16 v1, 0x40a0

    const/high16 v2, 0x40a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->l:F

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v2, v5

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    const/4 v2, 0x1

    .line 264
    if-eqz v4, :cond_4

    add-int/lit8 v1, v10, 0x3

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    shr-int/lit8 v5, v5, 0x1

    sub-int v18, v1, v5

    .line 265
    if-eqz v4, :cond_5

    move v1, v10

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v19, v1, v4

    .line 266
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move v11, v2

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 310
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->m:F

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_state_graph_view;->getContext()Landroid/content/Context;

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->o:I

    const/16 v3, 0x3c

    if-gt v1, v3, :cond_9

    const/16 v1, 0x12c

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-int v2, v15, v14

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->p:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const v2, 0x40ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->p:I

    if-eqz v1, :cond_0

    .line 314
    int-to-float v2, v15

    :goto_5
    int-to-float v1, v14

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 316
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 314
    sub-float/2addr v2, v7

    goto :goto_5

    .line 229
    :cond_3
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    move v9, v1

    goto/16 :goto_0

    .line 264
    :cond_4
    add-int/lit8 v1, v10, 0x7

    goto/16 :goto_1

    .line 265
    :cond_5
    add-int/lit8 v1, v10, 0x2

    goto :goto_2

    .line 268
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lccc71/pmw/b/t;

    .line 269
    add-int/lit8 v1, v11, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v0, v1

    move/from16 v21, v0

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x3f40

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    iget-object v2, v8, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 275
    iget-object v2, v8, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v8, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v5, v14

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    sub-int v1, v18, v21

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x3ec0

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    int-to-float v2, v14

    sub-int v1, v19, v21

    int-to-float v3, v1

    int-to-float v4, v15

    sub-int v1, v19, v21

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x3ec0

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    int-to-float v2, v14

    sub-int v1, v19, v21

    int-to-float v3, v1

    int-to-float v4, v15

    sub-int v1, v19, v21

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    iget-object v1, v8, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 286
    iget-object v1, v8, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v1, v17

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->n:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 287
    if-gtz v1, :cond_c

    .line 288
    const/4 v1, 0x1

    move v7, v1

    .line 289
    :goto_6
    add-int v1, v7, v17

    .line 290
    iget-object v2, v8, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_b

    .line 291
    iget-object v1, v8, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v12, v1

    .line 292
    :goto_7
    sub-int v1, v12, v7

    sub-int v22, v17, v1

    move v13, v7

    .line 294
    :goto_8
    if-lt v13, v12, :cond_8

    .line 303
    :cond_7
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_3

    .line 296
    :cond_8
    iget-object v1, v8, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    iget v3, v8, Lccc71/pmw/b/t;->a:I

    invoke-static {v3, v1}, Lccc71/pmw/b/n;->a(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    add-int v1, v22, v13

    sub-int/2addr v1, v7

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->l:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v1, v2

    int-to-float v2, v14

    add-float/2addr v2, v1

    sub-int v1, v19, v21

    int-to-float v3, v1

    .line 299
    add-int v1, v22, v13

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_state_graph_view;->l:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_state_graph_view;->m:F

    mul-float/2addr v1, v4

    int-to-float v4, v14

    add-float/2addr v4, v1

    sub-int v1, v19, v21

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_state_graph_view;->q:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 298
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 294
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_8

    .line 310
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_state_graph_view;->o:I

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_a

    const/16 v1, 0x708

    goto/16 :goto_4

    :cond_a
    const/16 v1, 0xe10

    goto/16 :goto_4

    :cond_b
    move v12, v1

    goto :goto_7

    :cond_c
    move v7, v1

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 354
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 356
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 359
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 380
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v1, v0}, Lccc71/utils/ccc71_state_graph_view;->setMeasuredDimension(II)V

    .line 381
    return-void

    .line 370
    :sswitch_1
    iget-object v2, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 372
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v0

    .line 373
    iget-object v2, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 374
    if-eqz v0, :cond_1

    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v0, v0

    .line 375
    :goto_1
    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 374
    :cond_1
    const/high16 v0, 0x3f40

    iget v3, p0, Lccc71/utils/ccc71_state_graph_view;->j:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    goto :goto_1

    .line 359
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput p1, p0, Lccc71/utils/ccc71_state_graph_view;->d:I

    .line 336
    iput p2, p0, Lccc71/utils/ccc71_state_graph_view;->e:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->g:I

    .line 338
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->d:I

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->j:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->h:I

    .line 339
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->e:I

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->i:I

    .line 341
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->h:I

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    .line 343
    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->c()V

    .line 344
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    invoke-interface {v0, p0, v1}, Lccc71/utils/v;->a(Landroid/view/View;F)V

    .line 347
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 348
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 324
    sget-object v0, Lccc71/utils/ccc71_state_graph_view;->s:Lccc71/utils/w;

    invoke-virtual {v0, p0, p1, p0}, Lccc71/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;Lccc71/utils/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnEvent(Lccc71/utils/v;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lccc71/utils/ccc71_state_graph_view;->t:Lccc71/utils/v;

    .line 393
    return-void
.end method

.method public setStateData(Ljava/util/HashMap;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, -0x80

    .line 195
    iput-object p1, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    .line 196
    iput p3, p0, Lccc71/utils/ccc71_state_graph_view;->p:I

    .line 197
    iput p2, p0, Lccc71/utils/ccc71_state_graph_view;->o:I

    .line 199
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    const/16 v1, -0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lccc71/utils/ccc71_state_graph_view;->r:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 204
    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->invalidate()V

    .line 205
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/high16 v2, 0x3f80

    .line 136
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 138
    iget v0, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 139
    iput p1, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    .line 140
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 142
    iput v2, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    .line 149
    :cond_0
    :goto_0
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->k:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 150
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_state_graph_view;->b(F)F

    .line 152
    invoke-virtual {p0}, Lccc71/utils/ccc71_state_graph_view;->invalidate()V

    .line 154
    :cond_1
    return-void

    .line 144
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 146
    iput v3, p0, Lccc71/utils/ccc71_state_graph_view;->m:F

    goto :goto_0
.end method
