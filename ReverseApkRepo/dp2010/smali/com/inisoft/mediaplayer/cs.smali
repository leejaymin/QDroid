.class public final Lcom/inisoft/mediaplayer/cs;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/content/Context;

.field private g:Lcom/inisoft/mediaplayer/fs;

.field private h:Z

.field private i:Landroid/text/Spannable;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/inisoft/mediaplayer/fq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    new-instance v0, Lcom/inisoft/mediaplayer/ct;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ct;-><init>(Lcom/inisoft/mediaplayer/cs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/cu;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cu;-><init>(Lcom/inisoft/mediaplayer/cs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/cv;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cv;-><init>(Lcom/inisoft/mediaplayer/cs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/cw;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cw;-><init>(Lcom/inisoft/mediaplayer/cs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->m:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cs;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/cs;->g:Lcom/inisoft/mediaplayer/fs;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/cs;->a:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/cs;)Lcom/inisoft/mediaplayer/fq;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->g:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ab()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/fq;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->g:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ab()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "%02.1f sec"

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/inisoft/mediaplayer/gt;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/cs;->a(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/fq;->a(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/cs;->a(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Landroid/text/Spannable;F)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v0, -0x1

    const/high16 v4, 0x3f80

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cs;->b:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cs;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->f:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cs;->a:Landroid/view/View;

    const v0, 0x7f050094

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    const v0, 0x7f050096

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    const v0, 0x7f050095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    const v2, 0x7f020090

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    const v2, 0x7f020098

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cs;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cs;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/cs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    const/high16 v1, 0x4220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->g:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ab()Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->g:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->j(Z)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    return v0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cs;->i:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/cs;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cs;->n:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0, v2}, Lcom/inisoft/mediaplayer/fq;->d(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/cs;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/cs;->h:Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
