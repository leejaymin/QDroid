.class final La/d/bq;
.super La/d/ao;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bq;->g:B

    const/4 v0, 0x3

    iput-byte v0, p0, La/d/bq;->S:B

    const/4 v0, 0x1

    iput v0, p0, La/d/bq;->a:I

    const/4 v0, 0x2

    iput v0, p0, La/d/bq;->L:I

    iput v1, p0, La/d/bq;->M:I

    iput v1, p0, La/d/bq;->N:I

    const/16 v0, 0x320

    iput v0, p0, La/d/bq;->O:I

    iput-byte v1, p0, La/d/bq;->P:B

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bq;->S:B

    aput-byte v1, p1, p2

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method final b([BI)I
    .locals 2

    iget v0, p0, La/d/bq;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bq;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method final c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2QueryFSInformation["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bq;->a:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

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
