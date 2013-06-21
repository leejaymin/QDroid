.class public Lcom/lumensoft/ks/o;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field public a:Lcom/lumensoft/ks/c;

.field a:Lcom/lumensoft/ks/m;

.field a:Z

.field public a:[B

.field b:Z

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    iput-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/m;

    iput-object v1, p0, Lcom/lumensoft/ks/o;->a:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->b:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->c:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->d:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->e:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->f:[B

    iput-object v1, p0, Lcom/lumensoft/ks/o;->g:[B

    iput-boolean v2, p0, Lcom/lumensoft/ks/o;->a:Z

    iput-boolean v2, p0, Lcom/lumensoft/ks/o;->b:Z

    invoke-virtual {p0, p1, p2}, Lcom/lumensoft/ks/o;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/lumensoft/ks/o;->a:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 5

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->b:I

    iget v0, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, p2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/o;->b([BI)I

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
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v6

    iget v0, v6, Lcom/lumensoft/ks/g;->a:I

    add-int v4, p2, v0

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->f:[B

    sget-object v3, Lcom/lumensoft/ks/q;->f:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lumensoft/ks/q;->f:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->a:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->a:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->g:[B

    sget-object v3, Lcom/lumensoft/ks/q;->g:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lumensoft/ks/q;->g:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->b:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->b:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->h:[B

    sget-object v3, Lcom/lumensoft/ks/q;->h:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/lumensoft/ks/q;->h:[B

    array-length v0, v0

    add-int/2addr v0, v4

    aget-byte v1, p1, v0

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget-boolean v3, v1, Lcom/lumensoft/ks/g;->a:Z

    iput-boolean v3, p0, Lcom/lumensoft/ks/o;->a:Z

    iget v1, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->c:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->c:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->i:[B

    sget-object v3, Lcom/lumensoft/ks/q;->i:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/lumensoft/ks/q;->i:[B

    array-length v0, v0

    add-int/2addr v0, v4

    aget-byte v1, p1, v0

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget-boolean v2, v1, Lcom/lumensoft/ks/g;->a:Z

    iput-boolean v2, p0, Lcom/lumensoft/ks/o;->b:Z

    iget v1, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v2, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v2

    new-instance v2, Lcom/lumensoft/ks/m;

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    invoke-direct {v2, v1}, Lcom/lumensoft/ks/m;-><init>([B)V

    iput-object v2, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/m;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->j:[B

    sget-object v3, Lcom/lumensoft/ks/q;->j:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_7

    aget-byte v0, p1, v4

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v4}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v0

    :cond_6
    sget-object v0, Lcom/lumensoft/ks/q;->j:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->d:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->d:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->k:[B

    sget-object v3, Lcom/lumensoft/ks/q;->k:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_9

    aget-byte v0, p1, v4

    if-ne v0, v7, :cond_8

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v4}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v0

    :cond_8
    sget-object v0, Lcom/lumensoft/ks/q;->k:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->e:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->e:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->l:[B

    sget-object v3, Lcom/lumensoft/ks/q;->l:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_b

    aget-byte v0, p1, v4

    if-ne v0, v7, :cond_a

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v4}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v0

    :cond_a
    sget-object v0, Lcom/lumensoft/ks/q;->l:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->f:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->f:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    sget-object v1, Lcom/lumensoft/ks/q;->m:[B

    sget-object v3, Lcom/lumensoft/ks/q;->m:[B

    array-length v5, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lumensoft/ks/c;->a([BI[BII)I

    move-result v0

    if-nez v0, :cond_d

    aget-byte v0, p1, v4

    if-ne v0, v7, :cond_c

    iget-object v0, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v0, p1, v4}, Lcom/lumensoft/ks/c;->b([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v0, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v4, v0

    :cond_c
    sget-object v0, Lcom/lumensoft/ks/q;->m:[B

    array-length v0, v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/lumensoft/ks/o;->a:Lcom/lumensoft/ks/c;

    invoke-virtual {v1, p1, v0}, Lcom/lumensoft/ks/c;->e([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v3, v1, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v0, v3

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lumensoft/ks/o;->g:[B

    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    iget-object v4, p0, Lcom/lumensoft/ks/o;->g:[B

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    array-length v1, v1

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_d
    iget v0, v6, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v4

    goto/16 :goto_0
.end method
