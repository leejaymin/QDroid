.class final Lcom/tapjoy/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/aw;


# direct methods
.method constructor <init>(Lcom/tapjoy/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ax;->a:Lcom/tapjoy/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/aw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/aw;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/aw;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/tapjoy/aw;->l()Lcom/tapjoy/bl;

    const-string v1, "https://ws.tapjoyads.com/connect?"

    invoke-static {v1, v0}, Lcom/tapjoy/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tapjoy/aw;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to tapjoy site."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
