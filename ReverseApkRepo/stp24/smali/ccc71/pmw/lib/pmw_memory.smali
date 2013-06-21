.class public Lccc71/pmw/lib/pmw_memory;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field b:Lccc71/utils/aa;

.field c:Lccc71/utils/aa;

.field d:Lccc71/utils/aa;

.field e:Lccc71/utils/aa;

.field f:Lccc71/utils/aa;

.field private final j:Landroid/os/Handler;

.field private k:Ljava/lang/Thread;

.field private l:Lccc71/pmw/b/q;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lccc71/utils/ccc71_piechartview;

.field private r:Lccc71/pmw/b/u;

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->j:Landroid/os/Handler;

    .line 30
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->k:Ljava/lang/Thread;

    .line 32
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->l:Lccc71/pmw/b/q;

    .line 34
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->m:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->n:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->o:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->p:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->q:Lccc71/utils/ccc71_piechartview;

    .line 42
    iput-object v1, p0, Lccc71/pmw/lib/pmw_memory;->r:Lccc71/pmw/b/u;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    .line 54
    new-instance v0, Lccc71/utils/aa;

    const v1, -0xf002f30

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    .line 280
    new-instance v0, Lccc71/pmw/lib/ib;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ib;-><init>(Lccc71/pmw/lib/pmw_memory;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->v:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->r:Lccc71/pmw/b/u;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_memory;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->k:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/q;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->l:Lccc71/pmw/b/q;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_memory;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 383
    new-instance v2, Lccc71/pmw/b/k;

    invoke-direct {v2, p0}, Lccc71/pmw/b/k;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->l:Lccc71/pmw/b/q;

    invoke-virtual {v0}, Lccc71/pmw/b/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v2, Lccc71/pmw/b/k;->a:I

    iget v1, v2, Lccc71/pmw/b/k;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v3, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    iget-wide v3, v3, Lccc71/utils/aa;->b:J

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    iget-wide v5, v5, Lccc71/utils/aa;->b:J

    add-long/2addr v3, v5

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    iget-wide v5, v5, Lccc71/utils/aa;->b:J

    add-long/2addr v3, v5

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    iget-wide v5, v5, Lccc71/utils/aa;->b:J

    add-long/2addr v3, v5

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    iget-wide v5, v5, Lccc71/utils/aa;->b:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    iget-wide v6, v6, Lccc71/utils/aa;->b:J

    mul-long/2addr v6, v0

    div-long/2addr v6, v3

    iput-wide v6, v5, Lccc71/utils/aa;->b:J

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    iget-wide v6, v6, Lccc71/utils/aa;->b:J

    mul-long/2addr v6, v0

    div-long/2addr v6, v3

    iput-wide v6, v5, Lccc71/utils/aa;->b:J

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    iget-wide v6, v6, Lccc71/utils/aa;->b:J

    mul-long/2addr v6, v0

    div-long/2addr v6, v3

    iput-wide v6, v5, Lccc71/utils/aa;->b:J

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    iget-wide v6, v6, Lccc71/utils/aa;->b:J

    mul-long/2addr v6, v0

    div-long/2addr v6, v3

    iput-wide v6, v5, Lccc71/utils/aa;->b:J

    iget-object v5, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    iget-wide v6, v6, Lccc71/utils/aa;->b:J

    mul-long/2addr v0, v6

    div-long/2addr v0, v3

    iput-wide v0, v5, Lccc71/utils/aa;->b:J

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->j:Landroid/os/Handler;

    new-instance v1, Lccc71/pmw/lib/id;

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/id;-><init>(Lccc71/pmw/lib/pmw_memory;Lccc71/pmw/b/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/aa;

    iput-wide v8, v0, Lccc71/utils/aa;->b:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/p;

    iget v3, v0, Lccc71/pmw/b/p;->q:I

    invoke-static {v0}, Lccc71/pmw/b/q;->f(Lccc71/pmw/b/p;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    iget-wide v4, v0, Lccc71/utils/aa;->b:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, v0, Lccc71/utils/aa;->b:J

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lccc71/pmw/b/q;->g(Lccc71/pmw/b/p;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    iget-wide v4, v0, Lccc71/utils/aa;->b:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, v0, Lccc71/utils/aa;->b:J

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    iget-wide v4, v0, Lccc71/utils/aa;->b:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, v0, Lccc71/utils/aa;->b:J

    goto/16 :goto_1

    :cond_5
    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    iget-wide v4, v0, Lccc71/utils/aa;->b:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, v0, Lccc71/utils/aa;->b:J

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    iget-wide v4, v0, Lccc71/utils/aa;->b:J

    int-to-long v6, v3

    add-long v3, v4, v6

    iput-wide v3, v0, Lccc71/utils/aa;->b:J

    goto/16 :goto_1
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/high16 v7, 0x4080

    const/high16 v6, 0x4000

    const/high16 v5, 0x4000

    .line 129
    invoke-static {p0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->l:Lccc71/pmw/b/q;

    .line 131
    sget v0, Lccc71/pmw/lib/e;->bo:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->setContentView(I)V

    .line 133
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    .line 134
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    .line 135
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aB(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_memory;->u:I

    .line 137
    new-instance v0, Lccc71/utils/aa;

    iget v1, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    sub-int/2addr v1, v6

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    .line 138
    new-instance v0, Lccc71/utils/aa;

    iget v1, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    .line 139
    new-instance v0, Lccc71/utils/aa;

    iget v1, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    .line 140
    new-instance v0, Lccc71/utils/aa;

    iget v1, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    sub-int/2addr v1, v6

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    .line 141
    new-instance v0, Lccc71/utils/aa;

    iget v1, p0, Lccc71/pmw/lib/pmw_memory;->u:I

    invoke-direct {v0, v1}, Lccc71/utils/aa;-><init>(I)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    .line 143
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v1

    .line 144
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/content/Context;)F

    move-result v2

    .line 145
    sget v0, Lccc71/pmw/lib/d;->jx:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    sget v0, Lccc71/pmw/lib/d;->jh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aD(Landroid/content/Context;)I

    move-result v3

    .line 150
    sget v0, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    sub-float v4, v2, v7

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    invoke-static {v3}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    sget v0, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    sub-float v4, v2, v7

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-static {v3}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    sget v0, Lccc71/pmw/lib/d;->kh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    sub-float v4, v2, v7

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    invoke-static {v3}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    sget v0, Lccc71/pmw/lib/d;->bj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    sub-float/2addr v2, v7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    invoke-static {v3}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget v0, Lccc71/pmw/lib/d;->iZ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    sget v0, Lccc71/pmw/lib/d;->iY:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    const/high16 v3, -0x8000

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    sget v0, Lccc71/pmw/lib/d;->jr:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    sget v0, Lccc71/pmw/lib/d;->jw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    sget v0, Lccc71/pmw/lib/d;->jq:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    sget v0, Lccc71/pmw/lib/d;->ju:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    sget v0, Lccc71/pmw/lib/d;->js:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->u:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    sget v0, Lccc71/pmw/lib/d;->dJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    sget v0, Lccc71/pmw/lib/d;->dO:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    sget v0, Lccc71/pmw/lib/d;->dI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->s:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 197
    sget v0, Lccc71/pmw/lib/d;->dM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->t:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    sget v0, Lccc71/pmw/lib/d;->dK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    iget v2, p0, Lccc71/pmw/lib/pmw_memory;->u:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    sget v0, Lccc71/pmw/lib/d;->jb:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    sget v0, Lccc71/pmw/lib/d;->jf:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 208
    sget v0, Lccc71/pmw/lib/d;->jg:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    sget v0, Lccc71/pmw/lib/d;->jc:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    sget v0, Lccc71/pmw/lib/d;->jd:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    sget v0, Lccc71/pmw/lib/d;->je:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    sget v0, Lccc71/pmw/lib/d;->bq:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 219
    sget v0, Lccc71/pmw/lib/d;->bu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    sget v0, Lccc71/pmw/lib/d;->bv:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    sget v0, Lccc71/pmw/lib/d;->br:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    sget v0, Lccc71/pmw/lib/d;->bs:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    sub-float v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    sget v0, Lccc71/pmw/lib/d;->bt:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    return-void
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "process_monitor_widget"

    const-string v1, "Stopping auto_refresh memory monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->k:Ljava/lang/Thread;

    .line 235
    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 239
    new-instance v0, Lccc71/pmw/b/u;

    invoke-direct {v0}, Lccc71/pmw/b/u;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->r:Lccc71/pmw/b/u;

    .line 240
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->r:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->c()V

    .line 242
    sget v0, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->m:Landroid/widget/TextView;

    .line 243
    sget v0, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->n:Landroid/widget/TextView;

    .line 245
    sget v0, Lccc71/pmw/lib/d;->kh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->o:Landroid/widget/TextView;

    .line 246
    sget v0, Lccc71/pmw/lib/d;->bj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->p:Landroid/widget/TextView;

    .line 248
    sget v0, Lccc71/pmw/lib/d;->fJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_piechartview;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->q:Lccc71/utils/ccc71_piechartview;

    .line 250
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory;->c:Lccc71/utils/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory;->d:Lccc71/utils/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory;->b:Lccc71/utils/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory;->e:Lccc71/utils/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->a:Ljava/util/List;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_memory;->f:Lccc71/utils/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v0, "du"

    invoke-static {p0, v0}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " -s /data/app /data/app-private /data/data /data/system /data/dalvik-cache /data/cachemnt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v0, Lccc71/pmw/b/h;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_memory;->v:Landroid/os/Handler;

    const/4 v4, 0x0

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 261
    new-instance v0, Lccc71/pmw/lib/ic;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ic;-><init>(Lccc71/pmw/lib/pmw_memory;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_memory;->k:Ljava/lang/Thread;

    .line 277
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_memory;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_memory;)Lccc71/utils/ccc71_piechartview;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lccc71/pmw/lib/pmw_memory;->q:Lccc71/utils/ccc71_piechartview;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lccc71/pmw/lib/c;->aC:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lccc71/pmw/lib/g;->bn:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->f()V

    .line 122
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->e()V

    .line 124
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->g()V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_memory;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 104
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->f()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 92
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->f()V

    .line 94
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->e()V

    .line 96
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->g()V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onStop()V

    .line 112
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_memory;->f()V

    .line 113
    return-void
.end method
