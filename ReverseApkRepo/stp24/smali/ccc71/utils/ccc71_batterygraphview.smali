.class public Lccc71/utils/ccc71_batterygraphview;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/x;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field private static u:Lccc71/utils/w;


# instance fields
.field public d:Ljava/util/HashMap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:Ljava/util/Date;

.field private s:Ljava/lang/String;

.field private t:Landroid/graphics/Paint;

.field private v:Lccc71/utils/v;

.field private w:F

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x28

    sput v0, Lccc71/utils/ccc71_batterygraphview;->a:I

    .line 27
    const/16 v0, 0xd

    sput v0, Lccc71/utils/ccc71_batterygraphview;->b:I

    .line 28
    const/16 v0, 0xc

    sput v0, Lccc71/utils/ccc71_batterygraphview;->c:I

    .line 49
    new-instance v0, Lccc71/utils/w;

    invoke-direct {v0}, Lccc71/utils/w;-><init>()V

    sput-object v0, Lccc71/utils/ccc71_batterygraphview;->u:Lccc71/utils/w;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    .line 41
    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    .line 42
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    .line 45
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->r:Ljava/util/Date;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    .line 50
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->v:Lccc71/utils/v;

    .line 51
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->w:F

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 61
    sget v1, Lccc71/utils/ccc71_batterygraphview;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    .line 62
    sget v1, Lccc71/utils/ccc71_batterygraphview;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->g:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    .line 41
    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    .line 42
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    .line 45
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->r:Ljava/util/Date;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    .line 48
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    .line 50
    iput-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->v:Lccc71/utils/v;

    .line 51
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->w:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 70
    sget v1, Lccc71/utils/ccc71_batterygraphview;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    .line 71
    sget v1, Lccc71/utils/ccc71_batterygraphview;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->g:I

    .line 72
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    return v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    .line 171
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    return v0
.end method

.method public final b(F)F
    .locals 3
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    iget v2, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v1, v2

    div-float v1, p1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_batterygraphview;->c(F)F

    move-result v0

    return v0
.end method

.method public final c(F)F
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    iput p1, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    .line 192
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

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

    .line 195
    :cond_0
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 196
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccc71/utils/ccc71_batterygraphview;->invalidate()V

    .line 202
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    return v0

    .line 197
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    iget v2, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v2, v2

    iget v3, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    iget v4, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 198
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    iget v3, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->o:F

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->p:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    .line 482
    return-void
.end method

