.class public Lgn;
.super Lgp;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/media/service/FFService;


# direct methods
.method public constructor <init>(Lcom/mxtech/media/service/FFService;)V
    .locals 0

    iput-object p1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-direct {p0}, Lgp;-><init>()V

    return-void
.end method


# virtual methods
.method public ㅼ꽑嫄(I)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->duration(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public ㅼ꽑嫄(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamCodec(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 弱밧(I)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->height(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 弱밧(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamFrameTime(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 洹(I)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->getStreamCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 洹(II)J
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamChannelLayout(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v2}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamWidth(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service is being destroyed. TID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->native_create(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v3}, Lcom/mxtech/media/service/FFService;->궗(Lcom/mxtech/media/service/FFService;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaReader creation failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(IIIIZ)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mxtech/media/MediaReader;->extractThumb(IIIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(IIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/mxtech/media/MediaReader;->getStreamMetadata(IIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/mxtech/media/MediaReader;->getMetadata(IILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 癤욱븳援(I)V
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->궗(Lcom/mxtech/media/service/FFService;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->native_release(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 궗(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamHeight(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 궗(I)V
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 대쫫(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamSampleRate(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 대쫫(I)Z
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->embedSubtitle(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 먯꽌(I)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->frameTime(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 먯꽌(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamType(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 몃Ъ(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamChannelCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 몃Ъ(I)[I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->getStreamTypes(I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 쇰뒗(I)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mxtech/media/MediaReader;->width(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public 쇰뒗(II)I
    .locals 3

    iget-object v0, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v0}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mxtech/media/service/FFService;->癤욱븳援()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is being destroyed. TID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/mxtech/media/MediaReader;->getStreamBitRate(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgn;->癤욱븳援:Lcom/mxtech/media/service/FFService;

    invoke-static {v1}, Lcom/mxtech/media/service/FFService;->癤욱븳援(Lcom/mxtech/media/service/FFService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method
