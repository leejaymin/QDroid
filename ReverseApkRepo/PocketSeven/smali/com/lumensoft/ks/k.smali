.class public Lcom/lumensoft/ks/k;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:Lcom/lumensoft/ks/c;

.field a:Lcom/lumensoft/ks/h;

.field a:Lcom/lumensoft/ks/o;

.field public a:[B

.field public b:I

.field b:Lcom/lumensoft/ks/h;

.field public b:Ljava/lang/String;

.field public b:[B

.field c:[B

.field d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:[B

.field j:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->b:[B

    const-string v0, "empty"

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/h;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->b:Lcom/lumensoft/ks/h;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->c:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->d:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->e:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->f:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->g:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->h:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->i:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/o;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->j:[B

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->b:[B

    const-string v0, "empty"

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/h;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->b:Lcom/lumensoft/ks/h;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->c:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->d:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->e:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->f:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->g:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->h:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->i:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/o;

    iput-object v1, p0, Lcom/lumensoft/ks/k;->j:[B

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {p0, p1}, Lcom/lumensoft/ks/k;->a([B)V

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, p2

    iget v2, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/k;->c([BI)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->d([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->e([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->f([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->g([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->h([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->i([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v0, p2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->b([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    sub-int v1, v0, p2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->b([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    sub-int v1, v0, p2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->b([BI)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v1, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->l([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->m([BI)I

    move-result v1

    add-int/2addr v0, v1

    return-void
.end method

.method public a([BI)[B
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not UTCTime"

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

.method public b([BI)I
    .locals 4

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->j([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, p2

    iget v2, v0, Lcom/lumensoft/ks/g;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/k;->j([BI)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget v2, v0, Lcom/lumensoft/ks/g;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/k;->k([BI)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/lumensoft/ks/g;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/lumensoft/ks/o;

    invoke-direct {v0, p1, v1}, Lcom/lumensoft/ks/o;-><init>([BI)V

    iput-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/o;

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/o;

    iget v0, v0, Lcom/lumensoft/ks/o;->a:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid Tag"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c([BI)I
    .locals 3

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->j([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->d:I

    if-eqz v1, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not constructed type"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->c([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lumensoft/ks/k;->a:I

    iget v1, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public d([BI)I
    .locals 4

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->c([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->a:[B

    iget v1, v0, Lcom/lumensoft/ks/g;->c:I

    iput v1, p0, Lcom/lumensoft/ks/k;->b:I

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    sub-int v1, v0, p2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lumensoft/ks/k;->b:[B

    iget-object v2, p0, Lcom/lumensoft/ks/k;->b:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, p2

    return v0
.end method

.method public e([BI)I
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->o:[B

    sget-object v3, Lcom/lumensoft/ks/q;->o:[B

    array-length v5, v3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sha1RSA"

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Ljava/lang/String;

    sget-object v0, Lcom/lumensoft/ks/q;->o:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->n:[B

    sget-object v3, Lcom/lumensoft/ks/q;->n:[B

    array-length v5, v3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "md5RSA"

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Ljava/lang/String;

    sget-object v0, Lcom/lumensoft/ks/q;->n:[B

    array-length v0, v0

    goto :goto_0

    :cond_1
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    iget v0, v0, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public f([BI)I
    .locals 3

    new-instance v0, Lcom/lumensoft/ks/h;

    invoke-direct {v0, p1, p2}, Lcom/lumensoft/ks/h;-><init>([BI)V

    iput-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/h;

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/h;

    invoke-virtual {v0}, Lcom/lumensoft/ks/h;->a()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->c:[B

    iget-object v1, p0, Lcom/lumensoft/ks/k;->c:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/h;

    invoke-virtual {v0}, Lcom/lumensoft/ks/h;->a()I

    move-result v0

    return v0
.end method

.method public g([BI)I
    .locals 2

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/k;->e:[B

    iget-object v1, p0, Lcom/lumensoft/ks/k;->e:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/k;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/k;->f:[B

    iget-object v1, p0, Lcom/lumensoft/ks/k;->f:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public h([BI)I
    .locals 3

    new-instance v0, Lcom/lumensoft/ks/h;

    invoke-direct {v0, p1, p2}, Lcom/lumensoft/ks/h;-><init>([BI)V

    iput-object v0, p0, Lcom/lumensoft/ks/k;->b:Lcom/lumensoft/ks/h;

    iget-object v0, p0, Lcom/lumensoft/ks/k;->b:Lcom/lumensoft/ks/h;

    invoke-virtual {v0}, Lcom/lumensoft/ks/h;->a()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->d:[B

    iget-object v1, p0, Lcom/lumensoft/ks/k;->d:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/lumensoft/ks/k;->b:Lcom/lumensoft/ks/h;

    invoke-virtual {v0}, Lcom/lumensoft/ks/h;->a()I

    move-result v0

    return v0
.end method

.method public i([BI)I
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int v4, p2, v0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->e:[B

    sget-object v3, Lcom/lumensoft/ks/q;->e:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Not supported oid"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/lumensoft/ks/q;->e:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->d([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->b:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/k;->g:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/k;->g:[B

    iget v5, v1, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public j([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->d([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->h:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/k;->h:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    return v0
.end method

.method public k([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->d([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->i:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/k;->i:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    return v0
.end method

.method public l([BI)I
    .locals 6

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->o:[B

    const/4 v2, 0x0

    sget-object v3, Lcom/lumensoft/ks/q;->o:[B

    array-length v5, v3

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lumensoft/ks/q;->o:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    iget v0, v0, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public m([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/k;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->d([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/k;->j:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/k;->j:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    return v0
.end method
