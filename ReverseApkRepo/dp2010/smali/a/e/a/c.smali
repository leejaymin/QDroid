.class public abstract La/e/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static B:I

.field static C:La/e/e;


# instance fields
.field D:I

.field E:Ljava/lang/String;

.field F:Ljava/lang/Thread;

.field G:La/e/a/d;

.field protected H:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, La/e/a/c;->B:I

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/e/a/c;->C:La/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/e/a/c;->D:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, La/e/a/c;->B:I

    add-int/lit8 v2, v1, 0x1

    sput v2, La/e/a/c;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/e/a/c;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, La/e/a/c;->H:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    monitor-enter p0

    :try_start_0
    iget v0, p0, La/e/a/c;->D:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, La/e/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/e/a/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/e/a/d;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, La/e/a/c;->D:I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, La/e/a/c;->D:I

    const/4 v1, 0x0

    iput-object v1, p0, La/e/a/c;->F:Ljava/lang/Thread;

    new-instance v1, La/e/a/d;

    invoke-direct {v1, v0}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget v1, p0, La/e/a/c;->D:I

    if-eqz v1, :cond_1

    iget v1, p0, La/e/a/c;->D:I

    if-eq v1, v3, :cond_1

    iget v1, p0, La/e/a/c;->D:I

    if-eq v1, v4, :cond_1

    sget-object v1, La/e/a/c;->C:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/e/a/c;->C:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, La/e/a/c;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, La/e/a/c;->D:I

    const/4 v1, 0x0

    iput-object v1, p0, La/e/a/c;->F:Ljava/lang/Thread;

    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_3
    iget v0, p0, La/e/a/c;->D:I

    if-eqz v0, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v3, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v4, :cond_3

    sget-object v0, La/e/a/c;->C:La/e/e;

    sget v0, La/e/e;->a:I

    if-lez v0, :cond_2

    sget-object v0, La/e/a/c;->C:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/e/a/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_2
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, La/e/a/c;->D:I

    new-instance v0, La/e/a/d;

    const-string v1, "Connection in error"

    iget-object v2, p0, La/e/a/c;->G:La/e/a/d;

    invoke-direct {v0, v1, v2}, La/e/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->G:La/e/a/d;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, La/e/a/c;->E:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    iget-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, La/e/a/c;->F:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget v0, p0, La/e/a/c;->D:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    packed-switch v0, :pswitch_data_1

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget v0, p0, La/e/a/c;->D:I

    if-eqz v0, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v3, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v4, :cond_3

    sget-object v0, La/e/a/c;->C:La/e/e;

    sget v0, La/e/e;->a:I

    if-lez v0, :cond_4

    sget-object v0, La/e/a/c;->C:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/e/a/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :try_start_8
    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    new-instance v0, La/e/a/d;

    const-string v2, "Connection timeout"

    invoke-direct {v0, v2}, La/e/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :pswitch_5
    :try_start_a
    iget-object v0, p0, La/e/a/c;->G:La/e/a/d;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    iget-object v0, p0, La/e/a/c;->G:La/e/a/d;

    throw v0

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, La/e/a/c;->D:I

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget v0, p0, La/e/a/c;->D:I

    if-eqz v0, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v3, :cond_3

    iget v0, p0, La/e/a/c;->D:I

    if-eq v0, v4, :cond_3

    sget-object v0, La/e/a/c;->C:La/e/e;

    sget v0, La/e/e;->a:I

    if-lez v0, :cond_6

    sget-object v0, La/e/a/c;->C:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/e/a/c;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, La/e/a/c;->D:I

    const/4 v0, 0x0

    iput-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract a(La/e/a/a;)V
.end method

