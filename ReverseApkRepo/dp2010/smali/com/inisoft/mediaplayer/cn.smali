.class public final Lcom/inisoft/mediaplayer/cn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/inisoft/mediaplayer/bx;

.field private d:Lb/a/a/a/a/c;

.field private e:J

.field private f:Ljava/io/InputStream;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/bx;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cn;->c:Lcom/inisoft/mediaplayer/bx;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/cn;->a:Ljava/lang/String;

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cn;->g:Z

    return-void
.end method

.method private b([BI)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cn;->d()Z

    :cond_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->h()Lb/a/a/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    :goto_0
    if-lt v0, p2, :cond_2

    :cond_1
    iget-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    add-int/lit8 v2, v0, 0x0

    sub-int v3, p2, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_3

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "Unable to retrieve input stream for file (reply code %d)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lb/a/a/a/a/c;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cn;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cn;->e()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->d:Lb/a/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->c:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cn;->d:Lb/a/a/a/a/c;

    :cond_0
    return-void
.end method

.method private h()Lb/a/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->d:Lb/a/a/a/a/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->c:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->g()Lb/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cn;->d:Lb/a/a/a/a/c;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->d:Lb/a/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a([BI)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/cn;->b([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->g()V

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/cn;->b([BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cn;->g:Z

    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->f()V

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cn;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/cn;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .locals 5

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/cn;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cn;->c:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bx;->b()[Lb/a/a/a/a/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_2
    iget-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->b:J

    :goto_3
    return-wide v0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->g()V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cn;->c:Lcom/inisoft/mediaplayer/bx;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bx;->b()[Lb/a/a/a/a/h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lb/a/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/cn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lb/a/a/a/a/h;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->b:J

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    return-wide v0
.end method

.method public final d()Z
    .locals 5

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->h()Lb/a/a/a/a/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/c;->a(J)V

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->g()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/cn;->h()Lb/a/a/a/a/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/cn;->e:J

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/c;->a(J)V

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/cn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/c;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cn;->f:Ljava/io/InputStream;

    :cond_0
    return-void
.end method
