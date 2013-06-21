.class final La/d/bx;
.super La/d/ao;


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/String;[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    iput-object p1, p0, La/d/bx;->T:Ljava/lang/String;

    iput-object p2, p0, La/d/bx;->a:[B

    iput p3, p0, La/d/bx;->b:I

    iput p4, p0, La/d/bx;->c:I

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/bx;->g:B

    const/16 v0, 0x54

    iput-byte v0, p0, La/d/bx;->S:B

    const/4 v0, -0x1

    iput v0, p0, La/d/bx;->Q:I

    iput v1, p0, La/d/bx;->N:I

    const v0, 0xffff

    iput v0, p0, La/d/bx;->O:I

    iput-byte v1, p0, La/d/bx;->P:B

    const/4 v0, 0x2

    iput v0, p0, La/d/bx;->R:I

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 3

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bx;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    aput-byte v2, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method final b([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final c([BI)I
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, La/d/bx;->c:I

    if-ge v0, v1, :cond_1

    sget-object v0, La/d/bx;->e:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, La/d/bx;->e:La/e/e;

    const-string v1, "TransCallNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, La/d/bx;->a:[B

    iget v1, p0, La/d/bx;->b:I

    iget v2, p0, La/d/bx;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/bx;->c:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransCallNamedPipe["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bx;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
