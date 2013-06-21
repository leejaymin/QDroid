.class public final Lcom/inisoft/mediaplayer/dm;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/inisoft/mediaplayer/fs;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/inisoft/mediaplayer/df;

.field private i:Z

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Lcom/inisoft/mediaplayer/fq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/inisoft/mediaplayer/dn;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dn;-><init>(Lcom/inisoft/mediaplayer/dm;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/do;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/do;-><init>(Lcom/inisoft/mediaplayer/dm;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->k:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dm;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/dm;->c:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/dm;->h:Lcom/inisoft/mediaplayer/df;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->t(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->t(I)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->t(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->t(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->t(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/dm;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/dm;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/dm;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x64

    const-string v1, "x%1.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, v0

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dm;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dm;->h:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/df;->c(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->c:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dm;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/dm;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->aa()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, -0x5

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->s(I)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/dm;->d()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dm;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dm;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f030044

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->c:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/dm;->c:Landroid/view/View;

    const v0, 0x7f0500b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0500b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->f:Landroid/widget/ImageButton;

    const v0, 0x7f0500b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->g:Landroid/widget/TextView;

    const-string v2, "x1.0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->s(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->e:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dm;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->f:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dm;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dm;->b()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->c:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/dm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const v2, 0x7f030043

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dm;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/df;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dm;->h:Lcom/inisoft/mediaplayer/df;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dm;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/dm;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dm;->i:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->h:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->h:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dm;->b()V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dm;->l:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
