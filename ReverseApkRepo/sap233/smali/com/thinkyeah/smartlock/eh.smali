.class final Lcom/thinkyeah/smartlock/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/eg;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/eh;->a:Lcom/thinkyeah/smartlock/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/eh;->a:Lcom/thinkyeah/smartlock/eg;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/eg;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/ForgotPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/eh;->a:Lcom/thinkyeah/smartlock/eg;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/eg;->a(Landroid/content/Intent;)V

    return-void
.end method
