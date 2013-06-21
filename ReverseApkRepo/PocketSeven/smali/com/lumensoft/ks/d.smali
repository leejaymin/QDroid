.class public Lcom/lumensoft/ks/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([II)[B
    .locals 5

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-object v1

    :cond_0
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    and-int/lit8 v4, v0, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([B)[I
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    ushr-int/lit8 v2, v0, 0x2

    aget v3, v1, v2

    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([BI)[I
    .locals 6

    array-length v0, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    sub-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    ushr-int/lit8 v2, v0, 0x2

    aget v3, v1, v2

    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/lumensoft/ks/l;[B)[B
    .locals 2

    iget-object v0, p1, Lcom/lumensoft/ks/l;->a:[I

    iget v1, p1, Lcom/lumensoft/ks/l;->a:I

    invoke-static {v0, v1}, Lcom/lumensoft/ks/b;->a([II)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p2, v1}, Lcom/lumensoft/ks/d;->a([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lumensoft/ks/d;->a([B)[I

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/d;->a(Lcom/lumensoft/ks/l;[I)[I

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lumensoft/ks/d;->a([II)[B

    move-result-object v0

    return-object v0
.end method

.method public a([BI)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v0, p2, -0xa

    if-le v2, v0, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "message too long : mLen = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int v0, p2, v2

    add-int/lit8 v3, v0, -0x2

    new-instance v4, Lcom/lumensoft/ks/a;

    invoke-direct {v4, v7}, Lcom/lumensoft/ks/a;-><init>(S)V

    invoke-virtual {v4, v3}, Lcom/lumensoft/ks/a;->a(I)[B

    move-result-object v5

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    new-array v0, p2, [B

    const/4 v4, 0x2

    aput-byte v4, v0, v1

    invoke-static {v5, v1, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v3, 0x1

    aput-byte v1, v0, v3

    invoke-static {p1, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    aget-byte v6, v5, v0

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v4, v7}, Lcom/lumensoft/ks/a;->a(I)[B

    move-result-object v6

    aget-byte v6, v6, v1

    aput-byte v6, v5, v0

    aget-byte v6, v5, v0

    if-eqz v6, :cond_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/lumensoft/ks/l;[I)[I
    .locals 7

    new-instance v0, Lcom/lumensoft/ks/b;

    invoke-direct {v0}, Lcom/lumensoft/ks/b;-><init>()V

    array-length v1, p2

    iget v2, p1, Lcom/lumensoft/ks/l;->a:I

    if-le v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message representative out of range : m.length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pubKey.nWordSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/lumensoft/ks/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v2, p2

    iget-object v3, p1, Lcom/lumensoft/ks/l;->b:[I

    iget-object v1, p1, Lcom/lumensoft/ks/l;->b:[I

    array-length v4, v1

    iget-object v5, p1, Lcom/lumensoft/ks/l;->a:[I

    iget-object v1, p1, Lcom/lumensoft/ks/l;->a:[I

    array-length v6, v1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lumensoft/ks/b;->a([II[II[II)[I

    move-result-object v0

    return-object v0
.end method
