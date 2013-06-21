.class public final Lcom/inisoft/mediaplayer/dg;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/content/Context;

.field private l:Lcom/inisoft/mediaplayer/fs;

.field private m:Lcom/inisoft/mediaplayer/df;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/inisoft/mediaplayer/fq;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    new-instance v0, Lcom/inisoft/mediaplayer/dh;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dh;-><init>(Lcom/inisoft/mediaplayer/dg;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->q:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dg;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dg;->n:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/dg;->m:Lcom/inisoft/mediaplayer/df;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/dg;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v2, v0}, Lcom/inisoft/mediaplayer/fq;->a(Z)V

    :cond_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    const v3, 0x7f0200b5

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->i:Landroid/widget/LinearLayout;

    const/high16 v3, 0x7000

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/inisoft/mediaplayer/fs;->g(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v2, v1}, Lcom/inisoft/mediaplayer/fq;->a(Z)V

    :cond_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dg;->j:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0x64

    const/4 v0, -0x1

    const/4 v6, 0x4

    const/high16 v5, 0x4188

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dg;->b:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dg;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->k:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const v1, 0x7f0500a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const v1, 0x7f0500a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const v4, 0x7f0500a9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v0, 0x4160

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const v1, 0x7f0500a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    const v0, 0x7f0500a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/dg;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0500a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    const v0, 0x7f0500a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f0500a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->d:Landroid/widget/TextView;

    const v0, 0x7f0500a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v0, 0x7f0500a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->f:Landroid/widget/TextView;

    const v0, 0x7f0500a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0500aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/inisoft/mediaplayer/dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->h:Landroid/widget/ImageButton;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->i:Landroid/widget/LinearLayout;

    const/high16 v1, 0x7000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/inisoft/mediaplayer/df;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dg;->m:Lcom/inisoft/mediaplayer/df;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dg;->o:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/dg;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    const-string v1, "SW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v1, v2}, Ljava/sql/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "kk:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->k:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v1, v0, 0xe

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/dg;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dg;->n:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->g:Landroid/widget/TextView;

    const-string v1, "HW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200ac

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/dg;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/dg;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/dg;->n:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->m:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->m:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/dg;->c()V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->l:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dg;->p:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
