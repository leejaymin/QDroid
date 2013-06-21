.class public Lccc71/utils/ccc71_ge_view;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static a:I

.field static b:I

.field private static m:Ljava/lang/Object;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:[[I

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/Paint;

.field private u:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x28

    sput v0, Lccc71/utils/ccc71_ge_view;->a:I

    .line 24
    const/16 v0, 0xc

    sput v0, Lccc71/utils/ccc71_ge_view;->b:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/utils/ccc71_ge_view;->m:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lccc71/utils/ccc71_ge_view;->k:I

    .line 41
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->n:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->q:[[I

    .line 47
    iput-boolean v0, p0, Lccc71/utils/ccc71_ge_view;->s:Z

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    .line 50
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lccc71/utils/ccc71_ge_view;->n:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 63
    sget v1, Lccc71/utils/ccc71_ge_view;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_ge_view;->i:I

    .line 64
    sget v1, Lccc71/utils/ccc71_ge_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->e:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lccc71/utils/ccc71_ge_view;->k:I

    .line 41
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->n:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->q:[[I

    .line 47
    iput-boolean v0, p0, Lccc71/utils/ccc71_ge_view;->s:Z

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    .line 50
    iput-object v1, p0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lccc71/utils/ccc71_ge_view;->n:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    sget v1, Lccc71/utils/ccc71_ge_view;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lccc71/utils/ccc71_ge_view;->i:I

    .line 74
    sget v1, Lccc71/utils/ccc71_ge_view;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->e:I

    .line 75
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->r:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    sget-object v2, Lccc71/utils/ccc71_ge_view;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    return-void

    .line 91
    :cond_0
    monitor-exit v2

    .line 97
    invoke-virtual/range {p0 .. p0}, Lccc71/utils/ccc71_ge_view;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->c:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->d:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, -0xbfbfc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->c:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->d:I

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, -0xefeff0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x4000

    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->c:I

    add-int/lit8 v4, v4, -0x3

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->d:I

    add-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    const/high16 v2, 0x40a0

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, 0x60ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 122
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lccc71/utils/ccc71_ge_view;->p:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 128
    const/4 v1, 0x0

    .line 130
    :cond_2
    const/4 v2, 0x0

    .line 131
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->r:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    array-length v4, v3

    .line 134
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_7

    move v8, v2

    .line 147
    :goto_2
    add-int v2, v1, v8

    .line 148
    add-int/2addr v1, v2

    .line 150
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->l:I

    div-int v12, v1, v3

    .line 151
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->l:I

    div-int v9, v2, v1

    .line 153
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->j:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_a

    mul-int/lit8 v1, v9, 0x2

    :goto_3
    int-to-float v1, v1

    div-float v13, v2, v1

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->i:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const-string v2, "100"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 163
    const-string v2, "100"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 165
    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->o:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/utils/ccc71_ge_view;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->e:I

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_ge_view;->g:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_ge_view;->i:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 174
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->k:I

    if-eqz v1, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v13

    const/16 v2, 0xe10

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->l:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v10, v1

    .line 177
    const/4 v1, 0x1

    if-le v10, v1, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, 0x40ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    move v7, v1

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    if-gt v7, v1, :cond_b

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, 0x40ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float v7, v1, v2

    .line 191
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v1, v1

    add-float v3, v1, v7

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_c

    .line 195
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->i:I

    int-to-float v1, v1

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_1b

    .line 196
    const/high16 v1, 0x4000

    mul-float/2addr v1, v7

    move v10, v1

    .line 197
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v1, v1

    add-float/2addr v1, v10

    move v11, v1

    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->i:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v11, v1

    if-ltz v1, :cond_d

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->g:I

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->h:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    sget-object v14, Lccc71/utils/ccc71_ge_view;->m:Ljava/lang/Object;

    monitor-enter v14

    .line 210
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_17

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v11, v1, v12

    .line 216
    if-gtz v11, :cond_e

    .line 217
    const/4 v11, 0x1

    .line 220
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->f:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    move v7, v11

    move v12, v1

    .line 222
    :goto_9
    if-lt v7, v15, :cond_f

    .line 245
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 246
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    array-length v0, v2

    move/from16 v16, v0

    .line 247
    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    move v7, v1

    .line 248
    :goto_b
    const/4 v1, 0x0

    move v10, v1

    :goto_c
    move/from16 v0, v16

    if-lt v10, v0, :cond_15

    .line 208
    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->d:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 281
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd|HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 284
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 285
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 286
    const/16 v2, 0xd

    invoke-virtual {v3, v2, v8}, Ljava/util/Calendar;->add(II)V

    .line 287
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 288
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 291
    const/16 v4, 0xd

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    mul-int/lit8 v9, v9, 0x2

    :cond_6
    neg-int v5, v9

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_ge_view;->l:I

    mul-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 292
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 294
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->i:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/utils/ccc71_ge_view;->i:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 136
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ge v2, v5, :cond_8

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v2, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    .line 139
    move-object/from16 v0, p0

    iput v3, v0, Lccc71/utils/ccc71_ge_view;->r:I

    .line 134
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 145
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->r:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    move v8, v2

    goto/16 :goto_2

    :cond_a
    move v1, v9

    .line 153
    goto/16 :goto_3

    .line 182
    :cond_b
    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    int-to-float v3, v1

    int-to-float v4, v7

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    sub-int v1, v7, v10

    move v7, v1

    goto/16 :goto_4

    .line 193
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->g:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    add-float/2addr v3, v7

    goto/16 :goto_5

    .line 200
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v1, v1

    sub-float/2addr v1, v11

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 201
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 203
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v5, v5

    sub-float v1, v5, v1

    const/high16 v5, 0x4000

    sub-float v5, v1, v5

    const/high16 v1, 0x40a0

    add-float v6, v11, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 198
    add-float v1, v11, v10

    move v11, v1

    goto/16 :goto_7

    .line 218
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v11, v1, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x2

    goto/16 :goto_8

    .line 224
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->f:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit8 v10, v1, 0x64

    .line 225
    if-ne v10, v12, :cond_10

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccc71/utils/ccc71_ge_view;->s:Z

    if-eqz v1, :cond_12

    .line 234
    sub-int v1, v7, v11

    int-to-float v1, v1

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    sub-int/2addr v1, v12

    int-to-float v3, v1

    sub-int v1, v7, v11

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    sub-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    :goto_e
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v12, v10

    goto/16 :goto_9

    .line 227
    :cond_10
    if-le v10, v12, :cond_11

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, -0xdf00e0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_d

    .line 208
    :catchall_1
    move-exception v1

    monitor-exit v14

    throw v1

    .line 230
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    const v2, -0xdfe0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_d

    .line 238
    :cond_12
    sub-int v1, v7, v11

    int-to-float v1, v1

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    sub-int/2addr v1, v12

    int-to-float v3, v1

    .line 239
    sub-int v1, v7, v11

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 238
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 245
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 247
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move v7, v1

    goto/16 :goto_b

    .line 250
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 252
    if-lez v1, :cond_16

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v3, v3, v10

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    sub-int v2, v15, v11

    int-to-float v2, v2

    mul-float/2addr v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->h:I

    sub-int/2addr v3, v12

    int-to-float v3, v3

    sub-int v4, v15, v11

    int-to-float v4, v4

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/utils/ccc71_ge_view;->l:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 248
    :cond_16
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_c

    .line 261
    :cond_17
    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->f:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit8 v11, v1, 0x64

    .line 262
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 263
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    array-length v12, v2

    .line 264
    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->f:I

    move v7, v1

    .line 265
    :goto_10
    const/4 v1, 0x0

    move v10, v1

    :goto_11
    if-ge v10, v12, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 269
    if-lez v1, :cond_18

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/utils/ccc71_ge_view;->q:[[I

    aget-object v3, v3, v10

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/utils/ccc71_ge_view;->h:I

    sub-int/2addr v3, v11

    int-to-float v3, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->l:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/utils/ccc71_ge_view;->e:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/utils/ccc71_ge_view;->t:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    :cond_18
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_11

    .line 262
    :cond_19
    const/4 v1, 0x0

    goto :goto_f

    .line 264
    :cond_1a
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/utils/ccc71_ge_view;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v7, v1

    goto :goto_10

    :cond_1b
    move v10, v7

    goto/16 :goto_6
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iput p1, p0, Lccc71/utils/ccc71_ge_view;->c:I

    .line 335
    iput p2, p0, Lccc71/utils/ccc71_ge_view;->d:I

    .line 336
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->i:I

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->f:I

    .line 337
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->c:I

    iget v1, p0, Lccc71/utils/ccc71_ge_view;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->g:I

    .line 338
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->d:I

    iget v1, p0, Lccc71/utils/ccc71_ge_view;->i:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->h:I

    .line 340
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->g:I

    iget v1, p0, Lccc71/utils/ccc71_ge_view;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/ccc71_ge_view;->j:I

    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 343
    return-void
.end method

.method public setCurves(Z)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-boolean p1, p0, Lccc71/utils/ccc71_ge_view;->s:Z

    .line 320
    return-void
.end method

.method public setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput p3, p0, Lccc71/utils/ccc71_ge_view;->l:I

    .line 307
    iget-object v0, p0, Lccc71/utils/ccc71_ge_view;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_ge_view;->o:Ljava/lang/String;

    .line 309
    sget-object v1, Lccc71/utils/ccc71_ge_view;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iput-object p2, p0, Lccc71/utils/ccc71_ge_view;->u:Ljava/util/ArrayList;

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {p0}, Lccc71/utils/ccc71_ge_view;->invalidate()V

    .line 315
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setEstimates(JI[[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iput-wide p1, p0, Lccc71/utils/ccc71_ge_view;->p:J

    .line 325
    iput p3, p0, Lccc71/utils/ccc71_ge_view;->r:I

    .line 326
    iput-object p4, p0, Lccc71/utils/ccc71_ge_view;->q:[[I

    .line 328
    invoke-virtual {p0}, Lccc71/utils/ccc71_ge_view;->invalidate()V

    .line 329
    return-void
.end method

.method public setVGrid(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lccc71/utils/ccc71_ge_view;->k:I

    if-eq v0, p1, :cond_0

    .line 81
    iput p1, p0, Lccc71/utils/ccc71_ge_view;->k:I

    .line 82
    invoke-virtual {p0}, Lccc71/utils/ccc71_ge_view;->invalidate()V

    .line 84
    :cond_0
    return-void
.end method
