.class final La/d/cc;
.super La/d/ap;


# instance fields
.field private a:La/d/bc;


# direct methods
.method constructor <init>(La/d/bc;)V
    .locals 0

    invoke-direct {p0}, La/d/ap;-><init>()V

    iput-object p1, p0, La/d/cc;->a:La/d/bc;

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a([BII)I
    .locals 2

    iget-object v0, p0, La/d/cc;->a:La/d/bc;

    iget-object v0, v0, La/d/bc;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/cc;->a:La/d/bc;

    iget-object v0, v0, La/d/bc;->p:Ljava/io/InputStream;

    check-cast v0, La/d/cf;

    iget-object v1, v0, La/d/cf;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, La/d/cf;->b([BII)I

    iget-object v0, v0, La/d/cf;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return p3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransTransactNamedPipeResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
