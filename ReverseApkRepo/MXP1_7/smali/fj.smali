.class Lfj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lfh;

.field private 궗:Landroid/os/Handler;

.field private final 먯꽌:I


# direct methods
.method constructor <init>(Lfh;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lfj;->癤욱븳援:Lfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfj;->궗:Landroid/os/Handler;

    iput p3, p0, Lfj;->먯꽌:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v0, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v0}, Lfh;->궗(Lfh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v0}, Lfh;->癤욱븳援(Lfh;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth_time_next"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v2}, Lfh;->먯꽌(Lfh;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    iget-object v3, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v3}, Lfh;->ㅼ꽑嫄(Lfh;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lfj;->궗:Landroid/os/Handler;

    iget v1, p0, Lfj;->먯꽌:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lfj;->궗:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, p0, Lfj;->궗:Landroid/os/Handler;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v0}, Lfh;->먯꽌(Lfh;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    iget-object v0, p0, Lfj;->癤욱븳援:Lfh;

    invoke-static {v0}, Lfh;->ㅼ꽑嫄(Lfh;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    sget-boolean v0, Lej;->癤욱븳援:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x1d4c0

    :goto_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lfj;->궗:Landroid/os/Handler;

    iget v1, p0, Lfj;->먯꽌:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lfj;->궗:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, p0, Lfj;->궗:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x927c0

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lfj;->궗:Landroid/os/Handler;

    throw v0
.end method
