.class final Lcom/tapjoy/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/bz;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/bz;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->f(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/aw;->a()Lcom/tapjoy/aw;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyVideoView;->a()Lcom/tapjoy/bp;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/bp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/aw;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
