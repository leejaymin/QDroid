.class public Lccc71/pmw/lib/at_build;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnClickListener;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[I

.field private m:Lccc71/pmw/b/a;

.field private n:Landroid/widget/TableRow$LayoutParams;

.field private o:Landroid/widget/TableRow$LayoutParams;

.field private p:Landroid/widget/TableRow$LayoutParams;

.field private q:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, -0x2

    .line 32
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 44
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 45
    sget v2, Lccc71/pmw/lib/b;->m:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 46
    sget v2, Lccc71/pmw/lib/b;->o:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 47
    sget v2, Lccc71/pmw/lib/b;->e:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 48
    sget v2, Lccc71/pmw/lib/b;->c:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 49
    sget v2, Lccc71/pmw/lib/b;->n:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 50
    sget v2, Lccc71/pmw/lib/b;->f:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 51
    sget v2, Lccc71/pmw/lib/b;->i:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 52
    sget v2, Lccc71/pmw/lib/b;->b:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 53
    sget v2, Lccc71/pmw/lib/b;->d:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 54
    sget v2, Lccc71/pmw/lib/b;->g:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 55
    sget v2, Lccc71/pmw/lib/b;->l:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 56
    sget v2, Lccc71/pmw/lib/b;->j:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 57
    sget v2, Lccc71/pmw/lib/b;->h:I

    aput v2, v0, v1

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->l:[I

    .line 60
    new-instance v0, Lccc71/pmw/b/a;

    invoke-direct {v0}, Lccc71/pmw/b/a;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->m:Lccc71/pmw/b/a;

    .line 62
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->n:Landroid/widget/TableRow$LayoutParams;

    .line 63
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v3, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->o:Landroid/widget/TableRow$LayoutParams;

    .line 64
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v3, v3, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->p:Landroid/widget/TableRow$LayoutParams;

    .line 136
    new-instance v0, Lccc71/pmw/lib/k;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/k;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->a:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Lccc71/pmw/lib/m;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/m;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->b:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lccc71/pmw/lib/p;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/p;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->c:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lccc71/pmw/lib/r;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/r;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->d:Landroid/view/View$OnClickListener;

    .line 448
    new-instance v0, Lccc71/pmw/lib/t;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/t;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->e:Landroid/view/View$OnClickListener;

    .line 508
    new-instance v0, Lccc71/pmw/lib/x;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/x;-><init>(Lccc71/pmw/lib/at_build;)V

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->f:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/at_build;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v0, Lccc71/pmw/lib/ab;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/ab;-><init>(Lccc71/pmw/lib/at_build;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ab;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/at_build;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lccc71/pmw/lib/at_build;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 332
    new-instance v0, Lccc71/pmw/lib/aa;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/aa;-><init>(Lccc71/pmw/lib/at_build;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 406
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/aa;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 407
    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/at_build;)[I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->l:[I

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->m:Lccc71/pmw/b/a;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/at_build;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lccc71/pmw/lib/at_build;->j:I

    return v0
.end method

.method static synthetic e(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->n:Landroid/widget/TableRow$LayoutParams;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/at_build;)F
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lccc71/pmw/lib/at_build;->q:F

    return v0
.end method

.method static synthetic g(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->o:Landroid/widget/TableRow$LayoutParams;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/at_build;)Landroid/widget/TableRow$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->p:Landroid/widget/TableRow$LayoutParams;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x40a0

    const/16 v2, 0x8

    .line 71
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pmw/builds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/at_build;->k:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/lib/at_build;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    new-instance v0, Lccc71/pmw/lib/z;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/z;-><init>(Lccc71/pmw/lib/at_build;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 96
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/z;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 98
    sget v0, Lccc71/pmw/lib/e;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/at_build;->setContentView(I)V

    .line 100
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/at_build;->j:I

    .line 102
    sget v0, Lccc71/pmw/lib/d;->j:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/at_build;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lccc71/pmw/lib/at_build;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :goto_0
    sget v0, Lccc71/pmw/lib/d;->ac:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/at_build;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lccc71/pmw/lib/at_build;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_1
    sget v0, Lccc71/pmw/lib/d;->U:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/at_build;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lccc71/pmw/lib/at_build;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :goto_2
    sget v0, Lccc71/pmw/lib/d;->f:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/at_build;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lccc71/pmw/lib/at_build;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_3
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/at_build;->q:F

    .line 127
    iget v0, p0, Lccc71/pmw/lib/at_build;->q:F

    const/high16 v1, 0x40c0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 128
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lccc71/pmw/lib/at_build;->n:Landroid/widget/TableRow$LayoutParams;

    .line 129
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->n:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 130
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->n:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    .line 131
    iget-object v0, p0, Lccc71/pmw/lib/at_build;->p:Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/lib/at_build;->a(Z)V

    .line 134
    return-void

    .line 106
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 328
    return-void
.end method
