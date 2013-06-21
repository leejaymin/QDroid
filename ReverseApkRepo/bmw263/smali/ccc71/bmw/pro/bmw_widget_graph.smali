.class public Lccc71/bmw/pro/bmw_widget_graph;
.super Lccc71/bmw/lib/bmw_widget;
.source "SourceFile"


# static fields
.field private static synthetic H:[I


# instance fields
.field protected A:I

.field protected B:I

.field protected C:Lccc71/bmw/pro/n;

.field protected D:F

.field protected E:I

.field protected F:Ljava/util/ArrayList;

.field private G:Ljava/lang/Object;

.field protected s:I

.field protected t:I

.field protected u:J

.field protected v:Z

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:Lccc71/bmw/lib/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_widget;-><init>()V

    .line 29
    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->s:I

    .line 30
    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->t:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->G:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method static synthetic a(Lccc71/bmw/pro/bmw_widget_graph;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->G:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lccc71/bmw/pro/bmw_widget_graph;->H:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lccc71/bmw/pro/bmw_widget_graph;->H:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static d(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    sget-object v0, Lccc71/bmw/pro/bmw_widget_graph;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 52
    :goto_0
    if-lt v1, v3, :cond_0

    .line 62
    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_widget_graph;->a(Landroid/content/Context;Z)V

    .line 63
    return-void

    .line 54
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_widget_graph;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 55
    sget-object v0, Lccc71/bmw/pro/bmw_widget_graph;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/lib/ei;

    .line 56
    const-class v5, Lccc71/bmw/pro/bmw_widget_graph;

    iget-object v0, v0, Lccc71/bmw/lib/ei;->b:Lccc71/bmw/lib/bmw_widget;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lccc71/bmw/pro/bmw_widget_graph;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x6

    if-lt p2, v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    :goto_0
    invoke-virtual {p0, p1, v0}, Lccc71/bmw/pro/bmw_widget_graph;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 104
    const v1, 0x7f0800eb

    sget-object v2, Lccc71/bmw/pro/bmw_widget_large;->s:[I

    aget v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 105
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030078

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x6

    const/high16 v3, 0x3f00

    .line 130
    invoke-super {p0, p1, p2, p3}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;II)V

    .line 132
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing gfx widget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p2, p0, Lccc71/bmw/pro/bmw_widget_graph;->E:I

    .line 135
    iget v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->s:I

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 138
    const/high16 v1, 0x4310

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->s:I

    .line 139
    const/high16 v1, 0x4290

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->t:I

    .line 141
    :cond_0
    invoke-static {p1, p2}, Lccc71/bmw/lib/bmw_settings;->n(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->y:I

    invoke-static {p1, p2}, Lccc71/bmw/lib/bmw_settings;->m(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->x:I

    iget v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->x:I

    if-ne v0, v5, :cond_1

    sget-object v0, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    :goto_0
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->v:Z

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->w:I

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->A:I

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->B:I

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->E(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->D:F

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v9

    new-instance v0, Lccc71/bmw/pro/n;

    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->A:I

    iget v2, p0, Lccc71/bmw/pro/bmw_widget_graph;->B:I

    iget-object v3, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    rem-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_2

    if-ge p3, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    iget v5, p0, Lccc71/bmw/pro/bmw_widget_graph;->s:I

    iget v6, p0, Lccc71/bmw/pro/bmw_widget_graph;->t:I

    iget v7, p0, Lccc71/bmw/pro/bmw_widget_graph;->D:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v0 .. v9}, Lccc71/bmw/pro/n;-><init>(IILccc71/bmw/lib/ak;ZIIFFZ)V

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->C:Lccc71/bmw/pro/n;

    .line 142
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->x:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected final a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    iget v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->x:I

    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;)I

    move-result v1

    .line 80
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;)I

    move-result v0

    .line 81
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result v2

    .line 82
    const/4 v3, 0x3

    new-array v3, v3, [[I

    .line 83
    new-array v4, v8, [I

    const v5, -0xffff01

    aput v5, v4, v6

    aput v1, v4, v7

    aput-object v4, v3, v6

    .line 84
    new-array v1, v8, [I

    const/high16 v4, -0x1

    aput v4, v1, v6

    aput v0, v1, v7

    aput-object v1, v3, v7

    .line 85
    new-array v0, v8, [I

    const v1, -0xff0100

    aput v1, v0, v6

    aput v2, v0, v7

    aput-object v0, v3, v8

    .line 88
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->C:Lccc71/bmw/pro/n;

    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lccc71/bmw/pro/n;->a(Ljava/util/ArrayList;[[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    :goto_0
    const v1, 0x7f0800f2

    const-string v2, "setImageBitmap"

    invoke-virtual {p2, v1, v2, v0}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->C:Lccc71/bmw/pro/n;

    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccc71/bmw/pro/n;->a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Landroid/widget/RemoteViews;Lccc71/bmw/lib/ei;Landroid/content/Context;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0800ec

    const/4 v8, 0x0

    const v10, 0x7f0800ef

    const v9, 0x7f0800ed

    .line 268
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 269
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 270
    sget v4, Lccc71/bmw/lib/bmw_watcher;->i:I

    .line 271
    sget v5, Lccc71/bmw/lib/bmw_watcher;->k:F

    .line 275
    if-gez v0, :cond_1

    const/4 v1, 0x1

    .line 276
    :goto_0
    if-eqz v1, :cond_3

    .line 278
    neg-int v0, v0

    .line 279
    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    sget-object v6, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    sget-object v6, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    if-ne v1, v6, :cond_2

    .line 280
    :cond_0
    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->n:I

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 292
    :goto_1
    invoke-static {}, Lccc71/bmw/pro/bmw_widget_graph;->c()[I

    move-result-object v1

    iget-object v6, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    invoke-virtual {v6}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 314
    :goto_2
    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_7

    .line 316
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_graph;->y:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_graph;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 317
    const-string v0, "setTextSize"

    iget v1, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v9, v0, v1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 325
    :goto_3
    invoke-static {p3, p4}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v0

    .line 326
    if-ltz v0, :cond_9

    sget-object v1, Lccc71/bmw/pro/bmw_widget_large;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 328
    invoke-virtual {p1, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 329
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v1, :cond_8

    .line 331
    sget-object v1, Lccc71/bmw/pro/bmw_widget_large;->e:[I

    aget v0, v1, v0

    invoke-virtual {p1, v10, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 342
    :goto_4
    return-void

    :cond_1
    move v1, v8

    .line 275
    goto :goto_0

    .line 282
    :cond_2
    iget v1, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    .line 286
    :cond_3
    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    sget-object v6, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    sget-object v6, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    if-ne v1, v6, :cond_5

    .line 287
    :cond_4
    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->o:I

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    .line 289
    :cond_5
    iget v1, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    .line 298
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 301
    :pswitch_1
    invoke-static {p3, v5}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 304
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 307
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mW"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 310
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit16 v2, v0, 0x3e8

    sget v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v0, :cond_6

    sget v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    :goto_5
    div-int v0, v2, v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Lccc71/utils/al;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x5dc

    goto :goto_5

    .line 321
    :cond_7
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_graph;->y:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_graph;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    goto/16 :goto_3

    .line 335
    :cond_8
    sget-object v1, Lccc71/bmw/pro/bmw_widget_large;->f:[I

    aget v0, v1, v0

    invoke-virtual {p1, v10, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 340
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p1, v10, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/bmw/pro/bmw_widget_graph;->u:J

    sub-long/2addr v0, v2

    .line 148
    iget-object v2, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 149
    :cond_0
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 151
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->u:J

    .line 152
    invoke-static {}, Lccc71/bmw/lib/ej;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 155
    new-instance v1, Lccc71/bmw/pro/l;

    invoke-direct {v1, p0, p1, v0}, Lccc71/bmw/pro/l;-><init>(Lccc71/bmw/pro/bmw_widget_graph;Landroid/content/Context;Landroid/os/Handler;)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 202
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 258
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->s:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gtz v0, :cond_8

    .line 264
    :cond_2
    :goto_1
    return-void

    .line 208
    :cond_3
    :try_start_1
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    iget-boolean v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->v:Z

    invoke-static {v0, v1}, Lccc71/bmw/lib/ej;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_4
    if-eqz p2, :cond_1

    .line 222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->u:J

    .line 223
    invoke-static {}, Lccc71/bmw/pro/bmw_widget_graph;->c()[I

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :pswitch_1
    iget-boolean v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->v:Z

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_5
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :pswitch_2
    iget-boolean v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->v:Z

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    neg-int v1, v1

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 238
    :cond_6
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    iget v1, p0, Lccc71/bmw/pro/bmw_widget_graph;->w:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->k:F

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_settings;->a(IF)F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 247
    :pswitch_5
    sget v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    mul-int/lit16 v1, v1, 0xe10

    sget v2, Lccc71/bmw/lib/bmw_watcher;->m:I

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 250
    :cond_7
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    mul-int/lit16 v1, v1, 0xe10

    div-int/lit16 v1, v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 259
    :cond_8
    :try_start_2
    iget-object v0, p0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
