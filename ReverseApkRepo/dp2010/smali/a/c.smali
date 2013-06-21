.class final La/c;
.super Ljava/lang/Thread;


# instance fields
.field a:La/d;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:La/b/g;

.field f:Ljava/net/InetAddress;

.field g:Ljava/net/UnknownHostException;


# direct methods
.method constructor <init>(La/d;Ljava/lang/String;ILjava/net/InetAddress;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JCIFS-QueryThread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, La/c;->e:La/b/g;

    iput-object p1, p0, La/c;->a:La/d;

    iput-object p2, p0, La/c;->b:Ljava/lang/String;

    iput p3, p0, La/c;->d:I

    iput-object v2, p0, La/c;->c:Ljava/lang/String;

    iput-object p4, p0, La/c;->f:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La/c;->b:Ljava/lang/String;

    iget v1, p0, La/c;->d:I

    iget-object v2, p0, La/c;->c:Ljava/lang/String;

    iget-object v3, p0, La/c;->f:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, v3}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    iput-object v0, p0, La/c;->e:La/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, La/c;->a:La/d;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, La/c;->a:La/d;

    iget v2, v0, La/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/d;->a:I

    iget-object v0, p0, La/c;->a:La/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iput-object v0, p0, La/c;->g:Ljava/net/UnknownHostException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v1, p0, La/c;->a:La/d;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/c;->a:La/d;

    iget v2, v0, La/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/d;->a:I

    iget-object v0, p0, La/c;->a:La/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/c;->g:Ljava/net/UnknownHostException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v1, p0, La/c;->a:La/d;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, La/c;->a:La/d;

    iget v2, v0, La/d;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/d;->a:I

    iget-object v0, p0, La/c;->a:La/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, La/c;->a:La/d;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, La/c;->a:La/d;

    iget v3, v2, La/d;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, La/d;->a:I

    iget-object v2, p0, La/c;->a:La/d;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method
