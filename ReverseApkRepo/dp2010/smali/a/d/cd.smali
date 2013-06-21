.class final La/d/cd;
.super La/d/ao;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    iput-object p1, p0, La/d/cd;->T:Ljava/lang/String;

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/cd;->g:B

    const/16 v0, 0x53

    iput-byte v0, p0, La/d/cd;->S:B

    const/4 v0, -0x1

    iput v0, p0, La/d/cd;->Q:I

    iput v1, p0, La/d/cd;->N:I

    iput v1, p0, La/d/cd;->O:I

    iput-byte v1, p0, La/d/cd;->P:B

    const/4 v0, 0x2

    iput v0, p0, La/d/cd;->R:I

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 3

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/cd;->S:B

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransWaitNamedPipe["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/cd;->T:Ljava/lang/String;

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
