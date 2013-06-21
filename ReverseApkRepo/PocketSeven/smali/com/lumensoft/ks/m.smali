.class public Lcom/lumensoft/ks/m;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field public a:Lcom/lumensoft/ks/c;

.field a:[B

.field b:[B

.field c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    iput-object v1, p0, Lcom/lumensoft/ks/m;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/m;->b:[B

    iput-object v1, p0, Lcom/lumensoft/ks/m;->c:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/m;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/lumensoft/ks/m;->a:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 5

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    iget v0, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/m;->b([BI)I

    move-result v3

    add-int/2addr v0, v3

    if-gez v0, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid parse"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v3, v0, p2

    iget v4, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v2

    if-lt v3, v4, :cond_0

    sub-int/2addr v0, p2

    return v0
.end method

.method public b([BI)I
    .locals 5

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    iget v2, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Lcom/lumensoft/ks/m;->c([BI)I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v2, p2

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    if-lt v3, v0, :cond_0

    sub-int v0, v2, p2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v3

    iget v0, v3, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/m;->d([BI)I

    move-result v2

    add-int/2addr v0, v2

    if-gez v0, :cond_2

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid parse"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sub-int v2, v0, p2

    iget v4, v3, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v1

    if-lt v2, v4, :cond_1

    sub-int/2addr v0, p2

    goto :goto_0
.end method

.method public c([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->f([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/m;->a:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/m;->a:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    return v0
.end method

.method public d([BI)I
    .locals 2

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/m;->e([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/m;->f([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public e([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->f([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/m;->b:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/m;->b:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    return v0
.end method

.method public f([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    aget-byte v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/lumensoft/ks/c;->a(B)I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->g([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lumensoft/ks/m;->c:[B

    iget-object v1, v0, Lcom/lumensoft/ks/g;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/m;->c:[B

    iget v3, v0, Lcom/lumensoft/ks/g;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    :goto_0
    sub-int/2addr v0, p2

    return v0

    :cond_0
    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lumensoft/ks/m;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v1, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, p2

    iget v0, v0, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Tag is not Qualifier"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method
