.class public La/d/bb;
.super Ljava/io/OutputStream;


# instance fields
.field private a:La/d/az;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:La/d/au;

.field private j:La/d/av;

.field private k:La/d/at;

.field private l:La/d/aw;


# direct methods
.method public constructor <init>(La/d/az;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/d/bb;-><init>(La/d/az;B)V

    return-void
.end method

.method private constructor <init>(La/d/az;B)V
    .locals 1

    const/16 v0, 0x52

    invoke-direct {p0, p1, v0}, La/d/bb;-><init>(La/d/az;I)V

    return-void
.end method

.method constructor <init>(La/d/az;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, La/d/bb;->h:[B

    iput-object p1, p0, La/d/bb;->a:La/d/az;

    iput-boolean v3, p0, La/d/bb;->b:Z

    iput p2, p0, La/d/bb;->d:I

    ushr-int/lit8 v0, p2, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, La/d/bb;->e:I

    instance-of v0, p1, La/d/bc;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/d/az;->i:Ljava/lang/String;

    const-string v1, "\\pipe\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/d/az;->i:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/d/az;->i:Ljava/lang/String;

    new-instance v0, La/d/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\pipe"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, La/d/az;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/d/cd;-><init>(Ljava/lang/String;)V

    new-instance v1, La/d/ce;

    invoke-direct {v1}, La/d/ce;-><init>()V

    invoke-virtual {p1, v0, v1}, La/d/az;->a(La/d/u;La/d/u;)V

    :cond_0
    iget v0, p0, La/d/bb;->e:I

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, v0, v3}, La/d/az;->a(III)V

    iget v0, p0, La/d/bb;->d:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, La/d/bb;->d:I

    iget-object v0, p1, La/d/az;->h:La/d/bi;

    iget-object v0, v0, La/d/bi;->f:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->v:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, La/d/bb;->f:I

    iget-object v0, p1, La/d/az;->h:La/d/bi;

    iget-object v0, v0, La/d/bi;->f:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, La/d/bg;->a(I)Z

    move-result v0

    iput-boolean v0, p0, La/d/bb;->c:Z

    iget-boolean v0, p0, La/d/bb;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, La/d/au;

    invoke-direct {v0}, La/d/au;-><init>()V

    iput-object v0, p0, La/d/bb;->i:La/d/au;

    new-instance v0, La/d/av;

    invoke-direct {v0}, La/d/av;-><init>()V

    iput-object v0, p0, La/d/bb;->j:La/d/av;

    :goto_0
    return-void

    :cond_1
    new-instance v0, La/d/at;

    invoke-direct {v0}, La/d/at;-><init>()V

    iput-object v0, p0, La/d/bb;->k:La/d/at;

    new-instance v0, La/d/aw;

    invoke-direct {v0}, La/d/aw;-><init>()V

    iput-object v0, p0, La/d/bb;->l:La/d/aw;

    goto :goto_0
.end method


# virtual methods
.method public final a([BIII)V
    .locals 8

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/d/bb;->h:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad file descriptor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, La/d/bb;->b()V

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    sget-object v0, La/d/az;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    sget-object v0, La/d/az;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write: fid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/d/bb;->a:La/d/az;

    iget v2, v2, La/d/az;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    move v6, p2

    iget v0, p0, La/d/bb;->f:I

    if-le p3, v0, :cond_3

    iget v7, p0, La/d/bb;->f:I

    :goto_1
    iget-boolean v0, p0, La/d/bb;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, La/d/bb;->i:La/d/au;

    iget-object v1, p0, La/d/bb;->a:La/d/az;

    iget v1, v1, La/d/az;->j:I

    iget-wide v2, p0, La/d/bb;->g:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, La/d/au;->a(IJI[BII)V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, La/d/bb;->i:La/d/au;

    iget-object v1, p0, La/d/bb;->a:La/d/az;

    iget v1, v1, La/d/az;->j:I

    iget-wide v2, p0, La/d/bb;->g:J

    move v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, La/d/au;->a(IJI[BII)V

    iget-object v0, p0, La/d/bb;->i:La/d/au;

    const/16 v1, 0x8

    iput v1, v0, La/d/au;->b:I

    :goto_2
    iget-object v0, p0, La/d/bb;->a:La/d/az;

    iget-object v1, p0, La/d/bb;->i:La/d/au;

    iget-object v2, p0, La/d/bb;->j:La/d/av;

    invoke-virtual {v0, v1, v2}, La/d/az;->a(La/d/u;La/d/u;)V

    iget-wide v0, p0, La/d/bb;->g:J

    iget-object v2, p0, La/d/bb;->j:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bb;->g:J

    int-to-long v0, p3

    iget-object v2, p0, La/d/bb;->j:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, La/d/bb;->j:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    :goto_3
    if-gtz p3, :cond_2

    goto/16 :goto_0

    :cond_3
    move v7, p3

    goto :goto_1

    :cond_4
    iget-object v0, p0, La/d/bb;->i:La/d/au;

    const/4 v1, 0x0

    iput v1, v0, La/d/au;->b:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, La/d/bb;->k:La/d/at;

    iget-object v1, p0, La/d/bb;->a:La/d/az;

    iget v1, v1, La/d/az;->j:I

    iget-wide v2, p0, La/d/bb;->g:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, La/d/at;->a(IJI[BII)V

    iget-wide v0, p0, La/d/bb;->g:J

    iget-object v2, p0, La/d/bb;->l:La/d/aw;

    iget-wide v2, v2, La/d/aw;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bb;->g:J

    int-to-long v0, p3

    iget-object v2, p0, La/d/bb;->l:La/d/aw;

    iget-wide v2, v2, La/d/aw;->a:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, La/d/bb;->l:La/d/aw;

    iget-wide v2, v2, La/d/aw;->a:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    iget-object v1, p0, La/d/bb;->k:La/d/at;

    iget-object v2, p0, La/d/bb;->l:La/d/aw;

    invoke-virtual {v0, v1, v2}, La/d/az;->a(La/d/u;La/d/u;)V

    goto :goto_3
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->b()Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    iget v1, p0, La/d/bb;->d:I

    iget v2, p0, La/d/bb;->e:I

    or-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, La/d/az;->a(III)V

    iget-boolean v0, p0, La/d/bb;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->j()J

    move-result-wide v0

    iput-wide v0, p0, La/d/bb;->g:J

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/bb;->h:[B

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bb;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, La/d/bb;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/bb;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/bb;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    instance-of v0, v0, La/d/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bb;->a:La/d/az;

    new-instance v1, La/d/cd;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\pipe"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/d/bb;->a:La/d/az;

    iget-object v3, v3, La/d/az;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/d/cd;-><init>(Ljava/lang/String;)V

    new-instance v2, La/d/ce;

    invoke-direct {v2}, La/d/ce;-><init>()V

    invoke-virtual {v0, v1, v2}, La/d/az;->a(La/d/u;La/d/u;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, La/d/bb;->a([BIII)V

    return-void
.end method
