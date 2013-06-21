.class public Lcom/lumensoft/ks/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method public a([BI[BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p4, v1

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a([BI)Lcom/lumensoft/ks/g;
    .locals 4

    new-instance v1, Lcom/lumensoft/ks/g;

    invoke-direct {v1}, Lcom/lumensoft/ks/g;-><init>()V

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v0

    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v2

    iput v2, v1, Lcom/lumensoft/ks/g;->b:I

    :goto_0
    sub-int/2addr v0, p2

    iput v0, v1, Lcom/lumensoft/ks/g;->a:I

    return-object v1

    :cond_0
    add-int/lit8 v2, p2, 0x1

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v0

    const/16 v3, 0x81

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v2

    iput v2, v1, Lcom/lumensoft/ks/g;->b:I

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    iput v0, v1, Lcom/lumensoft/ks/g;->b:I

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/lumensoft/ks/g;->b:I

    goto :goto_0
.end method

.method public b([BI)Lcom/lumensoft/ks/g;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/lumensoft/ks/g;

    invoke-direct {v0}, Lcom/lumensoft/ks/g;-><init>()V

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not BOOLEAN (1)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-eq v1, v3, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid boolean length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/lumensoft/ks/g;->a:Z

    :goto_0
    sub-int/2addr v1, p2

    iput v1, v0, Lcom/lumensoft/ks/g;->a:I

    return-object v0

    :cond_2
    iput-boolean v3, v0, Lcom/lumensoft/ks/g;->a:Z

    goto :goto_0
.end method

.method public c([BI)Lcom/lumensoft/ks/g;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not INTEGER (2)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v3

    iget v1, v3, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, v0

    iget v0, v3, Lcom/lumensoft/ks/g;->b:I

    new-array v0, v0, [B

    iput-object v0, v3, Lcom/lumensoft/ks/g;->a:[B

    iget-object v0, v3, Lcom/lumensoft/ks/g;->a:[B

    const/4 v2, 0x0

    iget v4, v3, Lcom/lumensoft/ks/g;->b:I

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    :goto_0
    iget v2, v3, Lcom/lumensoft/ks/g;->b:I

    if-le v0, v2, :cond_1

    sub-int v0, v1, p2

    iput v0, v3, Lcom/lumensoft/ks/g;->a:I

    return-object v3

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    iget v4, v3, Lcom/lumensoft/ks/g;->b:I

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v1, v4

    iget v4, v3, Lcom/lumensoft/ks/g;->c:I

    add-int/2addr v1, v4

    iput v1, v3, Lcom/lumensoft/ks/g;->c:I

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method public d([BI)Lcom/lumensoft/ks/g;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not BITSTRING (3)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    iput v0, v1, Lcom/lumensoft/ks/g;->e:I

    iget v0, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/lumensoft/ks/g;->b:I

    iget v0, v1, Lcom/lumensoft/ks/g;->b:I

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v0, v1, Lcom/lumensoft/ks/g;->a:[B

    const/4 v3, 0x0

    iget v4, v1, Lcom/lumensoft/ks/g;->b:I

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/lumensoft/ks/g;->a:I

    return-object v1
.end method

.method public e([BI)Lcom/lumensoft/ks/g;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not OCTETSTRING (4)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    const/4 v3, 0x0

    iget v4, v1, Lcom/lumensoft/ks/g;->b:I

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/lumensoft/ks/g;->a:I

    return-object v1
.end method

.method public f([BI)Lcom/lumensoft/ks/g;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not OBJECTIDENTIFIER (6)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    const/4 v3, 0x0

    iget v4, v1, Lcom/lumensoft/ks/g;->b:I

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/lumensoft/ks/g;->a:I

    return-object v1
.end method

.method public g([BI)Lcom/lumensoft/ks/g;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not IA5STRING (22)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, v1, Lcom/lumensoft/ks/g;->a:[B

    const/4 v3, 0x0

    iget v4, v1, Lcom/lumensoft/ks/g;->b:I

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/lumensoft/ks/g;->a:I

    return-object v1
.end method

.method public h([BI)Lcom/lumensoft/ks/g;
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not SEQUENCE (48)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lumensoft/ks/g;->a:I

    return-object v0
.end method

.method public i([BI)Lcom/lumensoft/ks/g;
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not SET (49)"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lumensoft/ks/g;->a:I

    return-object v0
.end method

.method public j([BI)Lcom/lumensoft/ks/g;
    .locals 4

    add-int/lit8 v1, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v2, v0, 0x6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag >> 6 is not 0x02"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    ushr-int/lit8 v2, v0, 0x5

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x80

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/c;->a([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/lumensoft/ks/g;->a:I

    iput v0, v1, Lcom/lumensoft/ks/g;->d:I

    return-object v1

    :cond_1
    add-int/lit16 v0, v0, -0xa0

    goto :goto_0
.end method