.method public final d()Lccc71/utils/v;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->v:Lccc71/utils/v;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter

    .prologue
    .line 244
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    .line 248
    if-nez v11, :cond_0

    .line 451
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_batterygraphview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v1

    .line 256
    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    int-to-float v1, v1

    move v8, v1

    .line 257
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_batterygraphview;->g:I

    move/from16 v18, v0

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_batterygraphview;->i:I

    move/from16 v19, v0

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lccc71/utils/ccc71_batterygraphview;->h:I

    move/from16 v20, v0

    .line 260
    move-object/from16 v0, p0

    iget v10, v0, Lccc71/utils/ccc71_batterygraphview;->j:I

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->e:I

    .line 262
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_batterygraphview;->f:I

    .line 264
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget v1, v1, Lccc71/pmw/b/t;->a:I

    move v9, v1

    .line 266
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_batterygraphview;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 267
    if-eqz v1, :cond_1

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 270
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    new-instance v1, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const v4, -0xbfbfc0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    add-int/lit8 v6, v2, -0x2

    int-to-float v6, v6

    add-int/lit8 v7, v3, -0x2

    int-to-float v7, v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 281
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const v4, -0xefeff0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v4, 0x4000

    const/high16 v5, 0x4000

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 284
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const v2, 0x60ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    move/from16 v0, v18

    int-to-float v2, v0

    int-to-float v3, v10

    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->n:F

    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_batterygraphview;->getContext()Landroid/content/Context;

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->p:I

    const/16 v3, 0x3c

    if-gt v1, v3, :cond_9

    const/16 v1, 0x12c

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-int v2, v19, v18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->q:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const v2, 0x40ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->q:I

    if-eqz v1, :cond_2

    .line 300
    move/from16 v0, v19

    int-to-float v2, v0

    :goto_4
    move/from16 v0, v18

    int-to-float v1, v0

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_b

    .line 308
    :cond_2
    sub-int v1, v10, v20

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float v7, v1, v2

    .line 309
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_3

    .line 311
    move/from16 v0, v20

    int-to-float v3, v0

    :goto_5
    int-to-float v1, v10

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_c

    .line 317
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 318
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v18, v19

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    add-int/2addr v1, v10

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->m:F

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v21, v0

    .line 334
    const v16, 0x7fffffff

    .line 335
    const/16 v17, 0x0

    .line 336
    :try_start_0
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 359
    const/16 v1, -0x102

    if-ne v9, v1, :cond_11

    div-int/lit8 v1, v17, 0xa

    :goto_7
    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 360
    const/16 v1, -0x102

    if-ne v9, v1, :cond_12

    div-int/lit8 v1, v16, 0xa

    :goto_8
    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 364
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v18

    int-to-float v5, v0

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    add-int/lit8 v1, v20, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 366
    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v18

    int-to-float v2, v0

    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    sub-float v5, v1, v2

    add-int/lit8 v1, v10, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 368
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 419
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd|HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 422
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 423
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_batterygraphview;->r:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_batterygraphview;->r:Ljava/util/Date;

    .line 427
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 428
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_batterygraphview;->q:I

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 430
    :cond_6
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_batterygraphview;->o:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_batterygraphview;->p:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 431
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 432
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 435
    const/16 v4, 0xd

    move/from16 v0, v21

    neg-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_batterygraphview;->p:I

    mul-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 436
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 438
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 443
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    int-to-float v5, v0

    sub-float/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    add-int/2addr v1, v10

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 444
    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    add-int/2addr v1, v10

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 256
    :cond_7
    const/high16 v1, 0x3f40

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->k:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move v8, v1

    goto/16 :goto_1

    .line 264
    :cond_8
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_2

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->p:I

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_a

    const/16 v1, 0x708

    goto/16 :goto_3

    :cond_a
    const/16 v1, 0xe10

    goto/16 :goto_3

    .line 302
    :cond_b
    move/from16 v0, v20

    int-to-float v3, v0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 300
    sub-float/2addr v2, v7

    goto/16 :goto_4

    .line 313
    :cond_c
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 311
    add-float/2addr v3, v7

    goto/16 :goto_5

    .line 338
    :cond_d
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccc71/pmw/b/t;

    move-object v2, v0

    .line 340
    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v1, v21

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_batterygraphview;->o:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v1, v3

    float-to-int v4, v1

    .line 341
    if-gez v4, :cond_e

    .line 342
    const/4 v4, 0x0

    .line 343
    :cond_e
    add-int v1, v4, v21

    add-int/lit8 v1, v1, 0x1

    .line 344
    iget-object v3, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v1, v3, :cond_1e

    .line 345
    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v1

    :goto_9
    move v5, v4

    move/from16 v4, v16

    .line 347
    :goto_a
    if-lt v5, v3, :cond_f

    move/from16 v16, v4

    goto/16 :goto_6

    .line 349
    :cond_f
    iget-object v1, v2, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    move/from16 v0, v17

    if-le v1, v0, :cond_10

    move/from16 v17, v1

    .line 352
    :cond_10
    if-ge v1, v4, :cond_1d

    .line 347
    :goto_b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    goto :goto_a

    :cond_11
    move/from16 v1, v17

    .line 359
    goto/16 :goto_7

    :cond_12
    move/from16 v1, v16

    .line 360
    goto/16 :goto_8

    .line 370
    :cond_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lccc71/pmw/b/t;

    move-object v7, v0

    .line 371
    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 373
    iget v1, v7, Lccc71/pmw/b/t;->a:I

    const/16 v2, -0x102

    if-ne v1, v2, :cond_15

    const v1, -0xdf00e0

    move v13, v1

    .line 374
    :goto_c
    iget v1, v7, Lccc71/pmw/b/t;->a:I

    const/16 v2, -0x102

    if-ne v1, v2, :cond_16

    const v1, -0xdfe0

    move v12, v1

    .line 376
    :goto_d
    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v1, v21

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->o:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 377
    if-gtz v1, :cond_1c

    .line 378
    const/4 v1, 0x1

    move v11, v1

    .line 379
    :goto_e
    add-int v1, v11, v21

    .line 380
    iget-object v2, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1b

    .line 381
    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v9, v1

    .line 382
    :goto_f
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lccc71/utils/ccc71_batterygraphview;->x:I

    .line 383
    move-object/from16 v0, p0

    iput v9, v0, Lccc71/utils/ccc71_batterygraphview;->y:I

    .line 384
    sub-int v1, v9, v11

    sub-int v23, v21, v1

    .line 386
    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    move/from16 v0, v16

    int-to-float v2, v0

    sub-float/2addr v1, v2

    sub-int v2, v10, v20

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, v17, v16

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 387
    if-le v1, v10, :cond_17

    move v1, v10

    :cond_14
    :goto_10
    move v14, v11

    move v3, v1

    .line 392
    :goto_11
    if-ge v14, v9, :cond_5

    .line 394
    iget-object v1, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    move/from16 v0, v16

    int-to-float v2, v0

    sub-float/2addr v1, v2

    sub-int v2, v10, v20

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, v17, v16

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v15, v1

    .line 395
    if-gt v15, v10, :cond_1a

    if-ltz v15, :cond_1a

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    if-ge v15, v3, :cond_18

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    :goto_12
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->m:F

    add-int v2, v23, v14

    sub-int/2addr v2, v11

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v1, v2

    move/from16 v0, v18

    int-to-float v2, v0

    add-float/2addr v2, v1

    sub-int v1, v10, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_batterygraphview;->m:F

    add-int v4, v23, v14

    sub-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_batterygraphview;->n:F

    mul-float/2addr v1, v4

    move/from16 v0, v18

    int-to-float v4, v0

    add-float/2addr v4, v1

    sub-int v1, v10, v15

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 392
    :goto_13
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move v3, v15

    goto :goto_11

    .line 373
    :cond_15
    const v1, -0xdfe0

    move v13, v1

    goto/16 :goto_c

    .line 374
    :cond_16
    const v1, -0xdf00e0

    move v12, v1

    goto/16 :goto_d

    .line 389
    :cond_17
    if-gez v1, :cond_14

    .line 390
    const/4 v1, 0x0

    goto :goto_10

    .line 400
    :cond_18
    if-le v15, v3, :cond_19

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12

    .line 403
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_batterygraphview;->t:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_12

    .line 409
    :cond_1a
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data error for id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v7, Lccc71/pmw/b/t;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_13

    :cond_1b
    move v9, v1

    goto/16 :goto_f

    :cond_1c
    move v11, v1

    goto/16 :goto_e

    :cond_1d
    move v1, v4

    goto/16 :goto_b

    :cond_1e
    move v3, v1

    goto/16 :goto_9
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iput p1, p0, Lccc71/utils/ccc71_batterygraphview;->e:I

    .line 468
    iput p2, p0, Lccc71/utils/ccc71_batterygraphview;->f:I

    .line 469
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->h:I

    .line 470
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->e:I

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->i:I

    .line 471
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->f:I

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->k:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->j:I

    .line 473
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->i:I

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    .line 475
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->p:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_batterygraphview;->m:F

    .line 476
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 477
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 456
    sget-object v0, Lccc71/utils/ccc71_batterygraphview;->u:Lccc71/utils/w;

    invoke-virtual {v0, p0, p1, p0}, Lccc71/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;Lccc71/utils/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    iget v1, p1, Lccc71/pmw/b/t;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget-object v1, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/Date;)V

    .line 221
    return-void
