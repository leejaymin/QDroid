.class final La/d/bn;
.super La/d/ao;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, La/d/bn;->a:I

    iput-object p1, p0, La/d/bn;->A:Ljava/lang/String;

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bn;->g:B

    const/16 v0, 0x10

    iput-byte v0, p0, La/d/bn;->S:B

    iput v1, p0, La/d/bn;->M:I

    iput v1, p0, La/d/bn;->N:I

    const/16 v0, 0x1000

    iput v0, p0, La/d/bn;->O:I

    iput-byte v1, p0, La/d/bn;->P:B

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bn;->S:B

    aput-byte v1, p1, p2

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method final b([BI)I
    .locals 2

    iget v0, p0, La/d/bn;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bn;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, La/d/bn;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/bn;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method final c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2GetDfsReferral["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxReferralLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bn;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bn;->A:Ljava/lang/String;

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
