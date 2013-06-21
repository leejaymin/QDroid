.class final Lcom/thinkyeah/smartlock/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->a(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/common/thinklist/a;->a(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->a(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/a;->b()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->b(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-static {p1}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->c(I)I

    move-result v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "DelayTime"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/s;->a:Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->finish()V

    return-void
.end method
