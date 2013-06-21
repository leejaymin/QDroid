.class final La/d/aj;
.super La/d/u;

# interfaces
.implements La/d/j;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/d/u;-><init>()V

    iput v2, p0, La/d/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/aj;->b:J

    iput v2, p0, La/d/aj;->d:I

    iput-wide p1, p0, La/d/aj;->c:J

    const/16 v0, 0x8

    iput-byte v0, p0, La/d/aj;->g:B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/d/aj;->a:I

    return v0
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, La/d/aj;->b:J

    iget-wide v2, p0, La/d/aj;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, La/d/aj;->b:J

    iget-wide v2, p0, La/d/aj;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget v0, p0, La/d/aj;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final i([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final j([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final k([BI)I
    .locals 3

    iget v0, p0, La/d/aj;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, La/d/aj;->d([BI)I

    move-result v0

    iput v0, p0, La/d/aj;->a:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/aj;->h([BI)J

    move-result-wide v1

    iput-wide v1, p0, La/d/aj;->b:J

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/aj;->e([BI)I

    move-result v0

    iput v0, p0, La/d/aj;->d:I

    const/16 v0, 0x14

    goto :goto_0
.end method

.method final l([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComQueryInformationResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/aj;->a:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, La/d/aj;->b:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/aj;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
