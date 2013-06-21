.class public final Lcom/tapjoy/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/aw;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tapjoy/aw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ay;->a:Lcom/tapjoy/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/ay;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/tapjoy/aw;->l()Lcom/tapjoy/bl;

    const-string v0, "https://ws.tapjoyads.com/connect?"

    iget-object v1, p0, Lcom/tapjoy/ay;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/ay;->a:Lcom/tapjoy/aw;

    invoke-static {v0}, Lcom/tapjoy/aw;->c(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
