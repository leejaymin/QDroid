.class public final Lcom/inisoft/mediaplayer/cx;
.super Landroid/widget/FrameLayout;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Lcom/inisoft/mediaplayer/fq;

.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/inisoft/mediaplayer/df;

.field private d:Landroid/content/Context;

.field private e:Lcom/inisoft/mediaplayer/fs;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ImageButton;

.field private y:F

.field private z:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V
    .locals 5

    const/16 v4, 0xf

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    new-instance v0, Lcom/inisoft/mediaplayer/cy;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cy;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->z:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/inisoft/mediaplayer/cz;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cz;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/da;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/da;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/db;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/db;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/inisoft/mediaplayer/dc;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dc;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/dd;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/dd;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/inisoft/mediaplayer/de;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/de;-><init>(Lcom/inisoft/mediaplayer/cx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->F:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cx;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/cx;->m:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->d:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "seek_intervals"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->v(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/cx;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/cx;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/cx;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->requestFocus()Z

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->k(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/fs;->v(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/cx;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/cx;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/cx;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/cx;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/cx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->b:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->b:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    const v0, 0x7f050097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    const v3, 0x7f020099

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const v0, 0x7f05009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f05009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->m:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    const v0, 0x7f050099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->m:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    const v0, 0x7f05009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ac()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_2
    const v0, 0x7f05009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->o:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    const v0, 0x7f050098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->o:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    const v0, 0x7f05009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->C:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_8
    const v0, 0x7f0500a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->i:Landroid/widget/TextView;

    const v0, 0x7f05009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->j:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->b:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->i:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->j:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->o()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->c()V

    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    :cond_f
    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/cx;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/cx;)I
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->m()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->n()V

    return-void
.end method

.method private l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private m()I
    .locals 6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->l:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->d()I

    move-result v0

    iget v1, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->c()I

    move-result v1

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_5

    if-lez v1, :cond_4

    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v2}, Lcom/inisoft/mediaplayer/df;->f()I

    move-result v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_5
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->i:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/cx;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/cx;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ac()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private o()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->p:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->q:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->c()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x2710

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->d()I

    move-result v1

    iget v2, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    iget v2, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    int-to-float v2, v1

    iget v3, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->m()I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_2
    iget v0, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    return v0

    :cond_3
    int-to-float v0, v1

    iget v2, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    mul-int/lit8 v0, v1, -0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->m()I

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->l()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v0, v4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cx;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const v0, 0x10a0002

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/cx;->setVisibility(I)V

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    :cond_1
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->h()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0, v4, v3}, Lcom/inisoft/mediaplayer/fq;->a(ZI)V

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/inisoft/mediaplayer/cx;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->n()V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cx;->p:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/cx;->q:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->o:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->o()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cx;->f:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->d:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f03003f

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/cx;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const v2, 0x7f03003e

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/df;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->h()V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->l(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->k(Z)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inisoft/mediaplayer/fq;->a(ZI)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/cx;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v0, "INIMediaController"

    const-string v1, "already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->c()V

    goto :goto_0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->b()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->h()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x19

    if-eq v2, v3, :cond_2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0x52

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->c()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v3

    if-ltz v3, :cond_6

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_8

    const/16 v3, 0x36

    if-gt v2, v3, :cond_8

    move v0, v1

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    if-lt v2, v3, :cond_6

    const/16 v3, 0x10

    if-gt v2, v3, :cond_6

    move v0, v1

    goto :goto_1
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->r:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->m()I

    move-result v0

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/cx;->l:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/cx;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    const/4 v2, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    invoke-interface {v1, v2, v0}, Lcom/inisoft/mediaplayer/fq;->a(ZI)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final i()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->b()V

    :goto_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cx;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->a()V

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ae()V

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cx;->c:Lcom/inisoft/mediaplayer/df;

    invoke-interface {v1}, Lcom/inisoft/mediaplayer/df;->d()I

    move-result v1

    iget v2, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/df;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/cx;->y:F

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->m()I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/cx;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->G:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->v:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->p:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->w:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cx;->q:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->e:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->af()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cx;->l()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cx;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto :goto_2
.end method
