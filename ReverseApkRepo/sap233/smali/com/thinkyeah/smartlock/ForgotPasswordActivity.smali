.class public Lcom/thinkyeah/smartlock/ForgotPasswordActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:I

.field private s:Lcom/thinkyeah/common/thinklist/a;

.field private t:Lcom/thinkyeah/smartlock/ap;

.field private u:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/bb;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/bb;-><init>(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->u:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)Lcom/thinkyeah/common/thinklist/a;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->s:Lcom/thinkyeah/common/thinklist/a;

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    return-void
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/thinkyeah/common/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/thinkyeah/smartlock/be;->F()Lcom/thinkyeah/smartlock/be;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v4, "incorrectEmailFormatDialog"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/ap;->a(I)V

    iget v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "AuthenticationEmail"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->finish()V

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/thinkyeah/smartlock/bf;->F()Lcom/thinkyeah/smartlock/bf;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v4, "incorrectQAndAFormatDialog"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "PatternForgotQuestion"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "PatternForgotAnswer"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/bd;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/bd;-><init>(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->p:Landroid/widget/EditText;

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/thinkyeah/smartlock/bc;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/bc;-><init>(Lcom/thinkyeah/smartlock/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->q:Landroid/widget/EditText;

    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->m:Landroid/view/ViewGroup;

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->n:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const-string v0, "MethodChoice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v2, 0x7f0900a4

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v3, v2}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->u:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v2, 0x7f0900a5

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v3, v2}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->u:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/a;

    iget v3, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    invoke-direct {v2, v1, v3}, Lcom/thinkyeah/common/thinklist/a;-><init>(Ljava/util/List;I)V

    iput-object v2, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->s:Lcom/thinkyeah/common/thinklist/a;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->s:Lcom/thinkyeah/common/thinklist/a;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    iget v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->c(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ai;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ai;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ai;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->t:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->s()I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MethodChoice"

    iget v1, p0, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;->finish()V

    return-void
.end method
