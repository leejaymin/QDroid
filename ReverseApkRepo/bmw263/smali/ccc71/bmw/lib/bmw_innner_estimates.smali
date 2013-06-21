.class public Lccc71/bmw/lib/bmw_innner_estimates;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:I

.field private c:Lccc71/bmw/data/a;

.field private d:[[I

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->b:I

    .line 27
    iput-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    .line 28
    iput-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->f:Z

    .line 166
    new-instance v0, Lccc71/bmw/lib/bn;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bn;-><init>(Lccc71/bmw/lib/bmw_innner_estimates;)V

    iput-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->a:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    .line 39
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    sget v1, Lccc71/bmw/lib/e;->bc:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;IIII[I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x48afc800

    .line 119
    sget v0, Lccc71/bmw/lib/d;->bB:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    if-eqz v1, :cond_0

    .line 121
    int-to-long v1, p2

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lccc71/bmw/lib/d;->bI:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    if-eqz v1, :cond_1

    .line 128
    int-to-long v1, p3

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lccc71/bmw/lib/d;->bT:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    if-eqz v1, :cond_2

    .line 135
    int-to-long v1, p5

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lccc71/bmw/lib/d;->bK:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    if-eqz v1, :cond_3

    .line 142
    int-to-long v1, p4

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lccc71/bmw/lib/d;->bF:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->f:F

    div-float v1, v4, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget v0, Lccc71/bmw/lib/d;->by:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->e:F

    div-float v1, v4, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v0, Lccc71/bmw/lib/d;->ca:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget v1, v1, Lccc71/bmw/data/a;->d:F

    div-float v1, v4, v1

    float-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget v0, Lccc71/bmw/lib/d;->bG:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const/4 v1, 0x2

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget v0, Lccc71/bmw/lib/d;->bz:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    const/4 v1, 0x0

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget v0, Lccc71/bmw/lib/d;->cb:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    const/4 v1, 0x1

    aget v1, p6, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    :cond_2
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    int-to-long v2, p5

    invoke-static {v1, v2, v3}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 144
    :cond_3
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    int-to-long v2, p4

    invoke-static {v1, v2, v3}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_innner_estimates;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->b:I

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_innner_estimates;Landroid/view/View$OnClickListener;IIII[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct/range {p0 .. p6}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Landroid/view/View$OnClickListener;IIII[I)V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_innner_estimates;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_innner_estimates;)[[I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->d:[[I

    return-object v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_innner_estimates;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->b:I

    return v0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_innner_estimates;)Lccc71/bmw/data/a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    return-object v0
.end method

.method static synthetic d(Lccc71/bmw/lib/bmw_innner_estimates;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->e:Z

    return v0
.end method

.method static synthetic e(Lccc71/bmw/lib/bmw_innner_estimates;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->f:Z

    .line 51
    return-void
.end method

.method final b()V
    .locals 15

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v14, 0x0

    .line 55
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    .line 57
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;)I

    move-result v2

    .line 58
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;)I

    move-result v3

    .line 59
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0, v2, v3}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;II)I

    move-result v4

    .line 60
    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result v5

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 62
    new-array v1, v8, [I

    const v6, -0xffff01

    aput v6, v1, v14

    aput v2, v1, v7

    aput-object v1, v0, v14

    .line 63
    new-array v1, v8, [I

    const/high16 v6, -0x1

    aput v6, v1, v14

    aput v3, v1, v7

    aput-object v1, v0, v7

    .line 64
    new-array v1, v8, [I

    const v6, -0xff0100

    aput v6, v1, v14

    aput v5, v1, v7

    aput-object v1, v0, v8

    .line 65
    new-array v1, v8, [I

    const v6, -0x333334

    aput v6, v1, v14

    aput v4, v1, v7

    aput-object v1, v0, v9

    .line 61
    iput-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->d:[[I

    .line 67
    new-array v6, v9, [I

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0, v7}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v14

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0, v8}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v7

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    iget-object v0, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    invoke-static {v0, v14}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    aput v0, v6, v8

    .line 69
    new-instance v0, Lccc71/bmw/lib/bo;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/lib/bo;-><init>(Lccc71/bmw/lib/bmw_innner_estimates;IIII[I)V

    move-object v7, p0

    move-object v8, v0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    .line 80
    invoke-direct/range {v7 .. v13}, Lccc71/bmw/lib/bmw_innner_estimates;->a(Landroid/view/View$OnClickListener;IIII[I)V

    .line 82
    sget v0, Lccc71/bmw/lib/d;->bC:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_0

    sget v1, Lccc71/bmw/lib/c;->o:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    sget v0, Lccc71/bmw/lib/d;->bE:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v0, Lccc71/bmw/lib/d;->br:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v0, Lccc71/bmw/lib/d;->bR:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget v2, v2, Lccc71/bmw/data/a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lccc71/bmw/lib/d;->bS:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget-wide v3, v3, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v0, Lccc71/bmw/lib/d;->bL:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_innner_estimates;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_ge_view;

    .line 98
    iget-boolean v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->f:Z

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v0, v14}, Lccc71/utils/ccc71_ge_view;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->P(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setVGrid(I)V

    .line 104
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-static {v1, v14}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    .line 107
    iget-object v3, p0, Lccc71/bmw/lib/bmw_innner_estimates;->g:Landroid/content/Context;

    invoke-static {v3}, Lccc71/bmw/lib/bmw_settings;->R(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lccc71/utils/ccc71_ge_view;->setCurves(Z)V

    .line 108
    iget-object v3, p0, Lccc71/bmw/lib/bmw_innner_estimates;->c:Lccc71/bmw/data/a;

    iget-wide v3, v3, Lccc71/bmw/data/a;->a:J

    iget v5, p0, Lccc71/bmw/lib/bmw_innner_estimates;->b:I

    iget-object v6, p0, Lccc71/bmw/lib/bmw_innner_estimates;->d:[[I

    invoke-virtual {v0, v3, v4, v5, v6}, Lccc71/utils/ccc71_ge_view;->setEstimates(JI[[I)V

    .line 109
    sget-object v3, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/aj;->b:[I

    aget v4, v4, v14

    invoke-virtual {v0, v3, v1, v2, v4}, Lccc71/utils/ccc71_ge_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;II)V

    .line 115
    :goto_1
    return-void

    .line 83
    :cond_0
    sget v1, Lccc71/bmw/lib/c;->j:I

    goto/16 :goto_0

    .line 113
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_ge_view;->setVisibility(I)V

    goto :goto_1
.end method
