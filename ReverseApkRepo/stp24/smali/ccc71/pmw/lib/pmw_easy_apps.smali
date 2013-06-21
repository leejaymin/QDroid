.class public Lccc71/pmw/lib/pmw_easy_apps;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static E:Ljava/lang/String;

.field private static F:J

.field static a:Z

.field private static l:Ljava/util/ArrayList;

.field private static m:Ljava/util/ArrayList;

.field private static n:Ljava/util/ArrayList;

.field private static o:Landroid/app/ProgressDialog;


# instance fields
.field private final A:Ljava/util/ArrayList;

.field private final B:Ljava/util/ArrayList;

.field private final C:Ljava/util/ArrayList;

.field private final D:Ljava/util/ArrayList;

.field private G:I

.field private H:I

.field private I:Lccc71/pmw/b/m;

.field private J:Landroid/os/Handler;

.field private K:Landroid/os/Handler;

.field private L:Landroid/os/Handler;

.field protected b:Landroid/view/View$OnClickListener;

.field protected c:Landroid/view/View$OnClickListener;

.field d:Landroid/os/Handler;

.field protected e:Landroid/view/View$OnClickListener;

.field protected f:Landroid/view/View$OnClickListener;

.field protected j:Landroid/view/View$OnClickListener;

.field private k:Landroid/os/Handler;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/ArrayList;

.field private final u:Ljava/util/ArrayList;

.field private final v:Ljava/util/ArrayList;

.field private final w:Ljava/util/ArrayList;

.field private final x:Ljava/util/ArrayList;

.field private final y:Ljava/util/ArrayList;

.field private final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 44
    sput-object v1, Lccc71/pmw/lib/pmw_easy_apps;->l:Ljava/util/ArrayList;

    .line 45
    sput-object v1, Lccc71/pmw/lib/pmw_easy_apps;->m:Ljava/util/ArrayList;

    .line 46
    sput-object v1, Lccc71/pmw/lib/pmw_easy_apps;->n:Ljava/util/ArrayList;

    .line 47
    sput-object v1, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    .line 72
    const-string v0, ""

    sput-object v0, Lccc71/pmw/lib/pmw_easy_apps;->E:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->k:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->s:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->t:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->u:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->w:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->x:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->y:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->z:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->A:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->B:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->C:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->D:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lccc71/pmw/lib/ex;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ex;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->J:Landroid/os/Handler;

    .line 543
    new-instance v0, Lccc71/pmw/lib/ez;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ez;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->b:Landroid/view/View$OnClickListener;

    .line 613
    new-instance v0, Lccc71/pmw/lib/fc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fc;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->c:Landroid/view/View$OnClickListener;

    .line 636
    new-instance v0, Lccc71/pmw/lib/fe;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fe;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->d:Landroid/os/Handler;

    .line 654
    new-instance v0, Lccc71/pmw/lib/ff;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ff;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->e:Landroid/view/View$OnClickListener;

    .line 684
    new-instance v0, Lccc71/pmw/lib/fh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fh;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->f:Landroid/view/View$OnClickListener;

    .line 712
    new-instance v0, Lccc71/pmw/lib/fj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fj;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->K:Landroid/os/Handler;

    .line 765
    new-instance v0, Lccc71/pmw/lib/fk;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fk;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->j:Landroid/view/View$OnClickListener;

    .line 874
    new-instance v0, Lccc71/pmw/lib/fn;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fn;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->L:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(J)V
    .locals 0
    .parameter

    .prologue
    .line 73
    sput-wide p0, Lccc71/pmw/lib/pmw_easy_apps;->F:J

    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    sput-object p0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_easy_apps;Lccc71/pmw/b/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lccc71/pmw/lib/pmw_easy_apps;->I:Lccc71/pmw/b/m;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    sput-object p0, Lccc71/pmw/lib/pmw_easy_apps;->E:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-object p0, Lccc71/pmw/lib/pmw_easy_apps;->l:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-object p0, Lccc71/pmw/lib/pmw_easy_apps;->m:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput-object p0, Lccc71/pmw/lib/pmw_easy_apps;->n:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 712
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->K:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 162
    sget v0, Lccc71/pmw/lib/e;->bh:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->setContentView(I)V

    .line 164
    sget v0, Lccc71/pmw/lib/d;->ax:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->p:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->p:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget v0, Lccc71/pmw/lib/d;->l:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->q:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->q:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget v0, Lccc71/pmw/lib/d;->ad:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->r:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->r:Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_0

    .line 173
    sget v0, Lccc71/pmw/lib/d;->q:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v0, Lccc71/pmw/lib/d;->r:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    sget v0, Lccc71/pmw/lib/d;->k:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void

    .line 178
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->q:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    sget v0, Lccc71/pmw/lib/d;->r:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 246
    sget v0, Lccc71/pmw/lib/d;->iN:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    sget v0, Lccc71/pmw/lib/d;->iO:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_easy_apps;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_0

    .line 259
    sget v0, Lccc71/pmw/lib/d;->jV:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    sget v0, Lccc71/pmw/lib/d;->jW:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_easy_apps;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_easy_apps;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    :cond_4
    return-void

    .line 255
    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 277
    sget v0, Lccc71/pmw/lib/d;->iM:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_0

    .line 283
    sget v0, Lccc71/pmw/lib/d;->jU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    sget v0, Lccc71/pmw/lib/d;->jX:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->iP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    iget v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v1, p0, Lccc71/pmw/lib/pmw_easy_apps;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget v0, Lccc71/pmw/lib/d;->ji:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    new-instance v1, Ljava/util/Date;

    sget-wide v2, Lccc71/pmw/lib/pmw_easy_apps;->F:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->m()V

    .line 301
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->r:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    :cond_1
    return-void
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 307
    sget v0, Lccc71/pmw/lib/d;->jB:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 308
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;)Lccc71/pmw/b/f;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lccc71/pmw/b/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {v1}, Lccc71/pmw/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->j()V

    return-void
.end method

.method private declared-synchronized n()V
    .locals 2

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    new-instance v0, Lccc71/pmw/lib/ey;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ey;-><init>(Lccc71/pmw/lib/pmw_easy_apps;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 540
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ey;->c([Ljava/lang/Object;)Lccc71/utils/android/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->n()V

    return-void
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 874
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_easy_apps;)Lccc71/pmw/b/m;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->I:Lccc71/pmw/b/m;

    return-object v0
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->J:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->k()V

    return-void
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->l()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->j()V

    .line 156
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->k()V

    .line 157
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->l()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget v0, Lccc71/pmw/lib/g;->dG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_easy_apps;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->G:I

    .line 92
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->H:I

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 128
    iput-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->I:Lccc71/pmw/b/m;

    .line 130
    sput-object v0, Lccc71/pmw/lib/pmw_easy_apps;->l:Ljava/util/ArrayList;

    .line 131
    sput-object v0, Lccc71/pmw/lib/pmw_easy_apps;->m:Ljava/util/ArrayList;

    .line 132
    sput-object v0, Lccc71/pmw/lib/pmw_easy_apps;->n:Ljava/util/ArrayList;

    .line 133
    sput-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    .line 135
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lccc71/pmw/lib/pmw_easy_apps;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 111
    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lccc71/pmw/lib/pmw_easy_apps;->o:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-boolean v0, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->j()V

    .line 117
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_easy_apps;->n()V

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    goto :goto_0
.end method
