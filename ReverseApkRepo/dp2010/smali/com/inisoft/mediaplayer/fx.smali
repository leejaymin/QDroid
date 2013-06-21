.class public final Lcom/inisoft/mediaplayer/fx;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/inisoft/mediaplayer/fs;

.field private d:Lcom/inisoft/mediaplayer/VideoView;

.field private e:Lcom/inisoft/mediaplayer/PopupProgressView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Messenger;

.field private l:Ljava/lang/StringBuilder;

.field private m:Ljava/util/Formatter;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;Landroid/os/Messenger;)V
    .locals 4

    const/16 v3, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/inisoft/mediaplayer/fy;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fy;-><init>(Lcom/inisoft/mediaplayer/fx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->n:Landroid/os/Handler;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fx;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/fx;->c:Lcom/inisoft/mediaplayer/fs;

    iput-object p0, p0, Lcom/inisoft/mediaplayer/fx;->a:Landroid/view/View;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/fx;->k:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "seek_intervals"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fx;->c:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->v(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->c:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->v(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/fx;)I
    .locals 6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->j:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->c()I

    move-result v1

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/fx;->e:Lcom/inisoft/mediaplayer/PopupProgressView;

    if-eqz v2, :cond_4

    if-lez v1, :cond_4

    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/inisoft/mediaplayer/fx;->e:Lcom/inisoft/mediaplayer/PopupProgressView;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/inisoft/mediaplayer/PopupProgressView;->a(I)V

    :cond_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/fx;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fx;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/fx;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/fx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/inisoft/mediaplayer/fx;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/fx;->m:Ljava/util/Formatter;

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
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->m:Ljava/util/Formatter;

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

.method static synthetic b(Lcom/inisoft/mediaplayer/fx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/fx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/fx;)Lcom/inisoft/mediaplayer/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/fx;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->k:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const v2, 0x7f020075

    const v1, 0x7f020074

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public final a(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 5

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fx;->d:Lcom/inisoft/mediaplayer/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fx;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fx;->a:Landroid/view/View;

    const v0, 0x7f0500b1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/PopupProgressView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->e:Lcom/inisoft/mediaplayer/PopupProgressView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->e:Lcom/inisoft/mediaplayer/PopupProgressView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->e:Lcom/inisoft/mediaplayer/PopupProgressView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PopupProgressView;->a()V

    :cond_0
    const v0, 0x7f0500b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->l:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/fx;->l:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->m:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->h:Landroid/widget/TextView;

    const-string v3, "00:00 / 00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0500b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    const v3, 0x7f020074

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->f:Landroid/widget/ImageButton;

    new-instance v3, Lcom/inisoft/mediaplayer/fz;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/fz;-><init>(Lcom/inisoft/mediaplayer/fx;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0500b5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fx;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->g:Landroid/widget/ImageButton;

    const v2, 0x7f020070

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->g:Landroid/widget/ImageButton;

    new-instance v2, Lcom/inisoft/mediaplayer/ga;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/ga;-><init>(Lcom/inisoft/mediaplayer/fx;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/fx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/fx;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fx;->n:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fx;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/fx;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/fx;->i:Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fx;->b()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fx;->b()V

    const/4 v0, 0x0

    return v0
.end method
