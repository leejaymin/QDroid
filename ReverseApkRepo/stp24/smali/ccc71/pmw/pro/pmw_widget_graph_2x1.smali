.class public Lccc71/pmw/pro/pmw_widget_graph_2x1;
.super Lccc71/pmw/lib/pmw_widget;
.source "SourceFile"


# instance fields
.field protected final p:I

.field protected final q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:Landroid/graphics/Bitmap;

.field protected w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_widget;-><init>()V

    .line 24
    const/16 v0, 0x90

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->p:I

    .line 25
    const/16 v0, 0x48

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->q:I

    .line 30
    iput v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    .line 31
    iput v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->u:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->v:Landroid/graphics/Bitmap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 208
    iget v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 209
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 211
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 212
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->u:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    int-to-float v3, v2

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    int-to-float v3, v3

    iget v4, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 221
    sparse-switch p1, :sswitch_data_0

    move v1, v7

    :goto_0
    if-eqz v1, :cond_4

    .line 223
    const v3, 0x7fffffff

    .line 224
    const/high16 v2, -0x8000

    move v4, v7

    .line 225
    :goto_1
    if-le v4, v10, :cond_1

    .line 233
    if-ne v3, v2, :cond_5

    move v8, v6

    move v6, v7

    .line 241
    :goto_2
    iget v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    :goto_3
    if-le v7, v10, :cond_3

    .line 262
    :cond_0
    return-object v9

    :sswitch_0
    move v1, v6

    .line 221
    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    sub-int v8, v10, v4

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    if-ge v1, v3, :cond_2

    move v3, v1

    .line 230
    :cond_2
    if-le v1, v2, :cond_6

    .line 225
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 244
    :cond_3
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    sub-int v2, v10, v7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v1, v1

    sub-int v2, v6, v8

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 246
    iget v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    add-int/lit8 v4, v7, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    sub-int v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    iget v4, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v4, v11

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 253
    :cond_4
    iget v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 254
    :goto_5
    if-gt v7, v10, :cond_0

    .line 256
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    sub-int v2, v10, v7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    mul-int/2addr v1, v2

    div-int/lit8 v2, v1, 0x64

    .line 258
    iget v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    add-int/lit8 v4, v7, 0x1

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    sub-int v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    iget v4, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    add-int/lit8 v6, v7, 0x1

    mul-int/2addr v4, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    move v6, v2

    move v8, v3

    goto/16 :goto_2

    :cond_6
    move v1, v2

    goto :goto_4

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 39
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->l:I

    .line 40
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->m:I

    .line 42
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->j:I

    .line 43
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->k:I

    .line 45
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    .line 46
    iget v0, p1, Lccc71/pmw/lib/qm;->c:I

    if-nez v0, :cond_1

    .line 48
    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 50
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    .line 58
    :cond_1
    :goto_0
    iget v0, p1, Lccc71/pmw/lib/qm;->j:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(I)V

    .line 59
    iget v0, p1, Lccc71/pmw/lib/qm;->k:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(I)V

    .line 61
    iget v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    const/high16 v1, 0x4310

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    .line 66
    const/high16 v1, 0x4290

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->s:I

    .line 69
    :cond_2
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->n(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->u:I

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    const/high16 v1, 0x4000

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->t:I

    .line 73
    return-void

    .line 54
    :cond_3
    const/high16 v0, -0x100

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    goto :goto_0
.end method

.method protected final a(Lccc71/pmw/lib/qm;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f0901a8

    const v6, 0x7f0901a7

    const/4 v1, 0x0

    const v5, 0x7f0901aa

    .line 78
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f030090

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 82
    const v0, 0x7f090199

    sget-object v3, Lccc71/pmw/pro/pmw_widget_graph_2x1;->j:[[I

    aget-object v3, v3, v1

    iget v4, p1, Lccc71/pmw/lib/qm;->a:I

    aget v3, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    iget v0, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 84
    iget v0, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 86
    iget v0, p1, Lccc71/pmw/lib/qm;->d:I

    if-nez v0, :cond_3

    .line 88
    const v0, 0x7f0901ab

    const v3, 0x7f050124

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    iget-boolean v0, p1, Lccc71/pmw/lib/qm;->e:Z

    if-eqz v0, :cond_2

    .line 91
    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :pswitch_0
    const v0, 0x7f0200a7

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 114
    :goto_0
    const v0, 0x7f0901a6

    iget v3, p1, Lccc71/pmw/lib/qm;->m:I

    invoke-static {v2, v0, v3}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/widget/RemoteViews;II)V

    .line 116
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    const v0, 0x7f090198

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    :goto_1
    const v0, 0x7f090191

    iget v3, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v2, p4, v0, v3}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 126
    iget v0, p1, Lccc71/pmw/lib/qm;->h:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 127
    iget v0, p1, Lccc71/pmw/lib/qm;->h:I

    invoke-static {p2, v2, p4, v5, v0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 131
    :goto_2
    iget v0, p1, Lccc71/pmw/lib/qm;->j:I

    iget-boolean v3, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v2, v6, v0, v3}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 132
    iget v0, p1, Lccc71/pmw/lib/qm;->k:I

    iget-boolean v3, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v2, v7, v0, v3}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 133
    iget v0, p1, Lccc71/pmw/lib/qm;->l:I

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "setTextSize"

    iget v3, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v0, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 136
    const-string v0, "setTextSize"

    iget v3, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v3, v3

    invoke-virtual {v2, v7, v0, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 139
    :cond_0
    iget-object v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    iget v0, p1, Lccc71/pmw/lib/qm;->j:I

    packed-switch v0, :pswitch_data_1

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_4
    iget-object v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->r:I

    if-gt v0, v3, :cond_7

    .line 143
    iget v0, p1, Lccc71/pmw/lib/qm;->j:I

    invoke-direct {p0, v0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    const v1, 0x7f0901a5

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 146
    if-eqz p3, :cond_8

    .line 147
    invoke-virtual {p3, p4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 151
    :goto_5
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->v:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_1
    iput-object v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->v:Landroid/graphics/Bitmap;

    .line 155
    return-void

    .line 99
    :pswitch_1
    const v0, 0x7f0200a9

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 104
    :cond_2
    const v0, 0x7f0200a8

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 108
    :cond_3
    iget v0, p1, Lccc71/pmw/lib/qm;->d:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_4

    .line 109
    const v0, 0x7f0901a9

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    :cond_4
    const v0, 0x7f0901ab

    const-string v3, " "

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f0200a8

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 122
    :cond_5
    const v0, 0x7f090198

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 129
    :cond_6
    iget v0, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v2, p4, v5, v0}, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    goto/16 :goto_2

    .line 139
    :pswitch_2
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->f:I

    goto :goto_3

    :pswitch_3
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->b:I

    goto :goto_3

    :pswitch_4
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->h:I

    goto :goto_3

    :pswitch_5
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->c:I

    goto :goto_3

    :pswitch_6
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->d:I

    goto :goto_3

    :pswitch_7
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->g:I

    goto :goto_3

    :pswitch_8
    move v0, v1

    goto :goto_3

    :pswitch_9
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->i:I

    sget-object v4, Lccc71/pmw/pro/pmw_widget_graph_2x1;->a:Lccc71/pmw/a/ah;

    invoke-virtual {v4}, Lccc71/pmw/a/ah;->m()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lccc71/pmw/lib/pmw_settings;->b(IF)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_3

    :pswitch_a
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->b:I

    rsub-int/lit8 v0, v0, 0x64

    goto/16 :goto_3

    :pswitch_b
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->c:I

    rsub-int/lit8 v0, v0, 0x64

    goto/16 :goto_3

    :pswitch_c
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->d:I

    rsub-int/lit8 v0, v0, 0x64

    goto/16 :goto_3

    :pswitch_d
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->e:I

    goto/16 :goto_3

    :pswitch_e
    sget v0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->e:I

    rsub-int/lit8 v0, v0, 0x64

    goto/16 :goto_3

    .line 141
    :cond_7
    iget-object v0, p0, Lccc71/pmw/pro/pmw_widget_graph_2x1;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 149
    :cond_8
    const-string v1, "process_monitor_widget"

    const-string v2, "appWidgetManager is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
