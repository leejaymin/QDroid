.class public final Lcom/a/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[B

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/a/a/b/b;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/a/a/b/b;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/a/a/b/b;->a:I

    iget v0, p0, Lcom/a/a/b/b;->a:I

    if-nez v0, :cond_1

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/a/a/b/b;->b:[B

    iget-object v0, p0, Lcom/a/a/b/b;->b:[B

    aput-byte v4, v0, v4

    iput v5, p0, Lcom/a/a/b/b;->c:I

    :cond_0
    return-void

    :cond_1
    iput v4, p0, Lcom/a/a/b/b;->c:I

    new-array v0, v6, [I

    iget v1, p0, Lcom/a/a/b/b;->a:I

    :goto_0
    iget v2, p0, Lcom/a/a/b/b;->c:I

    if-ge v2, v6, :cond_2

    if-gtz v1, :cond_3

    :cond_2
    move v1, v5

    :goto_1
    iget v2, p0, Lcom/a/a/b/b;->c:I

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/a/a/b/b;->c:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/a/a/b/b;->b:[B

    move v1, v4

    :goto_2
    iget v2, p0, Lcom/a/a/b/b;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/a/a/b/b;->b:[B

    iget v3, p0, Lcom/a/a/b/b;->c:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v5

    aget v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/a/a/b/b;->c:I

    and-int/lit8 v3, v1, 0x7f

    aput v3, v0, v2

    iget v2, p0, Lcom/a/a/b/b;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/b/b;->c:I

    shr-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_4
    aget v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/a/a/b/b;->c:I

    return v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/b;->b:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/b/b;->b:[B

    invoke-static {v1}, Lcom/a/a/b/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/b/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
