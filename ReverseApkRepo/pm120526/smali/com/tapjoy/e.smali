.class final Lcom/tapjoy/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/d;


# direct methods
.method constructor <init>(Lcom/tapjoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/e;->a:Lcom/tapjoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tapjoy/aw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&publisher_user_id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/aw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tapjoy/bl;

    invoke-direct {v2}, Lcom/tapjoy/bl;-><init>()V

    const-string v2, "https://ws.tapjoyads.com/get_vg_store_items/user_account?"

    invoke-static {v2, v1}, Lcom/tapjoy/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/e;->a:Lcom/tapjoy/d;

    invoke-static {v0, v1}, Lcom/tapjoy/d;->a(Lcom/tapjoy/d;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/tapjoy/d;->a()Lcom/tapjoy/bk;

    :cond_1
    return-void
.end method
