.class public Lccc71/pmw/lib/pmw_sd;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:F

.field private j:F

.field private k:Lccc71/pmw/b/u;

.field private l:Lccc71/pmw/b/u;

.field private m:Ljava/lang/String;

.field private n:Lccc71/pmw/a/as;

.field private o:Lccc71/pmw/a/aq;

.field private p:Lccc71/pmw/a/ac;

.field private q:Lccc71/utils/ccc71_piechartview;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private t:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const v0, -0xaaaa01

    sput v0, Lccc71/pmw/lib/pmw_sd;->a:I

    .line 41
    const v0, 0x888800

    sput v0, Lccc71/pmw/lib/pmw_sd;->b:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->d:Landroid/os/Handler;

    .line 46
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->e:Ljava/lang/Runnable;

    .line 50
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->k:Lccc71/pmw/b/u;

    .line 53
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->m:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    .line 55
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    .line 60
    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->q:Lccc71/utils/ccc71_piechartview;

    .line 399
    new-instance v0, Lccc71/pmw/lib/kx;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/kx;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->r:Landroid/view/View$OnClickListener;

    .line 431
    new-instance v0, Lccc71/pmw/lib/ky;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ky;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 481
    new-instance v0, Lccc71/pmw/lib/la;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/la;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 530
    new-instance v0, Lccc71/pmw/lib/lc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/lc;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->c:Landroid/os/Handler;

    .line 551
    new-instance v0, Lccc71/pmw/lib/ld;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ld;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->u:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lccc71/pmw/lib/le;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/le;-><init>(Lccc71/pmw/lib/pmw_sd;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->v:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sd;Lccc71/pmw/b/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lccc71/pmw/lib/pmw_sd;->k:Lccc71/pmw/b/u;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sd;Lccc71/utils/ccc71_piechartview;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lccc71/pmw/lib/pmw_sd;->q:Lccc71/utils/ccc71_piechartview;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lccc71/pmw/lib/pmw_sd;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_sd;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x1090009

    const v6, 0x1090008

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 182
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    iget-boolean v0, v0, Lccc71/pmw/a/as;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    invoke-virtual {v0}, Lccc71/pmw/a/as;->f()I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "128"

    aput-object v4, v1, v3

    const-string v3, "256"

    aput-object v3, v1, v7

    const/4 v3, 0x3

    const-string v4, "512"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "1024"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "2048"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "3072"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "4096"

    aput-object v4, v1, v3

    const-string v3, "5120"

    aput-object v3, v1, v5

    const/16 v3, 0x9

    const-string v4, "6144"

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    sget v0, Lccc71/pmw/lib/d;->iy:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget v1, Lccc71/pmw/lib/g;->eU:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPromptId(I)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    iget-boolean v0, v0, Lccc71/pmw/a/aq;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    invoke-virtual {v0}, Lccc71/pmw/a/aq;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    invoke-virtual {v0}, Lccc71/pmw/a/aq;->h()[Ljava/lang/String;

    move-result-object v4

    sget v0, Lccc71/pmw/lib/d;->iz:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget v1, Lccc71/pmw/lib/g;->eV:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPromptId(I)V

    array-length v5, v4

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_1

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    :goto_2
    sget v0, Lccc71/pmw/lib/d;->iJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 186
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    iget v3, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    const/high16 v4, 0x4040

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    sget v3, Lccc71/pmw/lib/g;->dW:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 190
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 192
    iget-object v3, p0, Lccc71/pmw/lib/pmw_sd;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 197
    new-instance v1, Lccc71/pmw/b/u;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_sd;->k:Lccc71/pmw/b/u;

    invoke-direct {v1, v2}, Lccc71/pmw/b/u;-><init>(Lccc71/pmw/b/u;)V

    iput-object v1, p0, Lccc71/pmw/lib/pmw_sd;->l:Lccc71/pmw/b/u;

    .line 198
    new-instance v1, Lccc71/pmw/lib/lf;

    invoke-direct {v1, p0, p1, v0}, Lccc71/pmw/lib/lf;-><init>(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;Landroid/os/Handler;)V

    .line 333
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 334
    return-void

    .line 182
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->aC:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lccc71/pmw/lib/d;->bx:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    sget v0, Lccc71/pmw/lib/d;->iA:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->k:Lccc71/pmw/b/u;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_sd;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lccc71/pmw/lib/pmw_sd;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/a/as;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/a/ac;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->p:Lccc71/pmw/a/ac;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/high16 v4, 0x4080

    const/high16 v3, 0x4000

    .line 153
    sget v0, Lccc71/pmw/lib/e;->bt:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->setContentView(I)V

    .line 155
    sget v0, Lccc71/pmw/lib/d;->jx:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aD(Landroid/content/Context;)I

    move-result v1

    .line 158
    sget v0, Lccc71/pmw/lib/d;->ki:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    iget v2, p0, Lccc71/pmw/lib/pmw_sd;->j:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    invoke-static {v1}, Lccc71/utils/ag;->e(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    sget v0, Lccc71/pmw/lib/d;->bk:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    iget v2, p0, Lccc71/pmw/lib/pmw_sd;->j:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    invoke-static {v1}, Lccc71/utils/ag;->f(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget v0, Lccc71/pmw/lib/d;->jP:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    iget v1, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    sget v0, Lccc71/pmw/lib/d;->jQ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    iget v1, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    sget v0, Lccc71/pmw/lib/d;->ap:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v0, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_sd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_sd;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_sd;)Lccc71/pmw/b/u;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->l:Lccc71/pmw/b/u;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_sd;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_sd;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    return v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_sd;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_sd;)Lccc71/utils/ccc71_piechartview;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->q:Lccc71/utils/ccc71_piechartview;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lccc71/pmw/lib/c;->aE:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lccc71/pmw/lib/g;->bp:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sd;->getPackageName()Ljava/lang/String;

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

    .line 79
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_sd;->e()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_sd;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->p:Lccc71/pmw/a/ac;

    .line 94
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_sd;->f:F

    .line 95
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->e(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_sd;->j:F

    .line 97
    new-instance v0, Lccc71/pmw/a/as;

    invoke-direct {v0}, Lccc71/pmw/a/as;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    .line 98
    new-instance v0, Lccc71/pmw/a/aq;

    invoke-direct {v0}, Lccc71/pmw/a/aq;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    .line 100
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_sd;->e()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->l:Lccc71/pmw/b/u;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->l:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->k()V

    .line 113
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->d:Landroid/os/Handler;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    :cond_1
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->e:Ljava/lang/Runnable;

    .line 117
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->k:Lccc71/pmw/b/u;

    .line 119
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    .line 120
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    .line 121
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->p:Lccc71/pmw/a/ac;

    .line 122
    iput-object v2, p0, Lccc71/pmw/lib/pmw_sd;->q:Lccc71/utils/ccc71_piechartview;

    .line 124
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 125
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 134
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->S(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->n:Lccc71/pmw/a/as;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->p:Lccc71/pmw/a/ac;

    iget v1, v1, Lccc71/pmw/a/ac;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/pmw_sd;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lccc71/pmw/a/as;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 139
    iget-object v0, p0, Lccc71/pmw/lib/pmw_sd;->o:Lccc71/pmw/a/aq;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_sd;->p:Lccc71/pmw/a/ac;

    iget-object v1, v1, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_sd;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v2}, Lccc71/pmw/a/aq;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 141
    :cond_0
    return-void
.end method
