.class public Lcom/lumensoft/ks/KSClient;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field a:Ljava/lang/String;

.field a:[B

.field b:I

.field b:[B

.field c:[B

.field d:[B

.field e:[B

.field f:[B

.field g:[B

.field h:[B

.field i:[B

.field j:[B

.field k:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iput v1, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iput v1, p0, Lcom/lumensoft/ks/KSClient;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iput v3, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iput v3, p0, Lcom/lumensoft/ks/KSClient;->b:I

    check-cast v0, [B

    iput-object p1, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/lumensoft/ks/p;->b(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iput v2, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iput v2, p0, Lcom/lumensoft/ks/KSClient;->b:I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    new-instance v0, Lcom/lumensoft/ks/f;

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/f;-><init>([B)V

    invoke-virtual {v0}, Lcom/lumensoft/ks/f;->a()Lcom/lumensoft/ks/l;

    move-result-object v0

    new-instance v1, Lcom/lumensoft/ks/d;

    invoke-direct {v1}, Lcom/lumensoft/ks/d;-><init>()V

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    invoke-virtual {v1, v0, v2}, Lcom/lumensoft/ks/d;->a(Lcom/lumensoft/ks/l;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public a(I[B[B)[B
    .locals 8

    const/16 v7, 0x14

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, p2, p3}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    rem-int/lit8 v0, p1, 0x14

    rsub-int/lit8 v0, v0, 0x14

    if-ne v0, v7, :cond_0

    move v0, v1

    :cond_0
    add-int v3, p1, v0

    new-array v4, v3, [B

    array-length v0, p3

    add-int/lit8 v0, v0, 0x14

    new-array v5, v0, [B

    move v0, v1

    :goto_0
    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, p3

    invoke-static {p3, v1, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2, v5}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v6

    invoke-static {v6, v1, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x14

    if-gt v3, v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    goto :goto_0
.end method

.method public a([B)[B
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/lumensoft/ks/j;

    invoke-direct {v0}, Lcom/lumensoft/ks/j;-><init>()V

    const/16 v1, 0x14

    new-array v1, v1, [B

    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Lcom/lumensoft/ks/j;->a([BII)V

    invoke-virtual {v0, v1, v3}, Lcom/lumensoft/ks/j;->a([BI)I

    return-object v1
.end method

.method public a([B[B)[B
    .locals 1

    new-instance v0, Lcom/lumensoft/ks/n;

    invoke-direct {v0, p1}, Lcom/lumensoft/ks/n;-><init>([B)V

    invoke-virtual {v0, p2}, Lcom/lumensoft/ks/n;->a([B)V

    invoke-virtual {v0}, Lcom/lumensoft/ks/n;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([B)[B
    .locals 9

    const/4 v3, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid input"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    aget-byte v2, p1, v1

    if-eq v2, v3, :cond_2

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid content type"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-byte v0, p1, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p1, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    add-int/lit8 v0, v2, 0x5

    array-length v3, p1

    if-eq v0, v3, :cond_4

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid message length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-byte v3, p1, v8

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v0, v0

    if-eq v0, v3, :cond_5

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid session id length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_6

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v0, v2, -0x14

    new-array v2, v0, [B

    array-length v0, v2

    invoke-static {p1, v8, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    invoke-virtual {p0, v0, v2}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v4

    move v0, v1

    :goto_1
    const/16 v5, 0x14

    if-lt v0, v5, :cond_8

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/lumensoft/ks/e;

    invoke-direct {v0}, Lcom/lumensoft/ks/e;-><init>()V

    iget-object v3, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    invoke-virtual {v0, v2, v3, v4}, Lcom/lumensoft/ks/e;->b([B[B[B)[B

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_a

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding. padLen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v4, v0, 0x6

    aget-byte v4, p1, v4

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    aget-byte v5, v5, v0

    if-eq v4, v5, :cond_7

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid session id not matched"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    aget-byte v5, v4, v0

    array-length v6, v2

    add-int/lit8 v6, v6, 0x5

    add-int/2addr v6, v0

    aget-byte v6, p1, v6

    if-eq v5, v6, :cond_9

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Bad mac"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v0, v1

    move v2, v1

    :goto_2
    if-lt v0, v7, :cond_b

    iput v2, p0, Lcom/lumensoft/ks/KSClient;->b:I

    aget-byte v0, v3, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, v3, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    const/4 v4, 0x6

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_b
    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public encrypt([B)[B
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid input"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    const v2, 0x8000

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Input is too large (more than 32K)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    rem-int/lit8 v2, v0, 0x10

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v2

    new-array v3, v0, [B

    iget v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iget v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    iget v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v9

    iget v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v6

    iget v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    const/4 v0, 0x4

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    array-length v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v8

    const/4 v0, 0x6

    array-length v4, p1

    invoke-static {p1, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/lumensoft/ks/e;

    invoke-direct {v0}, Lcom/lumensoft/ks/e;-><init>()V

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    invoke-virtual {v0, v3, v2, v4}, Lcom/lumensoft/ks/e;->a([B[B[B)[B

    move-result-object v0

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    new-array v2, v2, [B

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v5, v5

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v3, 0x1

    array-length v5, v0

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    array-length v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    array-length v0, v0

    add-int/2addr v0, v4

    new-array v0, v0, [B

    array-length v4, v0

    invoke-static {v2, v8, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    invoke-virtual {p0, v4, v0}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v0

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, 0x14

    aput-byte v7, v2, v1

    aput-byte v6, v2, v9

    aput-byte v1, v2, v6

    add-int/lit8 v1, v0, -0x5

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v7

    const/4 v1, 0x4

    add-int/lit8 v0, v0, -0x5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    return-object v2

    :cond_3
    array-length v4, p1

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v0

    int-to-byte v5, v2

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public keyFinal([B)I
    .locals 11

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/16 v9, 0x14

    const/16 v8, 0x10

    const/4 v0, 0x0

    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    array-length v4, p1

    if-le v3, v4, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid input length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sparse-switch v2, :sswitch_data_0

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid content type ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    aget-byte v2, p1, v10

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    if-eq v2, v1, :cond_2

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid new profile type"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/KSClient;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    new-instance v0, Lcom/lumensoft/ks/f;

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/f;-><init>([B)V

    invoke-virtual {v0}, Lcom/lumensoft/ks/f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, -0x141

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-static {v0, v1}, Lcom/lumensoft/ks/p;->b(Ljava/lang/String;[B)V

    const/16 v0, -0x64

    goto :goto_0

    :sswitch_1
    aget-byte v2, p1, v10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v2, 0x7

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x7

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    invoke-static {p1, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    aget-byte v5, p1, v4

    if-ne v5, v1, :cond_5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p1, v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p1, v5

    if-eqz v5, :cond_6

    :cond_5
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid profile"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v3, 0x14

    new-array v5, v5, [B

    invoke-static {p1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x14

    iget-object v3, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v3, v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x5

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v6, v6

    invoke-static {v4, v0, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v4, v4

    array-length v6, p1

    add-int/lit8 v6, v6, -0x14

    add-int/lit8 v6, v6, -0x5

    invoke-static {p1, v10, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Lcom/lumensoft/ks/KSClient;->a([B)[B

    move-result-object v3

    new-array v4, v9, [B

    invoke-static {p1, v2, v4, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x14

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    invoke-virtual {p0, v2, v5}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    const/16 v6, 0x68

    invoke-virtual {p0, v6, v2, v5}, Lcom/lumensoft/ks/KSClient;->a(I[B[B)[B

    move-result-object v2

    new-array v5, v9, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    new-array v5, v9, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    invoke-static {v2, v0, v5, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    invoke-static {v2, v9, v5, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x28

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x38

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x48

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x58

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iput v0, p0, Lcom/lumensoft/ks/KSClient;->b:I

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    invoke-virtual {p0, v2, v3}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    :goto_1
    array-length v3, v4

    if-lt v0, v3, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    aget-byte v3, v4, v0

    aget-byte v5, v2, v0

    if-eq v3, v5, :cond_8

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid handshake MAC"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public keyFinalValidity([BI)I
    .locals 11

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/16 v9, 0x14

    const/16 v8, 0x10

    const/4 v0, 0x0

    aget-byte v2, p1, v0

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    array-length v4, p1

    if-le v3, v4, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid input length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sparse-switch v2, :sswitch_data_0

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid content type ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    aget-byte v2, p1, v10

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    if-eq v2, v1, :cond_2

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid new profile type"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/KSClient;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    new-instance v0, Lcom/lumensoft/ks/f;

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/f;-><init>([B)V

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/lumensoft/ks/f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, -0x141

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-static {v0, v1}, Lcom/lumensoft/ks/p;->b(Ljava/lang/String;[B)V

    const/16 v0, -0x64

    goto :goto_0

    :sswitch_1
    aget-byte v2, p1, v10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v2, 0x7

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x7

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    invoke-static {p1, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->k:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    aget-byte v5, p1, v4

    if-ne v5, v1, :cond_5

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p1, v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p1, v5

    if-eqz v5, :cond_6

    :cond_5
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid profile"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v3, 0x14

    new-array v5, v5, [B

    invoke-static {p1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x14

    iget-object v3, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v3, v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x5

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v6, v6

    invoke-static {v4, v0, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    array-length v4, v4

    array-length v6, p1

    add-int/lit8 v6, v6, -0x14

    add-int/lit8 v6, v6, -0x5

    invoke-static {p1, v10, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Lcom/lumensoft/ks/KSClient;->a([B)[B

    move-result-object v3

    new-array v4, v9, [B

    invoke-static {p1, v2, v4, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x14

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    invoke-virtual {p0, v2, v5}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    const/16 v6, 0x68

    invoke-virtual {p0, v6, v2, v5}, Lcom/lumensoft/ks/KSClient;->a(I[B[B)[B

    move-result-object v2

    new-array v5, v9, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    new-array v5, v9, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    new-array v5, v8, [B

    iput-object v5, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->e:[B

    invoke-static {v2, v0, v5, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    invoke-static {v2, v9, v5, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x28

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->g:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x38

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->h:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x48

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->i:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x58

    iget-object v6, p0, Lcom/lumensoft/ks/KSClient;->j:[B

    invoke-static {v2, v5, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/lumensoft/ks/KSClient;->a:I

    iput v0, p0, Lcom/lumensoft/ks/KSClient;->b:I

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->f:[B

    invoke-virtual {p0, v2, v3}, Lcom/lumensoft/ks/KSClient;->a([B[B)[B

    move-result-object v2

    :goto_1
    array-length v3, v4

    if-lt v0, v3, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    aget-byte v3, v4, v0

    aget-byte v5, v2, v0

    if-eq v3, v5, :cond_8

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid handshake MAC"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public keyInit()[B
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x14

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    new-instance v3, Lcom/lumensoft/ks/a;

    invoke-direct {v3}, Lcom/lumensoft/ks/a;-><init>()V

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/lumensoft/ks/KSClient;->a:[B

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/KSClient;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    const/16 v0, 0x30

    invoke-virtual {v3, v0}, Lcom/lumensoft/ks/a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/KSClient;->c:[B

    invoke-virtual {p0}, Lcom/lumensoft/ks/KSClient;->a()[B

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    array-length v0, v2

    :goto_1
    add-int/lit8 v0, v0, 0x30

    add-int/lit8 v4, v0, 0x5

    new-array v4, v4, [B

    const/4 v5, 0x6

    aput-byte v9, v4, v10

    const/4 v6, 0x7

    aput-byte v1, v4, v5

    const/16 v5, 0x8

    aput-byte v7, v4, v6

    invoke-virtual {v3, v7}, Lcom/lumensoft/ks/a;->a(I)[B

    move-result-object v3

    invoke-static {v3, v1, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x1c

    const/16 v5, 0x1d

    aput-byte v8, v4, v3

    const/16 v3, 0x1e

    aput-byte v8, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x21

    aput-byte v6, v4, v3

    const/16 v3, 0x20

    aput-byte v1, v4, v5

    iget-object v5, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    invoke-static {v5, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x34

    if-eqz v2, :cond_3

    const/16 v5, 0x35

    array-length v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    array-length v3, v2

    invoke-static {v2, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/lit8 v2, v2, 0x35

    :goto_2
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->d:[B

    invoke-static {v4, v10, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v8, v4, v1

    aput-byte v9, v4, v8

    aput-byte v1, v4, v9

    const/4 v1, 0x3

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    const/4 v1, 0x4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    if-nez v2, :cond_1

    new-array v2, v7, [B

    iput-object v2, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    :cond_1
    move v2, v1

    :goto_3
    if-lt v2, v7, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/lumensoft/ks/KSClient;->b:[B

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    aput-byte v1, v4, v3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
