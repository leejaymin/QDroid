.class final Lcom/thinkyeah/smartlock/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/i;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/di;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/di;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dk;->a:Lcom/thinkyeah/smartlock/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/dk;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/di;->a(Lcom/thinkyeah/smartlock/di;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/dk;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/di;->b(Lcom/thinkyeah/smartlock/di;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/dk;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/di;->c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "DelayLockEnabled"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    :goto_1
    const-string v1, "DelayLockEnabled"

    invoke-static {v4, v1, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->d()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/thinkyeah/smartlock/dk;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/di;->c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "NotificationTransparent"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    :goto_2
    const-string v1, "NotificationTransparent"

    invoke-static {v4, v1, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->f()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
