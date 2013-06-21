.class final La/d/y;
.super La/d/u;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, La/d/u;-><init>()V

    iput p1, p0, La/d/y;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/y;->b:J

    const/4 v0, 0x4

    iput-byte v0, p0, La/d/y;->g:B

    return-void
.end method


# virtual methods
.method final i([BI)I
    .locals 9

    const-wide/32 v7, 0x36ee80

    const-wide/16 v5, -0x1

    iget v0, p0, La/d/y;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/y;->a(J[BI)V

    add-int/lit8 v2, p2, 0x2

    iget-wide v0, p0, La/d/y;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v5, v6, p1, v2}, La/d/u;->b(J[BI)V

    :goto_0
    const/4 v0, 0x6

    return v0

    :cond_1
    sget-object v3, La/d/u;->ak:Ljava/util/TimeZone;

    monitor-enter v3

    :try_start_0
    sget-object v4, La/d/u;->ak:Ljava/util/TimeZone;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, La/d/u;->ak:Ljava/util/TimeZone;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_2

    sub-long/2addr v0, v7

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, v2}, La/d/u;->b(J[BI)V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v4, La/d/u;->ak:Ljava/util/TimeZone;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-long/2addr v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method final j([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final k([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final l([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComClose["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/y;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/d/y;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