.method public final declared-synchronized a(La/e/a/a;La/e/a/b;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, La/e/a/c;->a(La/e/a/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p2, La/e/a/b;->b_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, La/e/a/c;->H:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, La/e/a/c;->b(La/e/a/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p2, La/e/a/b;->a_:J

    :cond_0
    iget-boolean v0, p2, La/e/a/b;->b_:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-wide v0, p2, La/e/a/b;->a_:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p3, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, La/e/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/e/a/c;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timedout waiting for response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/e/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, La/e/a/c;->C:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    sget-object v1, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, La/e/a/c;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, La/e/a/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    iget-object v0, p0, La/e/a/c;->H:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_7
    sget-object v2, La/e/a/c;->C:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, La/e/a/d;

    invoke-direct {v1, v0}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected abstract a(La/e/a/b;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b()V
.end method

.method protected abstract b(La/e/a/a;)V
.end method

.method public final declared-synchronized b(Z)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, La/e/a/c;->D:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, La/e/a/c;->C:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/e/a/c;->C:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, La/e/a/c;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, La/e/a/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, La/e/a/c;->D:I

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    const/4 p1, 0x1

    :pswitch_2
    :try_start_1
    iget-object v1, p0, La/e/a/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, La/e/a/c;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :pswitch_3
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, La/e/a/c;->F:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, La/e/a/c;->D:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :pswitch_4
    monitor-exit p0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract c()La/e/a/a;
.end method

.method protected abstract d()V
.end method

.method public run()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, La/e/a/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    monitor-enter v1

    :try_start_1
    iget-object v4, p0, La/e/a/c;->F:Ljava/lang/Thread;

    if-eq v1, v4, :cond_e

    if-eqz v0, :cond_0

    sget-object v2, La/e/a/c;->C:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v5, :cond_0

    sget-object v2, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    new-instance v3, La/e/a/d;

    invoke-direct {v3, v0}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, La/e/a/c;->G:La/e/a/d;

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, La/e/a/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    throw v2

    :cond_4
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v1, p0, La/e/a/c;->H:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/e/a/b;

    if-nez v0, :cond_7

    sget-object v0, La/e/a/c;->C:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    sget-object v0, La/e/a/c;->C:La/e/e;

    const-string v1, "Invalid key, skipping message"

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, La/e/a/c;->d()V

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    iget-object v0, p0, La/e/a/c;->F:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :try_start_5
    invoke-virtual {p0}, La/e/a/c;->c()La/e/a/a;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v4, "Read timed out"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v4, v2

    :goto_3
    if-nez v4, :cond_9

    move v1, v2

    :goto_4
    if-nez v4, :cond_6

    sget-object v4, La/e/a/c;->C:La/e/e;

    sget v4, La/e/e;->a:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_6

    sget-object v4, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    :try_start_6
    invoke-virtual {p0, v1}, La/e/a/c;->b(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :cond_7
    :try_start_7
    invoke-virtual {p0, v0}, La/e/a/c;->a(La/e/a/b;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, La/e/a/b;->b_:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    move v4, v3

    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_4

    :catch_2
    move-exception v0

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, La/e/a/c;->F:Ljava/lang/Thread;

    if-eq v1, v2, :cond_c

    if-eqz v0, :cond_a

    sget-object v2, La/e/a/c;->C:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v5, :cond_a

    sget-object v2, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_a
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v2

    monitor-enter v1

    :try_start_a
    iget-object v3, p0, La/e/a/c;->F:Ljava/lang/Thread;

    if-eq v1, v3, :cond_2

    if-eqz v0, :cond_b

    sget-object v2, La/e/a/c;->C:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v5, :cond_b

    sget-object v2, La/e/a/c;->C:La/e/e;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_b
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_c
    if-eqz v0, :cond_d

    :try_start_b
    new-instance v2, La/e/a/d;

    invoke-direct {v2, v0}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, La/e/a/c;->G:La/e/a/d;

    :cond_d
    const/4 v0, 0x2

    iput v0, p0, La/e/a/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    :try_start_c
    new-instance v4, La/e/a/d;

    invoke-direct {v4, v0}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, La/e/a/c;->G:La/e/a/d;

    :cond_f
    const/4 v0, 0x2

    iput v0, p0, La/e/a/c;->D:I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/e/a/c;->E:Ljava/lang/String;

    return-object v0
.end method
