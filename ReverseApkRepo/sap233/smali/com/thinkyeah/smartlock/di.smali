.class public Lcom/thinkyeah/smartlock/di;
.super Lcom/thinkyeah/common/b/a;


# instance fields
.field private W:Lcom/thinkyeah/common/thinklist/i;

.field private X:Lcom/thinkyeah/common/thinklist/e;

.field private Y:Lcom/thinkyeah/common/thinklist/i;

.field private d:Lcom/thinkyeah/smartlock/ap;

.field private e:Lcom/thinkyeah/common/thinklist/b;

.field private f:Landroid/os/Handler;

.field private g:Lcom/thinkyeah/common/thinklist/e;

.field private h:Lcom/thinkyeah/common/thinklist/i;

.field private i:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/thinkyeah/common/b/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->f:Landroid/os/Handler;

    new-instance v0, Lcom/thinkyeah/smartlock/dj;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/dj;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->g:Lcom/thinkyeah/common/thinklist/e;

    new-instance v0, Lcom/thinkyeah/smartlock/dk;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/dk;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->h:Lcom/thinkyeah/common/thinklist/i;

    new-instance v0, Lcom/thinkyeah/smartlock/dl;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/dl;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    new-instance v0, Lcom/thinkyeah/smartlock/dm;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/dm;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->W:Lcom/thinkyeah/common/thinklist/i;

    new-instance v0, Lcom/thinkyeah/smartlock/dn;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/dn;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->X:Lcom/thinkyeah/common/thinklist/e;

    new-instance v0, Lcom/thinkyeah/smartlock/do;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/do;-><init>(Lcom/thinkyeah/smartlock/di;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->Y:Lcom/thinkyeah/common/thinklist/i;

    return-void
.end method

.method public static F()Lcom/thinkyeah/common/b/f;
    .locals 1

    new-instance v0, Lcom/thinkyeah/smartlock/dp;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/dp;-><init>()V

    return-object v0
.end method

.method private H()V
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v2

    new-instance v3, Lcom/thinkyeah/common/thinklist/f;

    const v4, 0x7f09002c

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v7, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v3, v4}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thinkyeah/common/thinklist/f;->setComment(Ljava/lang/String;)V

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const v3, 0x7f090030

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v5, v3}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const/16 v3, 0xa

    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v5}, Lcom/thinkyeah/smartlock/ap;->n()Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->W:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const/4 v3, 0x4

    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    iget-object v5, v5, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v6, "VibrationFeedbackEnabled"

    invoke-static {v5, v6, v7}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->W:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x5

    const v4, 0x7f090031

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b004f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    return-void

    :cond_1
    if-ne v5, v2, :cond_2

    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thinkyeah/common/thinklist/f;->setComment(Ljava/lang/String;)V

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v6, v3}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v6, v2, :cond_0

    const v2, 0x7f09002f

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thinkyeah/common/thinklist/f;->setComment(Ljava/lang/String;)V

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x3

    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->i:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/di;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/bl;->F()Lcom/thinkyeah/smartlock/bl;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v3, "notLicensedDialog"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ap;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v2, 0x7f09003a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const-class v3, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1b

    invoke-virtual {p0, v1, v2}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/thinkyeah/smartlock/dt;->F()Lcom/thinkyeah/smartlock/dt;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/di;)Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/dr;->F()Lcom/thinkyeah/smartlock/dr;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/l;

    const-string v2, "disableNotificationDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->j()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->e:Lcom/thinkyeah/common/thinklist/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/b;->b(I)Lcom/thinkyeah/common/thinklist/c;

    move-result-object v0

    instance-of v1, v0, Lcom/thinkyeah/common/thinklist/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/thinkyeah/common/thinklist/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->j()V

    return-void
.end method

.method protected final a()I
    .locals 1

    const v0, 0x7f030020

    return v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/thinkyeah/common/b/a;->a(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->e:Lcom/thinkyeah/common/thinklist/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/b;->b(I)Lcom/thinkyeah/common/thinklist/c;

    move-result-object v0

    instance-of v1, v0, Lcom/thinkyeah/common/thinklist/h;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/thinkyeah/common/thinklist/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->f:Landroid/os/Handler;

    new-instance v1, Lcom/thinkyeah/smartlock/dq;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/dq;-><init>(Lcom/thinkyeah/smartlock/di;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/di;->H()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09000c

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f02005a

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/a;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const v3, 0x7f090026

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v4}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v4

    invoke-direct {v2, v0, v7, v3, v4}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->h:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const v3, 0x7f090027

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    iget-object v4, v4, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v5, "DelayLockEnabled"

    invoke-static {v4, v5, v7}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v2, v0, v8, v3, v4}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->h:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const v3, 0x7f090028

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v9, v3}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->g:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const/4 v3, 0x3

    const v4, 0x7f090029

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v5}, Lcom/thinkyeah/smartlock/ap;->g()Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->h:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const/4 v3, 0x4

    const v4, 0x7f09002a

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    iget-object v5, v5, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v6, "NotificationTransparent"

    invoke-static {v5, v6, v7}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->h:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b004e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/thinkyeah/smartlock/di;->e:Lcom/thinkyeah/common/thinklist/b;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/di;->e:Lcom/thinkyeah/common/thinklist/b;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/di;->H()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v7, v3}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->X:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/h;

    const v3, 0x7f090038

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    iget-object v4, v4, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v5, "ScreenOffLock"

    invoke-static {v4, v5, v8}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v2, v0, v8, v3, v4}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->Y:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/di;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v9, v3}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/di;->X:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const-class v2, Lcom/thinkyeah/smartlock/SettingHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final r()V
    .locals 2

    invoke-super {p0}, Lcom/thinkyeah/common/b/a;->r()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/di;->e:Lcom/thinkyeah/common/thinklist/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/b;->b(I)Lcom/thinkyeah/common/thinklist/c;

    move-result-object v0

    instance-of v1, v0, Lcom/thinkyeah/common/thinklist/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/thinkyeah/common/thinklist/h;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/di;->d:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonEnabled(Z)V

    :cond_0
    return-void
.end method
