.class public Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;
.super Landroid/support/v4/app/g;


# static fields
.field private static synthetic y:[I


# instance fields
.field private m:Lcom/thinkyeah/smartlock/view/LockPatternView;

.field private n:Lcom/thinkyeah/smartlock/co;

.field private o:I

.field private p:Landroid/os/CountDownTimer;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/CharSequence;

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Ljava/lang/Runnable;

.field private x:Lcom/thinkyeah/smartlock/view/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/al;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/al;-><init>(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->w:Ljava/lang/Runnable;

    new-instance v0, Lcom/thinkyeah/smartlock/am;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/am;-><init>(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->x:Lcom/thinkyeah/smartlock/view/c;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/view/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/ao;->c:Lcom/thinkyeah/smartlock/ao;

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ao;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/thinkyeah/smartlock/an;

    sub-long v0, p1, v0

    invoke-direct {v2, p0, v0, v1}, Lcom/thinkyeah/smartlock/an;-><init>(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;J)V

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/an;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->p:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;Lcom/thinkyeah/smartlock/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ao;)V

    return-void
.end method

.method private a(Lcom/thinkyeah/smartlock/ao;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->g()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/ao;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->t:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->u:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->v:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/co;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->n:Lcom/thinkyeah/smartlock/co;

    return-object v0
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->o:I

    return v0
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic f(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method private static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->y:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/thinkyeah/smartlock/ao;->values()[Lcom/thinkyeah/smartlock/ao;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/thinkyeah/smartlock/ao;->c:Lcom/thinkyeah/smartlock/ao;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ao;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/thinkyeah/smartlock/ao;->a:Lcom/thinkyeah/smartlock/ao;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ao;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/thinkyeah/smartlock/ao;->b:Lcom/thinkyeah/smartlock/ao;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ao;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->y:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/thinkyeah/smartlock/co;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->n:Lcom/thinkyeah/smartlock/co;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->setContentView(I)V

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/LockPatternView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.thinkyeah.smartlock.ConfirmLockPatternActivity.header"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->s:Ljava/lang/CharSequence;

    const-string v1, "com.thinkyeah.smartlock.ConfirmLockPatternActivity.footer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->t:Ljava/lang/CharSequence;

    const-string v1, "com.thinkyeah.smartlock.ConfirmLockPatternActivity.header_wrong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->u:Ljava/lang/CharSequence;

    const-string v1, "com.thinkyeah.smartlock.ConfirmLockPatternActivity.footer_wrong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->v:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    const-string v1, "VibrationFeedbackEnabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->m:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->x:Lcom/thinkyeah/smartlock/view/c;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setOnPatternListener(Lcom/thinkyeah/smartlock/view/c;)V

    if-eqz p1, :cond_2

    const-string v0, "num_wrong_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->o:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->n:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onPause()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->p:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->p:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->n:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(J)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onStart()V

    sget-object v0, Lcom/thinkyeah/smartlock/ao;->a:Lcom/thinkyeah/smartlock/ao;

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ao;)V

    return-void
.end method
