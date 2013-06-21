.class public Lcom/lumensoft/ks/n;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field a:Lcom/lumensoft/ks/j;

.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 5

    const/4 v2, 0x0

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lumensoft/ks/n;->a:[B

    array-length v0, p1

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/lumensoft/ks/n;->a:I

    iget-object v0, p0, Lcom/lumensoft/ks/n;->a:[B

    iget v3, p0, Lcom/lumensoft/ks/n;->a:I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v1, [B

    move v0, v2

    :goto_1
    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/lumensoft/ks/j;

    invoke-direct {v0}, Lcom/lumensoft/ks/j;-><init>()V

    iput-object v0, p0, Lcom/lumensoft/ks/n;->a:Lcom/lumensoft/ks/j;

    iget-object v0, p0, Lcom/lumensoft/ks/n;->a:Lcom/lumensoft/ks/j;

    array-length v1, v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/lumensoft/ks/j;->a([BII)V

    return-void

    :cond_0
    array-length v0, p1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/lumensoft/ks/n;->a:[B

    aget-byte v4, v4, v0

    xor-int/lit8 v4, v4, 0x36

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcom/lumensoft/ks/n;->a:Lcom/lumensoft/ks/j;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/lumensoft/ks/j;->a([BII)V

    return-void
.end method

.method public a()[B
    .locals 7

    const/16 v6, 0x40

    const/16 v5, 0x14

    const/4 v1, 0x0

    new-array v2, v5, [B

    iget-object v0, p0, Lcom/lumensoft/ks/n;->a:Lcom/lumensoft/ks/j;

    invoke-virtual {v0, v2, v1}, Lcom/lumensoft/ks/j;->a([BI)I

    new-array v3, v6, [B

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_0

    new-instance v0, Lcom/lumensoft/ks/j;

    invoke-direct {v0}, Lcom/lumensoft/ks/j;-><init>()V

    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Lcom/lumensoft/ks/j;->a([BII)V

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Lcom/lumensoft/ks/j;->a([BII)V

    new-array v2, v5, [B

    invoke-virtual {v0, v2, v1}, Lcom/lumensoft/ks/j;->a([BI)I

    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/lumensoft/ks/n;->a:[B

    aget-byte v4, v4, v0

    xor-int/lit8 v4, v4, 0x5c

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
