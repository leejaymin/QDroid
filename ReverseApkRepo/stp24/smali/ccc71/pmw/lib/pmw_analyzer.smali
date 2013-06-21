.class public Lccc71/pmw/lib/pmw_analyzer;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private final A:Landroid/os/Handler;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/io/File;

.field private D:[Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:F

.field private G:I

.field private H:I

.field private I:Z

.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Lccc71/utils/v;

.field private e:Lccc71/utils/ccc71_multi_graph_view;

.field private f:Lccc71/utils/ccc71_multi_graph_view;

.field private j:Lccc71/utils/ccc71_state_graph_view;

.field private k:Lccc71/utils/ccc71_batterygraphview;

.field private l:Lccc71/pmw/lib/pmw_recorder;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/widget/TextView;

.field private q:Z

.field private r:Z

.field private s:F

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 41
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    .line 42
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    .line 43
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    .line 44
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    .line 45
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 46
    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    .line 47
    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->n:I

    .line 48
    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->o:I

    .line 50
    iput-boolean v3, p0, Lccc71/pmw/lib/pmw_analyzer;->q:Z

    .line 51
    iput-boolean v3, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->A:Landroid/os/Handler;

    .line 63
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->B:Ljava/lang/Runnable;

    .line 65
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    .line 66
    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    .line 754
    new-instance v0, Lccc71/pmw/lib/ac;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ac;-><init>(Lccc71/pmw/lib/pmw_analyzer;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->a:Landroid/view/View$OnClickListener;

    .line 803
    new-instance v0, Lccc71/pmw/lib/ad;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ad;-><init>(Lccc71/pmw/lib/pmw_analyzer;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->b:Landroid/view/View$OnClickListener;

    .line 903
    new-instance v0, Lccc71/pmw/lib/ae;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ae;-><init>(Lccc71/pmw/lib/pmw_analyzer;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->c:Landroid/view/View$OnClickListener;

    .line 915
    new-instance v0, Lccc71/pmw/lib/af;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/af;-><init>(Lccc71/pmw/lib/pmw_analyzer;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->d:Lccc71/utils/v;

    .line 39
    return-void
.end method

.method static synthetic A(Lccc71/pmw/lib/pmw_analyzer;)Z
    .locals 1
    .parameter

    .prologue
    .line 463
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->I:Z

    return v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    return-object v0
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 1011
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_multi_graph_view;->setHideLevel(F)V

    .line 1012
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    .line 1013
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    .line 1014
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->F:F

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->p:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_analyzer;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(F)V
    .locals 1
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1207
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1208
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, p1}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    .line 1210
    :cond_0
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 1211
    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_analyzer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->o:I

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_analyzer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->G:I

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_analyzer;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    return v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_analyzer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    iput p1, p0, Lccc71/pmw/lib/pmw_analyzer;->H:I

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lccc71/pmw/lib/pmw_analyzer;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_analyzer;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    return v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    iput-boolean v3, p0, Lccc71/pmw/lib/pmw_analyzer;->I:Z

    .line 469
    const/4 v2, 0x1

    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->H:I

    .line 471
    new-instance v2, Lccc71/pmw/lib/ah;

    invoke-direct {v2, p0, v0, v1}, Lccc71/pmw/lib/ah;-><init>(Lccc71/pmw/lib/pmw_analyzer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 741
    invoke-virtual {v2, v0}, Lccc71/pmw/lib/ah;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 742
    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_analyzer;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_analyzer;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_analyzer;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->o:I

    return v0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_analyzer;)V
    .locals 1
    .parameter

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    return-void
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_analyzer;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    return-object v0
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_analyzer;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_analyzer;)F
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    return v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_analyzer;)V
    .locals 1
    .parameter

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->I:Z

    return-void
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_analyzer;)F
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->F:F

    return v0
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_analyzer;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->q:Z

    return v0
.end method

.method static synthetic y(Lccc71/pmw/lib/pmw_analyzer;)I
    .locals 1
    .parameter

    .prologue
    .line 462
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->H:I

    return v0
.end method

.method static synthetic z(Lccc71/pmw/lib/pmw_analyzer;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->G:I

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lccc71/pmw/lib/c;->aA:I

    return v0
.end method

.method public final a_()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_1

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 382
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v2

    .line 383
    :goto_1
    if-lt v0, v4, :cond_6

    .line 389
    :cond_1
    sget v0, Lccc71/pmw/lib/d;->fN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    .line 390
    sget v0, Lccc71/pmw/lib/d;->fO:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    .line 391
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_multi_graph_view;->setShowTime(Z)V

    .line 392
    sget v0, Lccc71/pmw/lib/d;->fR:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_state_graph_view;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    .line 394
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->d:Lccc71/utils/v;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setOnEvent(Lccc71/utils/v;)V

    .line 397
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->d:Lccc71/utils/v;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setOnEvent(Lccc71/utils/v;)V

    .line 400
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->d:Lccc71/utils/v;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_state_graph_view;->setOnEvent(Lccc71/utils/v;)V

    .line 403
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->i()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    .line 406
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    .line 408
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v9}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 409
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v3

    iget v4, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    iget-object v5, p0, Lccc71/pmw/lib/pmw_analyzer;->u:Ljava/lang/String;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v6}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 410
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 411
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 412
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget v1, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHideLevel(F)V

    .line 414
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v9}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 415
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v3

    iget v4, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    iget-object v5, p0, Lccc71/pmw/lib/pmw_analyzer;->v:Ljava/lang/String;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v6}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 416
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->l()V

    .line 417
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 418
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 420
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->e()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v3

    iget v4, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    invoke-virtual {v0, v1, v3, v4}, Lccc71/utils/ccc71_state_graph_view;->setStateData(Ljava/util/HashMap;II)V

    .line 421
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_state_graph_view;->c()V

    .line 422
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-virtual {v0, v9}, Lccc71/utils/ccc71_state_graph_view;->c(F)F

    .line 423
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    .line 425
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->g()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    .line 426
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 430
    sget v0, Lccc71/pmw/lib/d;->fL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_batterygraphview;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    .line 431
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    .line 432
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccc71/pmw/b/t;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v5

    iget v6, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    const-string v7, "% available"

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    .line 433
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0}, Lccc71/utils/ccc71_batterygraphview;->c()V

    .line 434
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    .line 435
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, v9}, Lccc71/utils/ccc71_batterygraphview;->c(F)F

    .line 436
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->d:Lccc71/utils/v;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->setOnEvent(Lccc71/utils/v;)V

    .line 437
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    .line 441
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    :cond_2
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    .line 456
    :cond_3
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 457
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v10}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    .line 459
    :cond_4
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    .line 460
    return-void

    .line 375
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    .line 376
    iget v5, v0, Lccc71/pmw/b/t;->d:I

    if-nez v5, :cond_0

    iget v5, v0, Lccc71/pmw/b/t;->a:I

    if-lez v5, :cond_0

    .line 378
    iget v0, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 385
    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 445
    :cond_7
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_3

    .line 446
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, v10}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    goto :goto_2

    .line 452
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lccc71/pmw/lib/g;->bi:I

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 746
    sget v0, Lccc71/pmw/lib/d;->fP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dQ:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dS:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->dR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 749
    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v2}, Lccc71/utils/ccc71_multi_graph_view;->e()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lccc71/utils/ag;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_analyzer - onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 213
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v4, 0x40a0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    .line 1019
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    if-eqz v0, :cond_1b

    .line 1021
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    .line 1022
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->dX:I

    if-ne v0, v1, :cond_1

    .line 1024
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->f()I

    move-result v0

    .line 1025
    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v1}, Lccc71/utils/ccc71_multi_graph_view;->g()I

    move-result v1

    .line 1029
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v3}, Lccc71/utils/ccc71_multi_graph_view;->k()V

    .line 1030
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v3}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 1031
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v3}, Lccc71/utils/ccc71_multi_graph_view;->k()V

    .line 1032
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v3}, Lccc71/utils/ccc71_multi_graph_view;->invalidate()V

    .line 1034
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3, v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(II)V

    .line 1035
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->i()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    .line 1036
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    .line 1037
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v3

    iget v4, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    iget-object v5, p0, Lccc71/pmw/lib/pmw_analyzer;->u:Ljava/lang/String;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v6}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 1038
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v3

    iget v4, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    iget-object v5, p0, Lccc71/pmw/lib/pmw_analyzer;->v:Ljava/lang/String;

    iget-object v6, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v6}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_multi_graph_view;->setData(Ljava/util/HashMap;ZIILjava/lang/String;Ljava/util/Date;)V

    .line 1039
    invoke-static {p0, v8}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 1040
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1041
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 1042
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget v1, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHideLevel(F)V

    .line 1043
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->l()V

    .line 1044
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 1045
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->as(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setAutoMax(Z)V

    .line 1046
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->l()V

    .line 1047
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->g()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    .line 1048
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    sget v0, Lccc71/pmw/lib/d;->fL:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_batterygraphview;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    .line 1053
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget v3, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    const-string v4, "% available"

    iget-object v5, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    .line 1054
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    .line 1055
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0}, Lccc71/utils/ccc71_batterygraphview;->c()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_recorder;->e()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget v3, p0, Lccc71/pmw/lib/pmw_analyzer;->t:I

    invoke-virtual {v0, v1, v2, v3}, Lccc71/utils/ccc71_state_graph_view;->setStateData(Ljava/util/HashMap;II)V

    .line 1059
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-virtual {v0, v8}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    .line 1060
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->j:Lccc71/utils/ccc71_state_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_state_graph_view;->c()V

    .line 1062
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    .line 1201
    :goto_0
    return v7

    .line 1065
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->es:I

    if-ne v0, v1, :cond_3

    .line 1067
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->q:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_analyzer;->q:Z

    .line 1068
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    goto :goto_0

    :cond_2
    move v2, v7

    .line 1067
    goto :goto_1

    .line 1071
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fe:I

    if-ne v0, v1, :cond_5

    .line 1073
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    if-eqz v0, :cond_4

    .line 1074
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    .line 1075
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    goto :goto_0

    .line 1078
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ff:I

    if-ne v0, v1, :cond_7

    .line 1080
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    if-eqz v0, :cond_6

    .line 1081
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    .line 1082
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    goto :goto_0

    .line 1085
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->er:I

    if-ne v0, v1, :cond_8

    .line 1087
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    iget v1, p0, Lccc71/pmw/lib/pmw_analyzer;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHiddenProcesses(Ljava/util/ArrayList;)V

    .line 1089
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHiddenProcesses(Ljava/util/ArrayList;)V

    .line 1090
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    goto :goto_0

    .line 1093
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->et:I

    if-ne v0, v1, :cond_9

    .line 1095
    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->p:Landroid/widget/TextView;

    .line 1097
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1098
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHiddenProcesses(Ljava/util/ArrayList;)V

    .line 1099
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setHiddenProcesses(Ljava/util/ArrayList;)V

    .line 1100
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_analyzer;->f()V

    goto/16 :goto_0

    .line 1103
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eu:I

    if-ne v0, v1, :cond_a

    .line 1105
    const v0, 0x3a83126f

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1108
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ev:I

    if-ne v0, v1, :cond_b

    .line 1110
    const v0, 0x3ba3d70a

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1113
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ew:I

    if-ne v0, v1, :cond_c

    .line 1115
    const v0, 0x3c23d70a

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1118
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ex:I

    if-ne v0, v1, :cond_d

    .line 1120
    const v0, 0x3d4ccccd

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1123
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eA:I

    if-ne v0, v1, :cond_e

    .line 1125
    const v0, 0x3dcccccd

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1128
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eD:I

    if-ne v0, v1, :cond_f

    .line 1130
    const/high16 v0, 0x3f00

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1133
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ey:I

    if-ne v0, v1, :cond_10

    .line 1135
    invoke-direct {p0, v8}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1138
    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eC:I

    if-ne v0, v1, :cond_11

    .line 1140
    invoke-direct {p0, v4}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1143
    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ez:I

    if-ne v0, v1, :cond_12

    .line 1145
    const/high16 v0, 0x4120

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1148
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eB:I

    if-ne v0, v1, :cond_13

    .line 1150
    const/high16 v0, 0x41a0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1153
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eE:I

    if-ne v0, v1, :cond_15

    .line 1155
    iput v2, p0, Lccc71/pmw/lib/pmw_analyzer;->m:I

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->p:Landroid/widget/TextView;

    .line 1157
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_14

    .line 1158
    invoke-direct {p0, v3}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1160
    :cond_14
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aI(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->a(F)V

    goto/16 :goto_0

    .line 1163
    :cond_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->dY:I

    if-ne v0, v1, :cond_16

    .line 1165
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->e:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->j()Z

    move-result v0

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;Z)V

    .line 1166
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->j()Z

    goto/16 :goto_0

    .line 1169
    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->dZ:I

    if-ne v0, v1, :cond_17

    .line 1171
    invoke-direct {p0, v8}, Lccc71/pmw/lib/pmw_analyzer;->b(F)V

    .line 1172
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    goto/16 :goto_0

    .line 1175
    :cond_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ea:I

    if-ne v0, v1, :cond_18

    .line 1177
    const/high16 v0, 0x4000

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->b(F)V

    .line 1178
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    goto/16 :goto_0

    .line 1181
    :cond_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->eb:I

    if-ne v0, v1, :cond_19

    .line 1183
    const/high16 v0, 0x4040

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->b(F)V

    .line 1184
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    goto/16 :goto_0

    .line 1187
    :cond_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ec:I

    if-ne v0, v1, :cond_1a

    .line 1189
    const/high16 v0, 0x4080

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->b(F)V

    .line 1190
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    goto/16 :goto_0

    .line 1193
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->ed:I

    if-ne v0, v1, :cond_1b

    .line 1195
    invoke-direct {p0, v4}, Lccc71/pmw/lib/pmw_analyzer;->b(F)V

    .line 1196
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    goto/16 :goto_0

    .line 1201
    :cond_1b
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "ccc71.pmw.recording"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 96
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_analyzer_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->finish()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aI(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    .line 109
    sget v1, Lccc71/pmw/lib/e;->ba:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_analyzer;->setContentView(I)V

    .line 111
    new-instance v1, Lccc71/pmw/lib/ag;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/ag;-><init>(Lccc71/pmw/lib/pmw_analyzer;Landroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 154
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/ag;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1216
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1218
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fN:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fR:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fL:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fO:I

    if-ne v0, v1, :cond_9

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1221
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1223
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_analyzer;->r:Z

    if-nez v0, :cond_1

    .line 1225
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fL:I

    if-ne v0, v1, :cond_5

    .line 1227
    sget v0, Lccc71/pmw/lib/d;->fe:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1246
    :cond_1
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1248
    sget v0, Lccc71/pmw/lib/d;->ff:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1250
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0}, Lccc71/utils/ccc71_batterygraphview;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1252
    :cond_3
    sget v0, Lccc71/pmw/lib/d;->fe:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1264
    :cond_4
    :goto_1
    return-void

    .line 1229
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->fO:I

    if-ne v0, v1, :cond_6

    .line 1231
    sget v0, Lccc71/pmw/lib/d;->ff:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 1235
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->k:Lccc71/utils/ccc71_batterygraphview;

    invoke-virtual {v0}, Lccc71/utils/ccc71_batterygraphview;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1237
    :cond_7
    sget v0, Lccc71/pmw/lib/d;->fe:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1239
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->f:Lccc71/utils/ccc71_multi_graph_view;

    invoke-virtual {v0}, Lccc71/utils/ccc71_multi_graph_view;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    sget v0, Lccc71/pmw/lib/d;->ff:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 1257
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_analyzer;->n:I

    .line 1258
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1259
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1260
    sget v0, Lccc71/pmw/lib/d;->et:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1261
    :cond_a
    iget v0, p0, Lccc71/pmw/lib/pmw_analyzer;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 1262
    sget v0, Lccc71/pmw/lib/d;->eE:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 220
    sget v1, Lccc71/pmw/lib/f;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 224
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->eh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 225
    sget v0, Lccc71/pmw/lib/d;->ei:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 226
    sget v0, Lccc71/pmw/lib/d;->eg:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 248
    :cond_1
    :goto_0
    return v3

    .line 228
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    sget v0, Lccc71/pmw/lib/d;->ei:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 234
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    sget v0, Lccc71/pmw/lib/d;->eh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 238
    :cond_4
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_5
    sget v0, Lccc71/pmw/lib/d;->eh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->z:Ljava/util/HashMap;

    .line 202
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 204
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 205
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 166
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onNewIntent(Landroid/content/Intent;)V

    .line 170
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 171
    const-string v0, "current"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 172
    const-string v0, "temp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 173
    const-string v0, "plugged"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 174
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 176
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 178
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual/range {v0 .. v5}, Lccc71/pmw/lib/pmw_recorder;->a([I[I[I[I[I)V

    .line 180
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 182
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 254
    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 362
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    array-length v2, v2

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lccc71/pmw/lib/d;->eN:I

    if-ne v3, v4, :cond_2

    .line 261
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 262
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    :goto_1
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 268
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    move v0, v1

    .line 269
    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    invoke-virtual {v0, p0}, Lccc71/pmw/lib/pmw_recorder;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 271
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lccc71/pmw/lib/d;->ei:I

    if-ne v3, v4, :cond_8

    .line 273
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 275
    :goto_2
    if-lt v0, v2, :cond_4

    :cond_3
    :goto_3
    move v0, v1

    .line 316
    goto :goto_0

    .line 277
    :cond_4
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    iget-object v4, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    if-lez v0, :cond_3

    .line 281
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 282
    new-instance v2, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v2}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 288
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    goto :goto_3

    .line 275
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 294
    :cond_6
    if-eqz v2, :cond_3

    .line 296
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    if-le v2, v1, :cond_3

    .line 300
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 304
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 309
    :cond_7
    new-instance v0, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 313
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 318
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lccc71/pmw/lib/d;->eh:I

    if-ne v3, v4, :cond_d

    .line 320
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 322
    :goto_4
    if-lt v0, v2, :cond_a

    :cond_9
    :goto_5
    move v0, v1

    .line 350
    goto/16 :goto_0

    .line 324
    :cond_a
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    iget-object v4, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 326
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_9

    .line 328
    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 329
    new-instance v2, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v2}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 336
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    goto :goto_5

    .line 322
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 342
    :cond_c
    if-eqz v2, :cond_9

    .line 344
    new-instance v2, Lccc71/pmw/lib/pmw_recorder;

    invoke-direct {v2}, Lccc71/pmw/lib/pmw_recorder;-><init>()V

    iput-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->C:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/pmw_analyzer;->D:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->l:Lccc71/pmw/lib/pmw_recorder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_analyzer;->E:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    .line 348
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 352
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lccc71/pmw/lib/d;->eg:I

    if-ne v0, v2, :cond_e

    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".pmw_analyzer_list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_analyzer;->startActivity(Landroid/content/Intent;)V

    .line 357
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_analyzer;->finish()V

    move v0, v1

    .line 358
    goto/16 :goto_0

    .line 362
    :cond_e
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 189
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->A:Landroid/os/Handler;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_analyzer;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_analyzer;->B:Ljava/lang/Runnable;

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 161
    return-void
.end method
