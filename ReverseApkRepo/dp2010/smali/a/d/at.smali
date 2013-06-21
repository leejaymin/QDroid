.class final La/d/at;
.super La/d/u;


# instance fields
.field private D:I

.field private E:[B

.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/u;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, La/d/at;->g:B

    return-void
.end method


# virtual methods
.method final a(IJI[BII)V
    .locals 2

    iput p1, p0, La/d/at;->a:I

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, La/d/at;->c:I

    iput p4, p0, La/d/at;->d:I

    iput-object p5, p0, La/d/at;->E:[B

    iput p6, p0, La/d/at;->D:I

    iput p7, p0, La/d/at;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/at;->B:La/d/v;

    return-void
.end method

.method final i([BI)I
    .locals 3

    iget v0, p0, La/d/at;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/at;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, La/d/at;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/at;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/at;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/at;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/at;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/at;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method final j([BI)I
    .locals 4

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    aput-byte v1, p1, p2

    iget v1, p0, La/d/at;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/at;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/at;->E:[B

    iget v2, p0, La/d/at;->D:I

    iget v3, p0, La/d/at;->b:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/d/at;->b:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method final k([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final l([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComWrite["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/at;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/at;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/at;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/at;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
