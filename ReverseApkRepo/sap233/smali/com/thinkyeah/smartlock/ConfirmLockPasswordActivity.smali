.class public Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;
.super Landroid/support/v4/app/g;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private m:Landroid/widget/TextView;

.field private n:Lcom/thinkyeah/smartlock/co;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/os/Handler;

.field private q:Lcom/thinkyeah/smartlock/view/f;

.field private r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->n:Lcom/thinkyeah/smartlock/co;

    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    invoke-virtual {v1, v0, v2}, Lcom/thinkyeah/smartlock/co;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->p:Landroid/os/Handler;

    new-instance v1, Lcom/thinkyeah/smartlock/ak;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ak;-><init>(Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->g()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0010
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/high16 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/thinkyeah/smartlock/co;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->n:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->q()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->o:Landroid/widget/TextView;

    const/4 v0, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->o:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    if-eqz v0, :cond_6

    const v0, 0x7f09008b

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/thinkyeah/smartlock/view/f;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    iget-object v4, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->m:Landroid/widget/TextView;

    invoke-direct {v0, p0, v3, v4}, Lcom/thinkyeah/smartlock/view/f;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->q:Lcom/thinkyeah/smartlock/view/f;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->q:Lcom/thinkyeah/smartlock/view/f;

    iget-boolean v3, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/view/f;->a(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->q:Lcom/thinkyeah/smartlock/view/f;

    const-string v1, "VibrationFeedbackEnabled"

    invoke-static {p0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x7f07

    :cond_1
    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/view/f;->b(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->requestFocus()Z

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->n:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->n:Lcom/thinkyeah/smartlock/co;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/co;->c()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->finish()V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const v0, 0x7f09008c

    goto :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onPause()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ConfirmLockPasswordActivity;->r:Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method
