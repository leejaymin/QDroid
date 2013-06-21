.class public Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field private m:Lcom/thinkyeah/smartlock/ap;

.field private n:Lcom/thinkyeah/common/thinklist/a;

.field private o:I

.field private p:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/ae;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/ae;-><init>(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->p:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)Lcom/thinkyeah/common/thinklist/a;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->o:I

    return-void
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;I)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PasswordType"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PasswordType"

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eq p2, v3, :cond_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget v1, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->o:I

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "LockType"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->setResult(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/af;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/af;-><init>(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const/4 v2, 0x0

    const v3, 0x7f09006a

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->p:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v2, 0x7f09006b

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v4, v2}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->p:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const/4 v2, 0x2

    const v3, 0x7f09006c

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->p:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->o:I

    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/a;

    iget v3, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->o:I

    invoke-direct {v2, v1, v3}, Lcom/thinkyeah/common/thinklist/a;-><init>(Ljava/util/List;I)V

    iput-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    const/16 v1, 0x1b

    invoke-virtual {v0, p0, v1}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/app/Activity;I)Z

    :cond_0
    return-void
.end method
