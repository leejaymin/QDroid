.class final Lcom/thinkyeah/smartlock/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bi;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bj;->a:Lcom/thinkyeah/smartlock/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/bj;->a:Lcom/thinkyeah/smartlock/bi;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bi;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cf;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bj;->a:Lcom/thinkyeah/smartlock/bi;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bi;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/g;->finish()V
    :try_end_0
    .catch Lcom/thinkyeah/smartlock/ci; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ci;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bg;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bj;->a:Lcom/thinkyeah/smartlock/bi;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/bi;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "marketExceptionDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0
.end method
