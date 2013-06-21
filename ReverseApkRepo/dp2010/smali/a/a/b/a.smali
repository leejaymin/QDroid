.class public final La/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:La/a/b/a;


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/a;->a:[B

    iput p2, p0, La/a/b/a;->c:I

    iput p2, p0, La/a/b/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->d:I

    iput-object p0, p0, La/a/b/a;->e:La/a/b/a;

    return-void
.end method


# virtual methods
.method public final a(I)La/a/b/a;
    .locals 3

    new-instance v0, La/a/b/a;

    iget-object v1, p0, La/a/b/a;->a:[B

    iget v2, p0, La/a/b/a;->b:I

    invoke-direct {v0, v1, v2}, La/a/b/a;-><init>([BI)V

    iput p1, v0, La/a/b/a;->c:I

    iget-object v1, p0, La/a/b/a;->e:La/a/b/a;

    iput-object v1, v0, La/a/b/a;->e:La/a/b/a;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget v0, p0, La/a/b/a;->b:I

    iput v0, p0, La/a/b/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->d:I

    iput-object p0, p0, La/a/b/a;->e:La/a/b/a;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/b/a;->g(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, La/a/b/a;->g(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/a/b/a;->d(I)I

    iget v0, p0, La/a/b/a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, La/a/b/a;->a:[B

    invoke-static {v2, v3, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, La/a/b/a;->a:[B

    invoke-static {v6, v2, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, La/a/b/a;->a:[B

    invoke-static {v2, v3, v0}, La/e/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, La/a/b/a;->a:[B

    mul-int/lit8 v5, v1, 0x2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, La/a/b/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    iget-object v0, p0, La/a/b/a;->a:[B

    add-int/lit8 v1, v2, 0x1

    aput-byte v6, v0, v2

    iget v0, p0, La/a/b/a;->c:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, La/a/b/a;->c(I)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, La/a/b/a;->a:[B

    iget v1, p0, La/a/b/a;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La/a/b/a;->c(I)V

    return v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, La/a/b/a;->e:La/a/b/a;

    iput p1, v0, La/a/b/a;->d:I

    return-void
.end method

.method public final c()I
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)I

    iget-object v0, p0, La/a/b/a;->a:[B

    iget v1, p0, La/a/b/a;->c:I

    invoke-static {v0, v1}, La/e/b;->c([BI)S

    move-result v0

    invoke-virtual {p0, v2}, La/a/b/a;->c(I)V

    return v0
.end method

.method public final c(I)V
    .locals 3

    iget v0, p0, La/a/b/a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, La/a/b/a;->c:I

    iget v0, p0, La/a/b/a;->c:I

    iget v1, p0, La/a/b/a;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, La/a/b/a;->e:La/a/b/a;

    iget v1, v1, La/a/b/a;->d:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, La/a/b/a;->e:La/a/b/a;

    iget v1, p0, La/a/b/a;->c:I

    iget v2, p0, La/a/b/a;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, La/a/b/a;->d:I

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)I

    iget-object v0, p0, La/a/b/a;->a:[B

    iget v1, p0, La/a/b/a;->c:I

    invoke-static {v0, v1}, La/e/b;->d([BI)I

    move-result v0

    invoke-virtual {p0, v2}, La/a/b/a;->c(I)V

    return v0
.end method

.method public final d(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, La/a/b/a;->c:I

    iget v2, p0, La/a/b/a;->b:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, La/a/b/a;->c(I)V

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/a/b/a;->d(I)I

    iget v0, p0, La/a/b/a;->c:I

    const/4 v1, 0x0

    iget-object v2, p0, La/a/b/a;->a:[B

    invoke-static {v2, v0}, La/e/b;->d([BI)I

    move-result v3

    add-int/lit8 v2, v0, 0xc

    if-eqz v3, :cond_1

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v3, v0, 0x2

    if-ltz v3, :cond_0

    const v0, 0xffff

    if-le v3, v0, :cond_2

    :cond_0
    :try_start_0
    new-instance v0, La/a/b/b;

    const-string v3, "invalid array conformance"

    invoke-direct {v0, v3}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    move v1, v2

    :goto_0
    iget v2, p0, La/a/b/a;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, La/a/b/a;->c(I)V

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, La/a/b/a;->a:[B

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, La/a/b/a;->a:[B

    iget v1, p0, La/a/b/a;->c:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/a/b/a;->c(I)V

    return-void
.end method

.method public final f(I)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, La/a/b/a;->d(I)I

    int-to-short v0, p1

    iget-object v1, p0, La/a/b/a;->a:[B

    iget v2, p0, La/a/b/a;->c:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    invoke-virtual {p0, v5}, La/a/b/a;->c(I)V

    return-void
.end method

.method public final g(I)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, La/a/b/a;->d(I)I

    iget-object v0, p0, La/a/b/a;->a:[B

    iget v1, p0, La/a/b/a;->c:I

    invoke-static {p1, v0, v1}, La/e/b;->b(I[BI)I

    invoke-virtual {p0, v2}, La/a/b/a;->c(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/a/b/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/b/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/b/a;->e:La/a/b/a;

    iget v1, v1, La/a/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
