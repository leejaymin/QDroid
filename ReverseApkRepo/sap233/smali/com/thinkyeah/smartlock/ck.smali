.class final Lcom/thinkyeah/smartlock/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cj;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/cj;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/cj;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Lcom/thinkyeah/smartlock/cj;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Lcom/thinkyeah/smartlock/cj;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Lcom/thinkyeah/smartlock/cj;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/cj;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cj;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cf;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/thinkyeah/smartlock/ci; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ci;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cg;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/cj;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "marketExceptionDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/cj;->j()Landroid/support/v4/app/g;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ck;->a:Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/cj;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
