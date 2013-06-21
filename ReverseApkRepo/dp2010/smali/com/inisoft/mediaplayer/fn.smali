.class public final Lcom/inisoft/mediaplayer/fn;
.super Ljava/lang/Object;


# static fields
.field private static synthetic l:[I


# instance fields
.field private a:Lcom/inisoft/mediaplayer/PlayerActivity;

.field private b:Lcom/inisoft/mediaplayer/fs;

.field private c:Lcom/inisoft/mediaplayer/dg;

.field private d:Lcom/inisoft/mediaplayer/cs;

.field private e:Lcom/inisoft/mediaplayer/dm;

.field private f:Lcom/inisoft/mediaplayer/cx;

.field private g:Lcom/inisoft/mediaplayer/di;

.field private h:Landroid/widget/LinearLayout;

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x35

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    new-instance v0, Lcom/inisoft/mediaplayer/fo;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/fo;-><init>(Lcom/inisoft/mediaplayer/fn;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fn;->i:Z

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b()Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    new-instance v0, Lcom/inisoft/mediaplayer/cx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/cx;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/cx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/cx;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->j()V

    :cond_0
    new-instance v0, Lcom/inisoft/mediaplayer/cs;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/cs;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/cs;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/inisoft/mediaplayer/dg;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/dg;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    const/16 v1, 0x37

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/inisoft/mediaplayer/dg;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/dg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "<font color=#00ff00><b>[HW]&nbsp;&nbsp;</b></font>"

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-ne v1, v2, :cond_2

    const-string v0, "<font color=#00ff00><b>[SW]&nbsp;&nbsp;</b></font>"

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/inisoft/mediaplayer/fp;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/fp;-><init>(Lcom/inisoft/mediaplayer/fn;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x38

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_1
    new-instance v0, Lcom/inisoft/mediaplayer/dm;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/dm;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/dm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/inisoft/mediaplayer/di;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-direct {v0, v1, v2}, Lcom/inisoft/mediaplayer/di;-><init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/di;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ak()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/dg;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/fn;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fn;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/fn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fn;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    return-object v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dm;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/di;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/fn;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->i()V

    return-void
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/fn;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->j()V

    return-void
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    return-object v0
.end method

.method private h()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/fn;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private static synthetic k()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/fn;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/fr;->values()[Lcom/inisoft/mediaplayer/fr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/fr;->d:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/fr;->e:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/inisoft/mediaplayer/fn;->l:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/Spannable;F)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/cs;->a(Landroid/text/Spannable;F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->c()V

    const/4 v0, 0x6

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/cx;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cs;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dg;->a(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dm;->a(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/di;->a(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/df;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dg;->a(Lcom/inisoft/mediaplayer/df;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dm;->a(Lcom/inisoft/mediaplayer/df;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/di;->a(Lcom/inisoft/mediaplayer/df;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fq;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/fq;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cs;->a(Lcom/inisoft/mediaplayer/fq;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dg;->a(Lcom/inisoft/mediaplayer/fq;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dm;->a(Lcom/inisoft/mediaplayer/fq;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fr;)V
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;I)V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/fr;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/inisoft/mediaplayer/fn;->k()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/fr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->h()V

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_8

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->a()V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->b()V

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dm;->a()V

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/di;->a()V

    :cond_7
    invoke-direct {p0, v2, p2}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    goto :goto_0

    :cond_8
    :try_start_1
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->h()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->j()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->c()V

    :cond_b
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/di;->b()V

    :cond_c
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dm;->b()V

    :cond_d
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->b()V

    :cond_e
    invoke-direct {p0, v2, p2}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->j()V

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->c()V

    :cond_f
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->c:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->c()V

    :cond_10
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dm;->b()V

    :cond_11
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/di;->b()V

    :cond_12
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/fn;->i()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->c()V

    :cond_13
    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cs;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->c()V

    const/4 v0, 0x6

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->b(Z)V

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    return-void
.end method

.method public final a(ZI)V
    .locals 2

    const/4 v1, 0x2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->k()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->e:Lcom/inisoft/mediaplayer/dm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/dm;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cs;->a(Z)V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cx;->a(Z)V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(II)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->b()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->d:Lcom/inisoft/mediaplayer/cs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->a()V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/di;->a(Z)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->f:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->h()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fn;->g:Lcom/inisoft/mediaplayer/di;

    invoke-static {}, Lcom/inisoft/mediaplayer/di;->d()V

    :cond_0
    return-void
.end method
