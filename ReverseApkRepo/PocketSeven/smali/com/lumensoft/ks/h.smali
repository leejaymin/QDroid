.class public Lcom/lumensoft/ks/h;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field a:Lcom/lumensoft/ks/c;

.field a:[B

.field a:[[B

.field b:I

.field b:[B

.field c:[B

.field d:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    iput-object v1, p0, Lcom/lumensoft/ks/h;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/h;->b:[B

    const/16 v0, 0xa

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/lumensoft/ks/h;->a:[[B

    iput-object v1, p0, Lcom/lumensoft/ks/h;->c:[B

    iput-object v1, p0, Lcom/lumensoft/ks/h;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/lumensoft/ks/h;->a:I

    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/lumensoft/ks/h;->a([BII)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/h;->a(I)V

    invoke-virtual {p0}, Lcom/lumensoft/ks/h;->a()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/lumensoft/ks/h;->b:I

    return v0
.end method

.method public a([BI)I
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->i([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, p2

    iget v3, v0, Lcom/lumensoft/ks/g;->a:I

    iget v0, v0, Lcom/lumensoft/ks/g;->b:I

    add-int v6, v3, v0

    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v1}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int v4, v1, v0

    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->a:[B

    sget-object v3, Lcom/lumensoft/ks/q;->a:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lumensoft/ks/q;->a:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/h;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/h;->d:[B

    iget-object v1, p0, Lcom/lumensoft/ks/h;->d:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    sub-int/2addr v0, p2

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->b:[B

    sget-object v3, Lcom/lumensoft/ks/q;->b:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/lumensoft/ks/q;->b:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/h;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/h;->c:[B

    iget-object v1, p0, Lcom/lumensoft/ks/h;->c:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->c:[B

    sget-object v3, Lcom/lumensoft/ks/q;->c:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/lumensoft/ks/q;->c:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/h;->a:[[B

    iget v2, p0, Lcom/lumensoft/ks/h;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/h;->a([BI)[B

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/lumensoft/ks/h;->a:[[B

    iget v2, p0, Lcom/lumensoft/ks/h;->a:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lumensoft/ks/h;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lumensoft/ks/h;->a:I

    iget v1, p0, Lcom/lumensoft/ks/h;->a:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "ou count is larger than 10"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/lumensoft/ks/h;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->d:[B

    sget-object v3, Lcom/lumensoft/ks/q;->d:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/lumensoft/ks/q;->d:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/h;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/h;->b:[B

    iget-object v1, p0, Lcom/lumensoft/ks/h;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public a([BII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/lumensoft/ks/h;->a([BI)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, p3, :cond_0

    if-gez v1, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()V
    .locals 4

    const/16 v3, 0x2c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "cn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lumensoft/ks/h;->b:[B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/lumensoft/ks/h;->a:I

    if-lt v0, v2, :cond_0

    const-string v0, "o="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lumensoft/ks/h;->c:[B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "c="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lumensoft/ks/h;->d:[B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/h;->a:[B

    return-void

    :cond_0
    const-string v2, "ou="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lumensoft/ks/h;->a:[[B

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lumensoft/ks/h;->b:I

    return-void
.end method

.method public a([BI)[B
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid RDN tag"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
