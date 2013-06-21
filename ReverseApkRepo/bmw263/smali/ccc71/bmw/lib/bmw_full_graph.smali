.class public Lccc71/bmw/lib/bmw_full_graph;
.super Lccc71/utils/ccc71_license_activity;
.source "SourceFile"


# static fields
.field public static f:Landroid/os/Handler;

.field public static g:Landroid/os/Handler;

.field private static h:Lccc71/bmw/lib/bmw_full_graph;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnLongClickListener;

.field c:Lccc71/utils/q;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field private i:I

.field private j:Lccc71/utils/ccc71_graph_view;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bmw_full_graph;->h:Lccc71/bmw/lib/bmw_full_graph;

    .line 390
    new-instance v0, Lccc71/bmw/lib/at;

    invoke-direct {v0}, Lccc71/bmw/lib/at;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_full_graph;->f:Landroid/os/Handler;

    .line 404
    new-instance v0, Lccc71/bmw/lib/au;

    invoke-direct {v0}, Lccc71/bmw/lib/au;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_full_graph;->g:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lccc71/utils/ccc71_license_activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    .line 293
    new-instance v0, Lccc71/bmw/lib/ao;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ao;-><init>(Lccc71/bmw/lib/bmw_full_graph;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->a:Landroid/view/View$OnClickListener;

    .line 321
    new-instance v0, Lccc71/bmw/lib/ap;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ap;-><init>(Lccc71/bmw/lib/bmw_full_graph;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->b:Landroid/view/View$OnLongClickListener;

    .line 333
    new-instance v0, Lccc71/bmw/lib/aq;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/aq;-><init>(Lccc71/bmw/lib/bmw_full_graph;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->c:Lccc71/utils/q;

    .line 364
    new-instance v0, Lccc71/bmw/lib/ar;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/ar;-><init>(Lccc71/bmw/lib/bmw_full_graph;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->d:Landroid/view/View$OnClickListener;

    .line 377
    new-instance v0, Lccc71/bmw/lib/as;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/as;-><init>(Lccc71/bmw/lib/bmw_full_graph;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->e:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_full_graph;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    return v0
.end method

.method static synthetic a()Lccc71/bmw/lib/bmw_full_graph;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lccc71/bmw/lib/bmw_full_graph;->h:Lccc71/bmw/lib/bmw_full_graph;

    return-object v0
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 151
    invoke-static {p0, p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;F)V

    .line 152
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_full_graph;->c()V

    .line 153
    return-void
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    .line 138
    iput p1, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    .line 139
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    iget v1, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    aget-object v1, v0, v1

    .line 140
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 141
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    .line 142
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 143
    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 144
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 145
    sget-object v5, Lccc71/bmw/lib/aj;->b:[I

    iget v6, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    aget v5, v5, v6

    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 141
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_full_graph;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    return-void
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_full_graph;)Lccc71/utils/ccc71_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 74
    sget v0, Lccc71/bmw/lib/e;->bd:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->setContentView(I)V

    .line 76
    sget v0, Lccc71/bmw/lib/d;->bL:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_graph_view;

    iput-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    .line 77
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->c:Lccc71/utils/q;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setOnEvent(Lccc71/utils/q;)V

    .line 81
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    iget v1, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    aget-object v1, v0, v1

    .line 83
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setVGrid(I)V

    .line 84
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setRevertMA(Z)V

    .line 85
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setTemperatureUnit(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {v0, v2}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 90
    iget-object v3, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v3, v0, v2}, Lccc71/utils/ccc71_graph_view;->setStates(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 92
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->F(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setVisibleMinMax(Z)V

    .line 93
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_graph_view;->setCurves(Z)V

    .line 95
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    .line 96
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 97
    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 98
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 99
    sget-object v5, Lccc71/bmw/lib/aj;->b:[I

    iget v6, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    aget v5, v5, v6

    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 95
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 100
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->E(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 102
    new-instance v0, Lccc71/bmw/data/a/e;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 105
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 106
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0xb40

    mul-long/2addr v3, v5

    sub-long v3, v1, v3

    invoke-virtual {v0, v3, v4, v1, v2}, Lccc71/bmw/data/a/e;->a(JJ)[Lccc71/bmw/data/a/d;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 110
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccc71/utils/ccc71_graph_view;->setMarkers([Lccc71/bmw/data/a/d;Z)V

    .line 112
    sget v0, Lccc71/bmw/lib/d;->de:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lccc71/bmw/lib/d;->da:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_full_graph;->c()V

    .line 116
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_full_graph;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    sget v2, Lccc71/bmw/lib/g;->bY:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_full_graph;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/g;->aQ:I

    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_full_graph;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_full_graph;->c()V

    return-void
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_full_graph;->b()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 160
    iget-object v2, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    if-eqz v2, :cond_11

    .line 162
    sget v2, Lccc71/bmw/lib/d;->cH:I

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v1}, Lccc71/utils/ccc71_graph_view;->h()Z

    move-result v1

    invoke-static {p0, v1}, Lccc71/bmw/lib/bmw_settings;->c(Landroid/content/Context;Z)V

    .line 261
    :goto_0
    return v0

    .line 166
    :cond_0
    sget v2, Lccc71/bmw/lib/d;->cA:I

    if-ne v1, v2, :cond_1

    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 171
    :cond_1
    sget v2, Lccc71/bmw/lib/d;->cB:I

    if-ne v1, v2, :cond_2

    .line 173
    invoke-direct {p0, v0}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 176
    :cond_2
    sget v2, Lccc71/bmw/lib/d;->cC:I

    if-ne v1, v2, :cond_3

    .line 178
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 181
    :cond_3
    sget v2, Lccc71/bmw/lib/d;->cE:I

    if-ne v1, v2, :cond_4

    .line 183
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 186
    :cond_4
    sget v2, Lccc71/bmw/lib/d;->cF:I

    if-ne v1, v2, :cond_5

    .line 188
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 191
    :cond_5
    sget v2, Lccc71/bmw/lib/d;->cD:I

    if-ne v1, v2, :cond_6

    .line 193
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(I)V

    goto :goto_0

    .line 196
    :cond_6
    sget v2, Lccc71/bmw/lib/d;->cI:I

    if-ne v1, v2, :cond_7

    .line 198
    const/high16 v1, 0x3f80

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 201
    :cond_7
    sget v2, Lccc71/bmw/lib/d;->cK:I

    if-ne v1, v2, :cond_8

    .line 203
    const/high16 v1, 0x4000

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 206
    :cond_8
    sget v2, Lccc71/bmw/lib/d;->cL:I

    if-ne v1, v2, :cond_9

    .line 208
    const/high16 v1, 0x4040

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 211
    :cond_9
    sget v2, Lccc71/bmw/lib/d;->cM:I

    if-ne v1, v2, :cond_a

    .line 213
    const/high16 v1, 0x4080

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 216
    :cond_a
    sget v2, Lccc71/bmw/lib/d;->cN:I

    if-ne v1, v2, :cond_b

    .line 218
    const/high16 v1, 0x40a0

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 221
    :cond_b
    sget v2, Lccc71/bmw/lib/d;->cO:I

    if-ne v1, v2, :cond_c

    .line 223
    const/high16 v1, 0x40c0

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 226
    :cond_c
    sget v2, Lccc71/bmw/lib/d;->cP:I

    if-ne v1, v2, :cond_d

    .line 228
    const/high16 v1, 0x40e0

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto :goto_0

    .line 231
    :cond_d
    sget v2, Lccc71/bmw/lib/d;->cQ:I

    if-ne v1, v2, :cond_e

    .line 233
    const/high16 v1, 0x4100

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto/16 :goto_0

    .line 236
    :cond_e
    sget v2, Lccc71/bmw/lib/d;->cR:I

    if-ne v1, v2, :cond_f

    .line 238
    const/high16 v1, 0x4110

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto/16 :goto_0

    .line 241
    :cond_f
    sget v2, Lccc71/bmw/lib/d;->cJ:I

    if-ne v1, v2, :cond_10

    .line 243
    const/high16 v1, 0x4120

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto/16 :goto_0

    .line 248
    :cond_10
    if-lez v1, :cond_11

    const/16 v2, 0x258

    if-ge v1, v2, :cond_11

    .line 252
    iget-object v2, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_graph_view;->b()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4561

    div-float/2addr v2, v3

    .line 254
    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-direct {p0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(F)V

    goto/16 :goto_0

    .line 261
    :cond_11
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_full_graph - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_full_graph;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_full_graph;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_full_graph;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".gfx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/lib/bmw_full_graph;->i:I

    .line 56
    sput-object p0, Lccc71/bmw/lib/bmw_full_graph;->h:Lccc71/bmw/lib/bmw_full_graph;

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0, p1, p2, p3}, Lccc71/utils/ccc71_license_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 268
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_full_graph;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/f;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/bmw_full_graph;->j:Lccc71/utils/ccc71_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->b()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    .line 277
    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 279
    rem-int/lit8 v1, v0, 0x18

    sub-int/2addr v0, v1

    .line 281
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    .line 282
    invoke-static {p0, v1, v0}, Lccc71/bmw/lib/bmw_status;->a(Landroid/content/Context;Landroid/view/SubMenu;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onDestroy()V

    .line 290
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_full_graph - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_full_graph - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onResume()V

    .line 66
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lccc71/bmw/lib/bmw_full_graph;->h:Lccc71/bmw/lib/bmw_full_graph;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lccc71/bmw/lib/bmw_full_graph;->h:Lccc71/bmw/lib/bmw_full_graph;

    invoke-direct {v0}, Lccc71/bmw/lib/bmw_full_graph;->b()V

    .line 70
    :cond_0
    return-void
.end method
