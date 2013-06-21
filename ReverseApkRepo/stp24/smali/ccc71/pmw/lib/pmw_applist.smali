.class public Lccc71/pmw/lib/pmw_applist;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static T:Ljava/util/ArrayList;

.field private static U:Ljava/util/ArrayList;

.field private static V:Ljava/util/ArrayList;

.field private static W:Landroid/app/ProgressDialog;

.field private static X:Z

.field private static Y:Ljava/text/Collator;

.field static a:I

.field static b:Z

.field static c:Z

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I


# instance fields
.field private A:Ljava/util/List;

.field private B:Landroid/view/View;

.field private C:Ljava/util/ArrayList;

.field private D:Landroid/os/Handler;

.field private E:Landroid/content/pm/PackageManager;

.field private F:Landroid/graphics/Bitmap;

.field private G:Z

.field private H:Z

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/Button;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/Button;

.field private S:Z

.field private Z:Lccc71/pmw/b/m;

.field private aa:Landroid/os/Handler;

.field private ab:Landroid/view/View$OnLongClickListener;

.field private ac:Landroid/os/Handler;

.field private ad:Lccc71/pmw/a/b;

.field private ae:Landroid/os/Handler;

.field private af:Landroid/os/Handler;

.field private ag:I

.field private ah:Landroid/os/Handler;

.field private ai:Landroid/view/View$OnClickListener;

.field private aj:Landroid/view/View$OnClickListener;

.field private ak:Landroid/os/Handler;

.field public d:Landroid/content/pm/ApplicationInfo;

.field protected e:Landroid/view/View$OnClickListener;

.field protected f:Landroid/view/View$OnClickListener;

.field protected j:Landroid/view/View$OnClickListener;

.field protected k:Landroid/view/View$OnClickListener;

.field protected l:Landroid/view/View$OnClickListener;

.field protected m:Landroid/view/View$OnLongClickListener;

.field protected n:Landroid/view/View$OnClickListener;

.field protected o:Landroid/view/View$OnClickListener;

.field protected p:Landroid/view/View$OnClickListener;

.field protected q:Landroid/view/View$OnClickListener;

