.class final Lcom/thinkyeah/smartlock/dl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/di;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/di;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    const/16 v2, 0x1c

    invoke-virtual {v1, v0, v2}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PasswordType"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PasswordType"

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dl;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/di;->a(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
