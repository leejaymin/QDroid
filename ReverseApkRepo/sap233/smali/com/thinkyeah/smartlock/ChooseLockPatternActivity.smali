.class public Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;
.super Landroid/support/v4/app/g;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic w:[I


# instance fields
.field protected m:Landroid/widget/TextView;

.field protected n:Lcom/thinkyeah/smartlock/view/LockPatternView;

.field protected o:Landroid/widget/TextView;

.field protected p:Ljava/util/List;

.field protected q:Lcom/thinkyeah/smartlock/view/c;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/util/List;

.field private u:Lcom/thinkyeah/smartlock/aa;

.field private v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/thinkyeah/smartlock/w;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/w;-><init>(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->q:Lcom/thinkyeah/smartlock/view/c;

    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    new-instance v0, Lcom/thinkyeah/smartlock/x;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/x;-><init>(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Lcom/thinkyeah/smartlock/aa;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/thinkyeah/smartlock/view/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic h()[I
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->w:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/thinkyeah/smartlock/aa;->values()[Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->g:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->c:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->f:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->d:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->b:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/thinkyeah/smartlock/aa;->e:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->w:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final a(Lcom/thinkyeah/smartlock/aa;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v0, Lcom/thinkyeah/smartlock/aa;->c:Lcom/thinkyeah/smartlock/aa;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/thinkyeah/smartlock/aa;->h:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p1, Lcom/thinkyeah/smartlock/aa;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p1, Lcom/thinkyeah/smartlock/aa;->i:Lcom/thinkyeah/smartlock/y;

    sget-object v1, Lcom/thinkyeah/smartlock/y;->e:Lcom/thinkyeah/smartlock/y;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/thinkyeah/smartlock/aa;->j:Lcom/thinkyeah/smartlock/z;

    iget v1, v1, Lcom/thinkyeah/smartlock/z;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/thinkyeah/smartlock/aa;->j:Lcom/thinkyeah/smartlock/z;

    iget-boolean v1, v1, Lcom/thinkyeah/smartlock/z;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p1, Lcom/thinkyeah/smartlock/aa;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->c()V

    :goto_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    invoke-static {}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->h()[I

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_4
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->m:Landroid/widget/TextView;

    iget v1, p1, Lcom/thinkyeah/smartlock/aa;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->o:Landroid/widget/TextView;

    iget v1, p1, Lcom/thinkyeah/smartlock/aa;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/thinkyeah/smartlock/aa;->i:Lcom/thinkyeah/smartlock/y;

    iget v1, v1, Lcom/thinkyeah/smartlock/y;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/thinkyeah/smartlock/aa;->i:Lcom/thinkyeah/smartlock/y;

    iget-boolean v1, v1, Lcom/thinkyeah/smartlock/y;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->b()V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->b:Lcom/thinkyeah/smartlock/view/b;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->t:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a(Lcom/thinkyeah/smartlock/view/b;Ljava/util/List;)V

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->g()V

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    goto :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->c:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->g()V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->finish()V

    :cond_0
    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/aa;->i:Lcom/thinkyeah/smartlock/y;

    sget-object v1, Lcom/thinkyeah/smartlock/y;->c:Lcom/thinkyeah/smartlock/y;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/aa;->i:Lcom/thinkyeah/smartlock/y;

    sget-object v1, Lcom/thinkyeah/smartlock/y;->a:Lcom/thinkyeah/smartlock/y;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "left footer button pressed, but stage of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/aa;->j:Lcom/thinkyeah/smartlock/z;

    sget-object v1, Lcom/thinkyeah/smartlock/z;->a:Lcom/thinkyeah/smartlock/z;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->d:Lcom/thinkyeah/smartlock/aa;

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected ui stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/thinkyeah/smartlock/aa;->d:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/thinkyeah/smartlock/z;->a:Lcom/thinkyeah/smartlock/z;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/thinkyeah/smartlock/aa;->e:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/aa;->j:Lcom/thinkyeah/smartlock/z;

    sget-object v1, Lcom/thinkyeah/smartlock/z;->c:Lcom/thinkyeah/smartlock/z;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->g:Lcom/thinkyeah/smartlock/aa;

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected ui stage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/thinkyeah/smartlock/aa;->g:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/thinkyeah/smartlock/z;->c:Lcom/thinkyeah/smartlock/z;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/thinkyeah/smartlock/co;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/co;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/co;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->a()Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/aa;->j:Lcom/thinkyeah/smartlock/z;

    sget-object v1, Lcom/thinkyeah/smartlock/z;->e:Lcom/thinkyeah/smartlock/z;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->b:Lcom/thinkyeah/smartlock/aa;

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    sget-object v1, Lcom/thinkyeah/smartlock/view/b;->a:Lcom/thinkyeah/smartlock/view/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setDisplayMode(Lcom/thinkyeah/smartlock/view/b;)V

    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->requestWindowFeature(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v2}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v3}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v3}, Lcom/thinkyeah/smartlock/view/a;->a(II)Lcom/thinkyeah/smartlock/view/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->t:Ljava/util/List;

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->setContentView(I)V

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/LockPatternView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->q:Lcom/thinkyeah/smartlock/view/c;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setOnPatternListener(Lcom/thinkyeah/smartlock/view/c;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    const-string v1, "VibrationFeedbackEnabled"

    invoke-static {p0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/LockPatternView;->setTactileFeedbackEnabled(Z)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/thinkyeah/smartlock/aa;->e:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    invoke-static {p0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ToConfirmLockPattern"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_2
    const-string v0, "chosenPattern"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/thinkyeah/smartlock/co;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    :cond_3
    invoke-static {}, Lcom/thinkyeah/smartlock/aa;->values()[Lcom/thinkyeah/smartlock/aa;

    move-result-object v0

    const-string v1, "uiStage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v2, Lcom/thinkyeah/smartlock/aa;->b:Lcom/thinkyeah/smartlock/aa;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    sget-object v2, Lcom/thinkyeah/smartlock/aa;->a:Lcom/thinkyeah/smartlock/aa;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/thinkyeah/smartlock/aa;->b:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->a(Lcom/thinkyeah/smartlock/aa;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->u:Lcom/thinkyeah/smartlock/aa;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/aa;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->p:Ljava/util/List;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/co;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
