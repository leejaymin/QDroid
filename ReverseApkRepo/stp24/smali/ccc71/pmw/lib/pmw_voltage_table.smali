.class public Lccc71/pmw/lib/pmw_voltage_table;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final a:I

.field private final b:I

.field private c:[I

.field private d:[[I

.field private e:[[I

.field private f:[Landroid/widget/Button;

.field private j:[Landroid/widget/SeekBar;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Lccc71/pmw/a/ah;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnLongClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->a:I

    .line 45
    const/4 v0, -0x2

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->b:I

    .line 52
    const/16 v0, 0x7d

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->l:Z

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    .line 56
    const/high16 v0, -0x8000

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->n:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    .line 454
    new-instance v0, Lccc71/pmw/lib/pm;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pm;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->q:Landroid/view/View$OnClickListener;

    .line 465
    new-instance v0, Lccc71/pmw/lib/pu;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pu;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->r:Landroid/view/View$OnClickListener;

    .line 524
    new-instance v0, Lccc71/pmw/lib/px;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/px;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->s:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Lccc71/pmw/lib/qa;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qa;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->t:Landroid/view/View$OnClickListener;

    .line 617
    new-instance v0, Lccc71/pmw/lib/qc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qc;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->u:Landroid/view/View$OnLongClickListener;

    .line 652
    new-instance v0, Lccc71/pmw/lib/qe;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qe;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->v:Landroid/view/View$OnClickListener;

    .line 661
    new-instance v0, Lccc71/pmw/lib/qf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qf;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->w:Landroid/view/View$OnClickListener;

    .line 699
    new-instance v0, Lccc71/pmw/lib/qh;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qh;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->x:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 719
    new-instance v0, Lccc71/pmw/lib/qi;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/qi;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->y:Landroid/view/View$OnClickListener;

    .line 742
    new-instance v0, Lccc71/pmw/lib/pn;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pn;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->z:Landroid/view/View$OnClickListener;

    .line 765
    new-instance v0, Lccc71/pmw/lib/po;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/po;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->A:Landroid/view/View$OnClickListener;

    .line 785
    new-instance v0, Lccc71/pmw/lib/pp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pp;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->B:Landroid/view/View$OnClickListener;

    .line 805
    new-instance v0, Lccc71/pmw/lib/pq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pq;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 42
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->p:Lccc71/pmw/a/ah;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->j:[Landroid/widget/SeekBar;

    aget-object v0, v0, p1

    iget-object v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    aget-object v1, v1, p1

    iget v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    aget v1, v1, v2

    iget v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 427
    invoke-static {}, Lccc71/pmw/a/ah;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lccc71/pmw/a/ah;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    :cond_0
    const-string v1, ""

    .line 430
    const/4 v0, 0x1

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    aget-object v2, v2, p1

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 437
    iget-object v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->f:[Landroid/widget/Button;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :goto_1
    return-void

    .line 432
    :cond_1
    iget v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    if-ne v1, v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    invoke-static {v2}, Lccc71/utils/ag;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    invoke-static {v0}, Lccc71/utils/ag;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 441
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->f:[Landroid/widget/Button;

    aget-object v0, v0, p1

    iget-object v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    aget-object v1, v1, p1

    iget v2, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    aget v1, v1, v2

    invoke-static {v1}, Lccc71/utils/ag;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 842
    new-instance v0, Lccc71/pmw/lib/pt;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pt;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pt;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;Lccc71/pmw/a/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->p:Lccc71/pmw/a/ah;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->l:Z

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->c:[I

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;[Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->f:[Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;[Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->j:[Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_voltage_table;[[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 652
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->v:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lccc71/pmw/lib/pmw_voltage_table;->a(I)V

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_voltage_table;[[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->d:[[I

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_voltage_table;->e()V

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    return-void
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_voltage_table;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 895
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    mul-int/2addr v0, v1

    iget v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lccc71/pmw/lib/ps;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ps;-><init>(Lccc71/pmw/lib/pmw_voltage_table;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 420
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ps;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 421
    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    return-void
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_voltage_table;)[[I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_voltage_table;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->o:I

    return v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->n:I

    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_voltage_table;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    return-void
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_voltage_table;)[[I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->d:[[I

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_voltage_table;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 902
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    sub-int v0, p1, v0

    return v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_voltage_table;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->k:I

    return v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->x:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_voltage_table;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->m:I

    return v0
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_voltage_table;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->n:I

    return v0
.end method

.method static synthetic m(Lccc71/pmw/lib/pmw_voltage_table;)[I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->c:[I

    return-object v0
.end method

.method static synthetic n(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->B:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic o(Lccc71/pmw/lib/pmw_voltage_table;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->l:Z

    return v0
.end method

.method static synthetic p(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic q(Lccc71/pmw/lib/pmw_voltage_table;)[Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->j:[Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic r(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->A:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic s(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->w:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic t(Lccc71/pmw/lib/pmw_voltage_table;)[Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->f:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic u(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->u:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic v(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->y:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic w(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->z:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic x(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->q:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->s:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic z(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lccc71/pmw/lib/c;->aJ:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lccc71/pmw/lib/g;->bu:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_voltage_table;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_voltage_table;->getPackageName()Ljava/lang/String;

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

    .line 78
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 139
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->c:[I

    .line 140
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->d:[[I

    .line 141
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    .line 142
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->f:[Landroid/widget/Button;

    .line 143
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->j:[Landroid/widget/SeekBar;

    .line 145
    iput-object v0, p0, Lccc71/pmw/lib/pmw_voltage_table;->p:Lccc71/pmw/a/ah;

    .line 146
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 147
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lccc71/pmw/lib/pmw_voltage_table;->e:[[I

    iput-object v1, v0, Lccc71/pmw/a/ac;->d:[[I

    .line 112
    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/a/ac;)V

    .line 114
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_voltage_table;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    new-instance v1, Lccc71/pmw/lib/pr;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/pr;-><init>(Lccc71/pmw/lib/pmw_voltage_table;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 128
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pr;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 131
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Lccc71/pmw/lib/e;->bx:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_voltage_table;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_voltage_table;->e()V

    goto :goto_0
.end method
