.class public final Lcom/inisoft/mediaplayer/di;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Lcom/inisoft/mediaplayer/fs;

.field private e:Lcom/inisoft/mediaplayer/df;

.field private f:Z

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/ImageButton;

.field private k:Z

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/inisoft/mediaplayer/dj;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dj;-><init>(Lcom/inisoft/mediaplayer/di;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/dk;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dk;-><init>(Lcom/inisoft/mediaplayer/di;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/dl;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dl;-><init>(Lcom/inisoft/mediaplayer/di;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->n:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/di;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/di;->a:Landroid/view/View;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->e:Lcom/inisoft/mediaplayer/df;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/di;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/di;)Lcom/inisoft/mediaplayer/df;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->e:Lcom/inisoft/mediaplayer/df;

    return-object v0
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method private e()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/di;->k:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/di;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->T()I

    move-result v0

    if-gt v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/di;->e()V

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/di;->b:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->c:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/di;->a:Landroid/view/View;

    const v0, 0x7f0500ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->g:Landroid/widget/ImageButton;

    const v0, 0x7f0500ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    const v0, 0x7f0500b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0500ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/di;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->g:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/di;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->h:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/di;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->j:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/di;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->d:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->b()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/di;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/df;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/di;->e:Lcom/inisoft/mediaplayer/df;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/di;->k:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/di;->e()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/di;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/di;->f:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->e:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/di;->e:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->b()V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/di;->a()V

    const/4 v0, 0x0

    return v0
.end method
