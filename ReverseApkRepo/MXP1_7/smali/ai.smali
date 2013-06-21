.class Lai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lad;

.field final synthetic 궗:Li;

.field final synthetic 먯꽌:Lah;


# direct methods
.method constructor <init>(Lah;Lad;Li;)V
    .locals 0

    iput-object p1, p0, Lai;->먯꽌:Lah;

    iput-object p2, p0, Lai;->癤욱븳援:Lad;

    iput-object p3, p0, Lai;->궗:Li;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lai;->먯꽌:Lah;

    iget-object v1, p0, Lai;->癤욱븳援:Lad;

    iget-object v2, p0, Lai;->궗:Li;

    invoke-static {v0, v1, v2}, Lah;->癤욱븳援(Lah;Lad;Li;)V

    iget-object v0, p0, Lai;->먯꽌:Lah;

    invoke-static {v0}, Lah;->癤욱븳援(Lah;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lai;->먯꽌:Lah;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lah;->癤욱븳援(Lah;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
