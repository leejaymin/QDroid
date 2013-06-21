.class final Lcom/tapjoy/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/by;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/tapjoy/bl;

    invoke-direct {v0}, Lcom/tapjoy/bl;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyVideoView;->a()Lcom/tapjoy/bp;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/bp;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tapjoy/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    const-string v1, "CLICK REQUEST SUCCESS!"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/by;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->e(Lcom/tapjoy/TapjoyVideoView;)V

    :cond_0
    return-void
.end method