.end method

.method public setData(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    .line 233
    iput p2, p0, Lccc71/utils/ccc71_batterygraphview;->p:I

    .line 234
    iput p3, p0, Lccc71/utils/ccc71_batterygraphview;->q:I

    .line 235
    iput-object p4, p0, Lccc71/utils/ccc71_batterygraphview;->s:Ljava/lang/String;

    .line 236
    iput-object p5, p0, Lccc71/utils/ccc71_batterygraphview;->r:Ljava/util/Date;

    .line 238
    invoke-virtual {p0}, Lccc71/utils/ccc71_batterygraphview;->invalidate()V

    .line 239
    return-void
.end method

.method public setHideLevel(F)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->w:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 209
    iput p1, p0, Lccc71/utils/ccc71_batterygraphview;->w:F

    .line 210
    invoke-virtual {p0}, Lccc71/utils/ccc71_batterygraphview;->invalidate()V

    .line 212
    :cond_0
    return-void
.end method

.method public setOnEvent(Lccc71/utils/v;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lccc71/utils/ccc71_batterygraphview;->v:Lccc71/utils/v;

    .line 487
    return-void
.end method

.method public setZoomFactor(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/high16 v2, 0x3f80

    .line 148
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v0, v0

    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 151
    iput p1, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    .line 152
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 154
    iput v2, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    .line 161
    :cond_0
    :goto_0
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->l:I

    int-to-float v1, v1

    iget v2, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 162
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lccc71/utils/ccc71_batterygraphview;->b(F)F

    .line 164
    invoke-virtual {p0}, Lccc71/utils/ccc71_batterygraphview;->invalidate()V

    .line 166
    :cond_1
    return-void

    .line 156
    :cond_2
    iget v1, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 158
    iput v3, p0, Lccc71/utils/ccc71_batterygraphview;->n:F

    goto :goto_0
.end method
