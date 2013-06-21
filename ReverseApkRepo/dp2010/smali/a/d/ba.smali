.class public La/d/ba;
.super Ljava/io/InputStream;


# instance fields
.field a:La/d/az;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:[B


# direct methods
.method public constructor <init>(La/d/az;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, La/d/ba;-><init>(La/d/az;I)V

    return-void
.end method

.method constructor <init>(La/d/az;I)V
    .locals 2

    const v1, 0xffff

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, La/d/ba;->f:[B

    iput-object p1, p0, La/d/ba;->a:La/d/az;

    and-int v0, p2, v1

    iput v0, p0, La/d/ba;->d:I

    ushr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, La/d/ba;->e:I

    iget v0, p1, La/d/az;->k:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, La/d/ba;->e:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, La/d/az;->a(III)V

    iget v0, p0, La/d/ba;->d:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, La/d/ba;->d:I

    :goto_0
    iget-object v0, p1, La/d/az;->h:La/d/bi;

    iget-object v0, v0, La/d/bi;->f:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->w:I

    add-int/lit8 v0, v0, -0x46

    iget-object v1, p1, La/d/az;->h:La/d/bi;

    iget-object v1, v1, La/d/bi;->f:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    iget-object v1, v1, La/d/bg;->s:La/d/bh;

    iget v1, v1, La/d/bh;->b:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/ba;->c:I

    return-void

    :cond_0
    invoke-virtual {p1}, La/d/az;->a()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La/d/az;

    invoke-direct {v0, p1}, La/d/az;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/d/ba;-><init>(La/d/az;)V

    return-void
.end method

.method private static a(La/d/ay;)Ljava/io/IOException;
    .locals 3

    invoke-virtual {p0}, La/d/ay;->b()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, La/e/a/d;

    if-eqz v1, :cond_1

    check-cast v0, La/e/a/d;

    move-object v1, v0

    check-cast v1, La/e/a/d;

    invoke-virtual {v1}, La/e/a/d;->a()Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 9

    if-gtz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, La/d/ba;->b:J

    iget-object v0, p0, La/d/ba;->f:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/d/ba;->a:La/d/az;

    iget v3, p0, La/d/ba;->d:I

    iget v4, p0, La/d/ba;->e:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, La/d/az;->a(III)V

    iget-object v0, p0, La/d/ba;->a:La/d/az;

    sget-object v0, La/d/az;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    iget-object v0, p0, La/d/ba;->a:La/d/az;

    sget-object v0, La/d/az;->c:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read: fid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, La/d/ba;->a:La/d/az;

    iget v4, v4, La/d/az;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v3, La/d/al;

    invoke-direct {v3, p1, p2}, La/d/al;-><init>([BI)V

    iget-object v0, p0, La/d/ba;->a:La/d/az;

    iget v0, v0, La/d/az;->k:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, La/d/al;->w:J

    :cond_3
    iget v0, p0, La/d/ba;->c:I

    if-le p3, v0, :cond_6

    iget v0, p0, La/d/ba;->c:I

    :goto_1
    iget-object v4, p0, La/d/ba;->a:La/d/az;

    sget-object v4, La/d/az;->c:La/e/e;

    sget v4, La/e/e;->a:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    iget-object v4, p0, La/d/ba;->a:La/d/az;

    sget-object v4, La/d/az;->c:La/e/e;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read: len="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",fp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, La/d/ba;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, La/e/e;->println(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    new-instance v4, La/d/ak;

    iget-object v5, p0, La/d/ba;->a:La/d/az;

    iget v5, v5, La/d/az;->j:I

    iget-wide v6, p0, La/d/ba;->b:J

    invoke-direct {v4, v5, v6, v7, v0}, La/d/ak;-><init>(IJI)V

    iget-object v5, p0, La/d/ba;->a:La/d/az;

    iget v5, v5, La/d/az;->k:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    const/16 v5, 0x400

    iput v5, v4, La/d/ak;->d:I

    iput v5, v4, La/d/ak;->b:I

    iput v5, v4, La/d/ak;->c:I

    :cond_5
    iget-object v5, p0, La/d/ba;->a:La/d/az;

    invoke-virtual {v5, v4, v3}, La/d/az;->a(La/d/u;La/d/u;)V
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_0

    iget v4, v3, La/d/al;->D:I

    if-gtz v4, :cond_9

    iget-wide v3, p0, La/d/ba;->b:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    iget-wide v3, p0, La/d/ba;->b:J

    sub-long v0, v3, v1

    :goto_2
    long-to-int v0, v0

    goto/16 :goto_0

    :cond_6
    move v0, p3

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, La/d/ba;->a:La/d/az;

    iget v1, v1, La/d/az;->k:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, La/d/ay;->a()I

    move-result v1

    const v2, -0x3ffffeb5

    if-ne v1, v2, :cond_7

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, La/d/ba;->a(La/d/ay;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_9
    iget-wide v5, p0, La/d/ba;->b:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, La/d/ba;->b:J

    sub-int/2addr p3, v4

    iget v5, v3, La/d/al;->c:I

    add-int/2addr v5, v4

    iput v5, v3, La/d/al;->c:I

    if-lez p3, :cond_a

    if-eq v4, v0, :cond_3

    :cond_a
    iget-wide v3, p0, La/d/ba;->b:J

    sub-long v0, v3, v1

    long-to-int v0, v0

    goto/16 :goto_0
.end method

.method public available()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, La/d/ba;->a:La/d/az;

    iget v0, v0, La/d/az;->k:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, La/d/ba;->a:La/d/az;

    check-cast v0, La/d/bc;

    iget-object v2, p0, La/d/ba;->a:La/d/az;

    const/16 v3, 0x20

    iget v4, v0, La/d/bc;->r:I

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, La/d/az;->a(III)V

    new-instance v2, La/d/bz;

    iget-object v3, p0, La/d/ba;->a:La/d/az;

    iget-object v3, v3, La/d/az;->i:Ljava/lang/String;

    iget-object v4, p0, La/d/ba;->a:La/d/az;

    iget v4, v4, La/d/az;->j:I

    invoke-direct {v2, v3, v4}, La/d/bz;-><init>(Ljava/lang/String;I)V

    new-instance v3, La/d/ca;

    invoke-direct {v3, v0}, La/d/ca;-><init>(La/d/bc;)V

    invoke-virtual {v0, v2, v3}, La/d/bc;->a(La/d/u;La/d/u;)V

    iget v0, v3, La/d/ca;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, v3, La/d/ca;->a:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, La/d/ba;->a:La/d/az;

    const/4 v2, 0x0

    iput-boolean v2, v0, La/d/az;->l:Z

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, v3, La/d/ca;->S:I
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, La/d/ba;->a(La/d/ay;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, La/d/ba;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/ba;->f:[B
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, La/d/ba;->a(La/d/ay;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, La/d/ba;->f:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, La/d/ba;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/d/ba;->f:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/ba;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, La/d/ba;->a([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, La/d/ba;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, La/d/ba;->b:J

    :goto_0
    return-wide p1

    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method
