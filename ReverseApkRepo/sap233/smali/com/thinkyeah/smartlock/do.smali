.class final Lcom/thinkyeah/smartlock/do;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/i;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/di;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/di;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/do;->a:Lcom/thinkyeah/smartlock/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/do;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/di;->c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v1

    iget-object v2, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v3, "ScreenOffLock"

    invoke-static {v2, v3, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v1, v1, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v2, "ScreenOffLock"

    invoke-static {v1, v2, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