.field protected r:Landroid/view/View$OnClickListener;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    const v0, 0x70a0a0ff

    sput v0, Lccc71/pmw/lib/pmw_applist;->s:I

    .line 68
    sput v3, Lccc71/pmw/lib/pmw_applist;->t:I

    .line 69
    sput v2, Lccc71/pmw/lib/pmw_applist;->u:I

    .line 70
    const/4 v0, 0x2

    sput v0, Lccc71/pmw/lib/pmw_applist;->v:I

    .line 71
    const/4 v0, 0x3

    sput v0, Lccc71/pmw/lib/pmw_applist;->w:I

    .line 73
    const/4 v0, -0x1

    sput v0, Lccc71/pmw/lib/pmw_applist;->x:I

    .line 74
    const/4 v0, -0x2

    sput v0, Lccc71/pmw/lib/pmw_applist;->y:I

    .line 75
    const/4 v0, -0x3

    sput v0, Lccc71/pmw/lib/pmw_applist;->a:I

    .line 77
    sput-boolean v2, Lccc71/pmw/lib/pmw_applist;->b:Z

    .line 78
    sput-boolean v2, Lccc71/pmw/lib/pmw_applist;->c:Z

    .line 110
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->T:Ljava/util/ArrayList;

    .line 111
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->U:Ljava/util/ArrayList;

    .line 112
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->V:Ljava/util/ArrayList;

    .line 113
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    .line 114
    sput-boolean v3, Lccc71/pmw/lib/pmw_applist;->X:Z

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 82
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    .line 84
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->D:Landroid/os/Handler;

    .line 89
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 91
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->E:Landroid/content/pm/PackageManager;

    .line 92
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    .line 95
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_applist;->H:Z

    .line 108
    iput-boolean v2, p0, Lccc71/pmw/lib/pmw_applist;->S:Z

    .line 1304
    new-instance v0, Lccc71/pmw/lib/am;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/am;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->e:Landroid/view/View$OnClickListener;

    .line 1324
    new-instance v0, Lccc71/pmw/lib/bk;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bk;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->f:Landroid/view/View$OnClickListener;

    .line 1433
    new-instance v0, Lccc71/pmw/lib/ce;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ce;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->aa:Landroid/os/Handler;

    .line 1489
    new-instance v0, Lccc71/pmw/lib/ck;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ck;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->j:Landroid/view/View$OnClickListener;

    .line 1669
    new-instance v0, Lccc71/pmw/lib/cl;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cl;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->k:Landroid/view/View$OnClickListener;

    .line 1689
    new-instance v0, Lccc71/pmw/lib/cm;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cm;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->l:Landroid/view/View$OnClickListener;

    .line 1707
    new-instance v0, Lccc71/pmw/lib/cn;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cn;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ab:Landroid/view/View$OnLongClickListener;

    .line 1726
    new-instance v0, Lccc71/pmw/lib/co;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/co;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->m:Landroid/view/View$OnLongClickListener;

    .line 1749
    new-instance v0, Lccc71/pmw/lib/cp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/cp;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->n:Landroid/view/View$OnClickListener;

    .line 1772
    new-instance v0, Lccc71/pmw/lib/an;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/an;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ac:Landroid/os/Handler;

    .line 1860
    new-instance v0, Lccc71/pmw/lib/ao;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ao;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->o:Landroid/view/View$OnClickListener;

    .line 1964
    new-instance v0, Lccc71/pmw/lib/as;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/as;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->p:Landroid/view/View$OnClickListener;

    .line 2044
    new-instance v0, Lccc71/pmw/lib/av;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/av;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->q:Landroid/view/View$OnClickListener;

    .line 2218
    new-instance v0, Lccc71/pmw/lib/bb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bb;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ae:Landroid/os/Handler;

    .line 2500
    new-instance v0, Lccc71/pmw/lib/bd;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bd;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->af:Landroid/os/Handler;

    .line 2590
    new-instance v0, Lccc71/pmw/lib/be;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/be;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->r:Landroid/view/View$OnClickListener;

    .line 2625
    new-instance v0, Lccc71/pmw/lib/bf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bf;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ah:Landroid/os/Handler;

    .line 2685
    new-instance v0, Lccc71/pmw/lib/bg;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bg;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ai:Landroid/view/View$OnClickListener;

    .line 2703
    new-instance v0, Lccc71/pmw/lib/bh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bh;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->aj:Landroid/view/View$OnClickListener;

    .line 2914
    new-instance v0, Lccc71/pmw/lib/bp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bp;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ak:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic A(Lccc71/pmw/lib/pmw_applist;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 683
    sget v0, Lccc71/pmw/lib/e;->bc:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->setContentView(I)V

    sget v0, Lccc71/pmw/lib/d;->S:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->I:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->al:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->L:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->aw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->s:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->N:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->T:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->J:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->x:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->Q:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->Q:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    sget v0, Lccc71/pmw/lib/d;->j:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->K:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->P:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    sget v0, Lccc71/pmw/lib/d;->C:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->I:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->L:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->N:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->J:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->Q:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->ab:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->K:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->m:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->N:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lccc71/pmw/lib/d;->aA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method static synthetic B(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->L:Landroid/view/View;

    return-object v0
.end method

.method static synthetic C(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic D(Lccc71/pmw/lib/pmw_applist;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->H:Z

    return v0
.end method

.method static synthetic E(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 2703
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->aj:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic F(Lccc71/pmw/lib/pmw_applist;)V
    .locals 2
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lccc71/pmw/lib/bz;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bz;-><init>(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic G(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 2625
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic H(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 2685
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ai:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic I(Lccc71/pmw/lib/pmw_applist;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lccc71/pmw/lib/pmw_applist;->z:I

    return v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->E:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static a(Landroid/widget/TableLayout;I)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 261
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    .line 266
    :try_start_0
    sget v0, Lccc71/pmw/lib/pmw_applist;->u:I

    if-ne p1, v0, :cond_4

    move v4, v6

    .line 268
    :goto_0
    if-lt v4, v9, :cond_1

    .line 408
    :cond_0
    :goto_1
    return-object v8

    .line 270
    :cond_1
    const/4 v3, 0x0

    move v2, v6

    move v1, v6

    .line 272
    :goto_2
    if-lt v2, v9, :cond_2

    .line 287
    div-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_0

    .line 274
    :cond_2
    div-int/lit8 v0, v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 275
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 279
    sget v5, Lccc71/pmw/lib/pmw_applist;->u:I

    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    if-eqz v3, :cond_3

    sget-object v5, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    invoke-virtual {v5, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_14

    :cond_3
    move-object v1, v0

    move v0, v2

    .line 272
    :goto_3
    add-int/lit8 v2, v2, 0x2

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 290
    :cond_4
    sget v0, Lccc71/pmw/lib/pmw_applist;->y:I

    if-ne p1, v0, :cond_7

    move v7, v6

    .line 292
    :goto_4
    if-ge v7, v9, :cond_0

    .line 294
    const v4, 0x7fffffff

    .line 295
    const-string v3, "\u00ff"

    move v1, v6

    move v2, v6

    .line 297
    :goto_5
    if-lt v2, v9, :cond_5

    .line 315
    div-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_4

    .line 299
    :cond_5
    div-int/lit8 v0, v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 300
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 303
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    .line 306
    sget v10, Lccc71/pmw/lib/pmw_applist;->u:I

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    if-lt v5, v4, :cond_6

    sget-object v10, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    invoke-virtual {v10, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_13

    :cond_6
    move-object v1, v0

    move v3, v5

    move v0, v2

    .line 297
    :goto_6
    add-int/lit8 v2, v2, 0x2

    move v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_5

    .line 318
    :cond_7
    sget v0, Lccc71/pmw/lib/pmw_applist;->a:I

    if-ne p1, v0, :cond_a

    move v7, v6

    .line 320
    :goto_7
    if-ge v7, v9, :cond_0

    .line 322
    const/high16 v4, -0x8000

    .line 323
    const-string v3, "\u00ff"

    move v1, v6

    move v2, v6

    .line 325
    :goto_8
    if-lt v2, v9, :cond_8

    .line 343
    div-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_7

    .line 327
    :cond_8
    div-int/lit8 v0, v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 328
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 331
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 332
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    .line 334
    sget v10, Lccc71/pmw/lib/pmw_applist;->u:I

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    if-gt v5, v4, :cond_9

    sget-object v10, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    invoke-virtual {v10, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_12

    :cond_9
    move-object v1, v0

    move v3, v5

    move v0, v2

    .line 325
    :goto_9
    add-int/lit8 v2, v2, 0x2

    move v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_8

    .line 346
    :cond_a
    sget v0, Lccc71/pmw/lib/pmw_applist;->x:I

    if-ne p1, v0, :cond_d

    move v7, v6

    .line 348
    :goto_a
    if-ge v7, v9, :cond_0

    .line 350
    const-string v5, "\u00ff"

    .line 352
    const/4 v1, -0x2

    move v3, v6

    move v4, v6

    .line 353
    :goto_b
    if-lt v4, v9, :cond_b

    .line 369
    div-int/lit8 v0, v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_a

    .line 355
    :cond_b
    div-int/lit8 v0, v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 356
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 359
    sget v2, Lccc71/pmw/lib/pmw_applist;->u:I

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 360
    sget v10, Lccc71/pmw/lib/pmw_applist;->u:I

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    if-gt v2, v1, :cond_c

    sget-object v10, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    invoke-virtual {v10, v0, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_11

    :cond_c
    move v1, v4

    move v11, v2

    move-object v2, v0

    move v0, v11

    .line 353
    :goto_c
    add-int/lit8 v4, v4, 0x2

    move v3, v1

    move-object v5, v2

    move v1, v0

    goto :goto_b

    .line 374
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    .line 375
    :goto_d
    if-lt v1, v9, :cond_e

    .line 382
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v6

    .line 383
    :goto_e
    if-ge v4, v7, :cond_0

    move v2, v6

    move v1, v6

    move v3, v6

    .line 387
    :goto_f
    if-lt v2, v7, :cond_f

    .line 399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    .line 377
    :cond_e
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 378
    invoke-virtual {v0, p1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_d

    .line 389
    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 390
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 392
    if-le v0, v1, :cond_10

    move v1, v2

    .line 387
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_f

    .line 403
    :catch_0
    move-exception v0

    .line 405
    const-string v1, "process_monitor_widget"

    const-string v2, "Error sorting rows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_10
    move v0, v1

    move v1, v3

    goto :goto_10

    :cond_11
    move v0, v1

    move-object v2, v5

    move v1, v3

    goto :goto_c

    :cond_12
    move v0, v1

    move-object v1, v3

    move v3, v4

    goto/16 :goto_9

    :cond_13
    move v0, v1

    move-object v1, v3

    move v3, v4

    goto/16 :goto_6

    :cond_14
    move v0, v1

    move-object v1, v3

    goto/16 :goto_3
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    sput-object p0, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    return-void
.end method

.method static a(Landroid/os/Handler;Landroid/widget/TableLayout;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Lccc71/pmw/lib/br;

    invoke-direct {v0, p1, p2, p0}, Lccc71/pmw/lib/br;-><init>(Landroid/widget/TableLayout;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Lccc71/pmw/a/y;)V
    .locals 8
    .parameter

    .prologue
    .line 1511
    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_0

    sget v0, Lccc71/pmw/lib/g;->el:I

    move v1, v0

    .line 1512
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1514
    const-string v3, ""

    .line 1516
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-lt v4, v2, :cond_2

    .line 1526
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-le v2, v1, :cond_3

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1530
    const v7, 0x1040013

    new-instance v0, Lccc71/pmw/lib/cf;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/lib/cf;-><init>(Lccc71/pmw/lib/pmw_applist;ILccc71/pmw/a/y;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1665
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1666
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1667
    return-void

    .line 1511
    :cond_0
    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne p1, v0, :cond_1

    sget v0, Lccc71/pmw/lib/g;->en:I

    move v1, v0

    goto :goto_0

    :cond_1
    sget v0, Lccc71/pmw/lib/g;->em:I

    move v1, v0

    goto :goto_0

    .line 1519
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    .line 1520
    if-ltz v6, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1522
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v0

    goto/16 :goto_1

    .line 1529
    :cond_3
    const-string v3, ""

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2624
    iput p1, p0, Lccc71/pmw/lib/pmw_applist;->ag:I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2217
    iput-object p1, p0, Lccc71/pmw/lib/pmw_applist;->ad:Lccc71/pmw/a/b;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/a/y;)V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/b/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lccc71/pmw/lib/pmw_applist;->Z:Lccc71/pmw/b/m;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_applist;->S:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_applist;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2870
    invoke-direct {p0, p1, p2}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    sput-object p0, Lccc71/pmw/lib/pmw_applist;->T:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 114
    sput-boolean p0, Lccc71/pmw/lib/pmw_applist;->X:Z

    return-void
.end method

.method private a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2872
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->Q:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2873
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2874
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->J:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2875
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->L:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2877
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->K:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2878
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_2

    .line 2879
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2882
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->N:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2884
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2886
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2888
    if-eqz p1, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2890
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    .line 2891
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 2892
    if-ltz v0, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2893
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2895
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2896
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2898
    :cond_1
    return-void

    .line 2881
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    sput-object p0, Lccc71/pmw/lib/pmw_applist;->U:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    sput-object p0, Lccc71/pmw/lib/pmw_applist;->V:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic d()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1433
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->aa:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->T:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->V:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_applist;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    return v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->U:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_applist;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->S:Z

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lccc71/pmw/lib/pmw_applist;->u:I

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_applist;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2900
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/c;->V:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bC:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/c;->U:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bB:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lccc71/pmw/lib/pmw_applist;->X:Z

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lccc71/pmw/lib/pmw_applist;->s:I

    return v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->O:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lccc71/pmw/lib/pmw_applist;->v:I

    return v0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lccc71/pmw/lib/pmw_applist;->w:I

    return v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lccc71/pmw/lib/pmw_applist;->x:I

    return v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 2218
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lccc71/pmw/lib/pmw_applist;->y:I

    return v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 2500
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->af:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/b/m;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->Z:Lccc71/pmw/b/m;

    return-object v0
.end method

.method static synthetic o()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->Y:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic p()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lccc71/pmw/lib/pmw_applist;->t:I

    return v0
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/a/b;
    .locals 1
    .parameter

    .prologue
    .line 2217
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ad:Lccc71/pmw/a/b;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_applist;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 787
    sget v0, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lccc71/pmw/lib/by;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/by;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/by;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_applist;)I
    .locals 1
    .parameter

    .prologue
    .line 2624
    iget v0, p0, Lccc71/pmw/lib/pmw_applist;->ag:I

    return v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_applist;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->M:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->K:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lccc71/pmw/lib/pmw_applist;)I
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 746
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->E:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v8, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-eqz v8, :cond_3

    :cond_2
    if-nez v1, :cond_7

    iget-boolean v1, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-eqz v1, :cond_7

    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v9, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 240
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget v0, Lccc71/pmw/lib/d;->aA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    const-class v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    check-cast v0, Landroid/widget/LinearLayout;

    .line 248
    if-eqz v0, :cond_0

    .line 250
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    sget v0, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 466
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->dS:I

    if-eq v1, v4, :cond_0

    .line 471
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->dT:I

    if-eq v1, v4, :cond_0

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->dU:I

    if-eq v1, v4, :cond_0

    .line 477
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->ej:I

    if-ne v1, v4, :cond_1

    .line 479
    sget-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/a/y;)V

    .line 628
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_1
    return v2

    .line 481
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->ek:I

    if-ne v1, v4, :cond_2

    .line 483
    sget-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/a/y;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->el:I

    if-ne v1, v4, :cond_3

    .line 487
    sget-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/a/y;)V

    goto :goto_0

    .line 489
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fl:I

    if-ne v1, v4, :cond_4

    .line 491
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v4, Lccc71/pmw/lib/g;->bO:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 492
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    .line 494
    new-instance v1, Lccc71/pmw/lib/bt;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bt;-><init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 502
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bt;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_1

    .line 505
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fh:I

    if-ne v1, v4, :cond_5

    .line 507
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v4, Lccc71/pmw/lib/g;->bL:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 508
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    .line 510
    new-instance v1, Lccc71/pmw/lib/bu;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bu;-><init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 518
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bu;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_1

    .line 521
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fp:I

    if-ne v1, v4, :cond_6

    .line 523
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v4, Lccc71/pmw/lib/g;->bS:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 524
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 525
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    .line 526
    new-instance v1, Lccc71/pmw/lib/bv;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bv;-><init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 534
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bv;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_1

    .line 537
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fm:I

    if-ne v1, v4, :cond_7

    .line 539
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v4, Lccc71/pmw/lib/g;->bP:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 540
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 541
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    .line 542
    new-instance v1, Lccc71/pmw/lib/bw;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bw;-><init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 550
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bw;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_1

    .line 553
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fg:I

    if-ne v1, v4, :cond_8

    .line 555
    sget v1, Lccc71/pmw/lib/d;->an:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v4, Lccc71/pmw/lib/g;->bK:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 556
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 557
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    .line 558
    new-instance v1, Lccc71/pmw/lib/bx;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/bx;-><init>(Lccc71/pmw/lib/pmw_applist;Landroid/widget/TableLayout;)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 566
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/bx;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto/16 :goto_1

    .line 569
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->eX:I

    if-ne v1, v4, :cond_d

    .line 571
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    .line 572
    :goto_2
    if-lt v4, v5, :cond_a

    .line 585
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_c

    move v0, v2

    :goto_3
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_9

    move v3, v2

    :cond_9
    invoke-direct {p0, v0, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    goto/16 :goto_1

    .line 574
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    const-class v6, Landroid/widget/TableRow;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 576
    check-cast v1, Landroid/widget/TableRow;

    .line 579
    invoke-virtual {v1}, Landroid/widget/TableRow;->getChildCount()I

    move-result v6

    if-le v6, v2, :cond_b

    .line 581
    iget-object v6, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget v6, Lccc71/pmw/lib/pmw_applist;->s:I

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 572
    :cond_b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_c
    move v0, v3

    .line 585
    goto :goto_3

    .line 588
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fc:I

    if-ne v1, v4, :cond_f

    .line 590
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v3

    .line 591
    :goto_4
    if-lt v1, v5, :cond_e

    .line 596
    invoke-direct {p0, v3, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    goto/16 :goto_1

    .line 593
    :cond_e
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 594
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 599
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v4, Lccc71/pmw/lib/d;->fa:I

    if-ne v1, v4, :cond_0

    .line 601
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    .line 602
    :goto_5
    if-lt v4, v5, :cond_11

    .line 624
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v2

    :goto_6
    iget-object v1, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_10

    move v3, v2

    :cond_10
    invoke-direct {p0, v0, v3}, Lccc71/pmw/lib/pmw_applist;->a(ZZ)V

    goto/16 :goto_1

    .line 604
    :cond_11
    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 605
    const-class v6, Landroid/widget/TableRow;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 606
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 610
    check-cast v1, Landroid/widget/TableRow;

    .line 611
    invoke-virtual {v1}, Landroid/widget/TableRow;->getChildCount()I

    move-result v7

    if-le v7, v2, :cond_12

    .line 613
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-gez v6, :cond_13

    .line 615
    iget-object v6, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget v6, Lccc71/pmw/lib/pmw_applist;->s:I

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 602
    :cond_12
    :goto_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 620
    :cond_13
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto :goto_7

    :cond_14
    move v0, v3

    .line 624
    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->ak:Landroid/os/Handler;

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 132
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    sget v0, Lccc71/pmw/lib/g;->dG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    :cond_1
    iput v1, p0, Lccc71/pmw/lib/pmw_applist;->z:I

    .line 140
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_applist;->E:Landroid/content/pm/PackageManager;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 636
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->R:Landroid/widget/Button;

    if-ne p2, v0, :cond_1

    .line 638
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->k:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->P:Landroid/view/View;

    if-ne p2, v0, :cond_5

    .line 642
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->g:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 643
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 645
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    sget v0, Lccc71/pmw/lib/d;->ek:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 649
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    sget v0, Lccc71/pmw/lib/d;->ej:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 655
    :cond_3
    sget v0, Lccc71/pmw/lib/d;->el:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 660
    :cond_4
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    if-nez v0, :cond_0

    .line 662
    sget v0, Lccc71/pmw/lib/d;->ek:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/f;->n:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 674
    sget v0, Lccc71/pmw/lib/d;->fn:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 675
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 677
    sget v0, Lccc71/pmw/lib/d;->fh:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 678
    sget v0, Lccc71/pmw/lib/d;->fl:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->F:Landroid/graphics/Bitmap;

    .line 222
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 224
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->Z:Lccc71/pmw/b/m;

    .line 225
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->T:Ljava/util/ArrayList;

    .line 226
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->U:Ljava/util/ArrayList;

    .line 227
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->V:Ljava/util/ArrayList;

    .line 228
    sput-object v1, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    .line 230
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->B:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lccc71/pmw/lib/pmw_applist;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iput-object v1, p0, Lccc71/pmw/lib/pmw_applist;->A:Ljava/util/List;

    .line 234
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 146
    sget v0, Lccc71/pmw/lib/d;->iw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_applist;->z:I

    .line 150
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->H:Z

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 160
    iput-boolean v3, p0, Lccc71/pmw/lib/pmw_applist;->H:Z

    .line 162
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_applist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_applist;->G:Z

    .line 164
    sget-object v0, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_applist;->W:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lccc71/pmw/lib/bq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/bq;-><init>(Lccc71/pmw/lib/pmw_applist;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 210
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/bq;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_0
.end method
