.class public Lccc71/bmw/lib/bmw_past_stats;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bmw_past_stats;->b:I

    .line 32
    return-void
.end method

.method private a()V
    .locals 17

    .prologue
    .line 134
    new-instance v3, Lccc71/utils/b/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lccc71/utils/b/a;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    .line 137
    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    invoke-virtual {v3, v1, v2, v4}, Lccc71/utils/b/a;->a(JI)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 138
    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    invoke-virtual {v3, v1, v2, v4}, Lccc71/utils/b/a;->b(JI)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long v5, v1, v4

    .line 140
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    invoke-virtual {v3, v7, v8, v1}, Lccc71/utils/b/a;->c(JI)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v9, 0x3e8

    div-long v9, v1, v9

    .line 141
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    invoke-virtual {v3, v7, v8, v1}, Lccc71/utils/b/a;->d(JI)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    div-long v11, v1, v11

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    invoke-virtual {v3, v7, v8, v1}, Lccc71/utils/b/a;->e(JI)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v13, 0x3e8

    div-long v13, v1, v13

    .line 144
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 145
    const-wide/16 v1, 0x1

    move-wide v7, v1

    .line 149
    :goto_0
    sget v1, Lccc71/bmw/lib/d;->bv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 150
    const-wide/16 v15, 0x3e8

    div-long v15, v7, v15

    invoke-static/range {v15 .. v16}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget v1, Lccc71/bmw/lib/d;->bf:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    const-wide/16 v15, 0x3e8

    div-long v15, v5, v15

    invoke-static/range {v15 .. v16}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v1, Lccc71/bmw/lib/d;->bt:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    const-wide/16 v15, 0x64

    mul-long/2addr v15, v5

    div-long/2addr v15, v7

    invoke-static/range {v15 .. v16}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget v1, Lccc71/bmw/lib/d;->df:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    const-wide/16 v15, 0x3e8

    div-long v15, v9, v15

    invoke-static/range {v15 .. v16}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v1, Lccc71/bmw/lib/d;->dg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    const-wide/16 v15, 0x64

    mul-long/2addr v9, v15

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget v1, Lccc71/bmw/lib/d;->dP:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    const-wide/16 v9, 0x3e8

    div-long v9, v11, v9

    invoke-static {v9, v10}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget v1, Lccc71/bmw/lib/d;->dQ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v11

    div-long/2addr v9, v7

    invoke-static {v9, v10}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget v1, Lccc71/bmw/lib/d;->cc:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    const-wide/16 v9, 0x3e8

    div-long v9, v13, v9

    invoke-static {v9, v10}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    sget v1, Lccc71/bmw/lib/d;->cd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v13

    div-long v7, v9, v7

    invoke-static {v7, v8}, Lccc71/utils/al;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 173
    new-instance v1, Lccc71/bmw/lib/br;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lccc71/bmw/lib/br;-><init>(Lccc71/bmw/lib/bmw_past_stats;Lccc71/utils/b/a;Landroid/os/Handler;J)V

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 298
    return-void

    .line 147
    :cond_0
    const-wide/16 v1, 0x3e8

    div-long v1, v7, v1

    move-wide v7, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_past_stats;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_past_stats;->a()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_past_stats;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lccc71/bmw/lib/bmw_past_stats;->b:I

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 108
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/b/f;

    invoke-virtual {v0}, Lccc71/utils/b/f;->d()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/utils/b/f;

    invoke-virtual {v0}, Lccc71/utils/b/f;->a()I

    move-result v5

    invoke-virtual {v1}, Lccc71/utils/b/f;->a()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v0}, Lccc71/utils/b/f;->a(Lccc71/utils/b/f;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_past_stats;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lccc71/bmw/lib/bmw_past_stats;->b:I

    return v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_past_stats;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    return-void
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_past_stats;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lccc71/bmw/lib/bmw_past_stats;->a:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    sget v0, Lccc71/bmw/lib/e;->bg:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_past_stats;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_past_stats;->a()V

    .line 51
    sget v0, Lccc71/bmw/lib/d;->dh:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 52
    new-instance v1, Lccc71/bmw/lib/bp;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/bp;-><init>(Lccc71/bmw/lib/bmw_past_stats;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    sget v0, Lccc71/bmw/lib/d;->dj:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_past_stats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 77
    new-instance v1, Lccc71/bmw/lib/bq;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/bq;-><init>(Lccc71/bmw/lib/bmw_past_stats;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 106
    return-void
.end method
