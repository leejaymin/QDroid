.class public Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;
.super Landroid/support/v4/app/g;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static A:Landroid/os/Handler;


# instance fields
.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:Lcom/thinkyeah/smartlock/co;

.field private q:I

.field private r:Lcom/thinkyeah/smartlock/ap;

.field private s:Lcom/thinkyeah/smartlock/v;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/lang/String;

.field private v:Landroid/inputmethodservice/KeyboardView;

.field private w:Lcom/thinkyeah/smartlock/view/f;

.field private x:Z

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->A:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->o:I

    const/high16 v0, 0x2

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    sget-object v0, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090091

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const v0, 0x7f090092

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->o:I

    if-le v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    if-eqz v0, :cond_2

    const v0, 0x7f090093

    :goto_2
    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f090094

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_4

    const/high16 v0, 0x2

    iget v6, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    if-ne v0, v6, :cond_b

    or-int v0, v4, v2

    if-eqz v0, :cond_b

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_5

    const/16 v7, 0x7f

    if-le v6, v7, :cond_6

    :cond_5
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/16 v7, 0x30

    if-lt v6, v7, :cond_7

    const/16 v7, 0x39

    if-gt v6, v7, :cond_7

    move v3, v5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v7, 0x41

    if-lt v6, v7, :cond_8

    const/16 v7, 0x5a

    if-le v6, v7, :cond_9

    :cond_8
    const/16 v7, 0x61

    if-lt v6, v7, :cond_a

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_a

    :cond_9
    move v4, v5

    goto :goto_4

    :cond_a
    move v2, v5

    goto :goto_4

    :cond_b
    const/high16 v0, 0x4

    iget v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    if-ne v0, v2, :cond_d

    move v0, v5

    :goto_5
    const/high16 v2, 0x5

    iget v6, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    if-ne v2, v6, :cond_e

    :goto_6
    if-nez v0, :cond_c

    if-eqz v5, :cond_f

    :cond_c
    if-nez v4, :cond_f

    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    move v5, v1

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    if-nez v3, :cond_10

    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    sget-object v3, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    if-ne v0, v3, :cond_3

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->u:Ljava/lang/String;

    sget-object v1, Lcom/thinkyeah/smartlock/v;->b:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->A:Landroid/os/Handler;

    new-instance v2, Lcom/thinkyeah/smartlock/u;

    invoke-direct {v2, p0, v1}, Lcom/thinkyeah/smartlock/u;-><init>(Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;Lcom/thinkyeah/smartlock/v;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    sget-object v3, Lcom/thinkyeah/smartlock/v;->b:Lcom/thinkyeah/smartlock/v;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->p:Lcom/thinkyeah/smartlock/co;

    iget v3, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    invoke-virtual {v0, v1, v3}, Lcom/thinkyeah/smartlock/co;->a(Ljava/lang/String;I)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->finish()V

    move-object v0, v2

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/thinkyeah/smartlock/v;->c:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method private h()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    sget-object v5, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    if-ne v4, v5, :cond_4

    if-lez v3, :cond_4

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    if-ge v3, v4, :cond_2

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090091

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    :cond_0
    :goto_1
    move-object v1, v0

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    iget v1, v1, Lcom/thinkyeah/smartlock/v;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_1
    const v0, 0x7f090092

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    const v2, 0x7f090099

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    iget v0, v0, Lcom/thinkyeah/smartlock/v;->d:I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    if-lez v3, :cond_0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    iget v0, v0, Lcom/thinkyeah/smartlock/v;->e:I

    goto :goto_3
.end method


# virtual methods
.method protected final a(Lcom/thinkyeah/smartlock/v;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->h()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    sget-object v1, Lcom/thinkyeah/smartlock/v;->c:Lcom/thinkyeah/smartlock/v;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/thinkyeah/smartlock/v;->b:Lcom/thinkyeah/smartlock/v;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    :cond_0
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->h()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->g()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0010
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/high16 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/thinkyeah/smartlock/co;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->p:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "PasswordType"

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lockscreen.password_min"

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->n:I

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lockscreen.password_max"

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->o:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->o:I

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "confirm_credentials"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->v:Landroid/inputmethodservice/KeyboardView;

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/high16 v0, 0x4

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    if-eq v0, v4, :cond_3

    const/high16 v0, 0x5

    iget v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->q:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    new-instance v0, Lcom/thinkyeah/smartlock/view/f;

    iget-object v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->v:Landroid/inputmethodservice/KeyboardView;

    iget-object v5, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-direct {v0, p0, v4, v5}, Lcom/thinkyeah/smartlock/view/f;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->w:Lcom/thinkyeah/smartlock/view/f;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->w:Lcom/thinkyeah/smartlock/view/f;

    iget-boolean v4, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->x:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/f;->a(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->w:Lcom/thinkyeah/smartlock/view/f;

    const-string v2, "VibrationFeedbackEnabled"

    invoke-static {p0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v1, 0x7f07

    :cond_1
    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/f;->b(I)V

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->v:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/ap;

    if-nez p1, :cond_2

    sget-object v0, Lcom/thinkyeah/smartlock/v;->a:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/ap;

    const/16 v1, 0x3a

    invoke-virtual {v0, p0, v1}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/app/Activity;I)Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/v;->valueOf(Ljava/lang/String;)Lcom/thinkyeah/smartlock/v;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->v:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->s:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/v;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
