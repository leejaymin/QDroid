.class final Lcom/thinkyeah/smartlock/bq;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bn;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/bn;J)V
    .locals 2

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bq;->a:Lcom/thinkyeah/smartlock/bn;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bq;->a:Lcom/thinkyeah/smartlock/bn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bq;->a:Lcom/thinkyeah/smartlock/bn;

    sget-object v1, Lcom/thinkyeah/smartlock/ce;->a:Lcom/thinkyeah/smartlock/ce;

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/bn;->a(Lcom/thinkyeah/smartlock/bn;Lcom/thinkyeah/smartlock/ce;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 6

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/bq;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/bn;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/bq;->a:Lcom/thinkyeah/smartlock/bn;

    const v3, 0x7f090054

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/thinkyeah/smartlock/bn;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
