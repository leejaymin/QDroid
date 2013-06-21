.class final La/d/k;
.super La/d/ao;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WrLehDO\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    sput-object v0, La/d/k;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/k;->c:Ljava/lang/String;

    iput-object p1, p0, La/d/k;->b:Ljava/lang/String;

    iput p2, p0, La/d/k;->d:I

    const/16 v0, 0x25

    iput-byte v0, p0, La/d/k;->g:B

    const/16 v0, 0x68

    iput-byte v0, p0, La/d/k;->S:B

    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, La/d/k;->T:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, La/d/k;->N:I

    const/16 v0, 0x4000

    iput v0, p0, La/d/k;->O:I

    iput-byte v1, p0, La/d/k;->P:B

    iput v1, p0, La/d/k;->R:I

    const/16 v0, 0x1388

    iput v0, p0, La/d/k;->Q:I

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0}, La/d/ao;->e()V

    iput-object p2, p0, La/d/k;->c:Ljava/lang/String;

    return-void
.end method

.method final b([BI)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, La/d/k;->S:B

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    :try_start_0
    sget-object v3, La/d/k;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-byte v4, p0, La/d/k;->S:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, La/d/k;->a(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v3

    invoke-static {v3, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p1, v3}, La/d/k;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, La/d/k;->O:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, La/d/k;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, La/d/k;->d:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, La/d/k;->b(J[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, La/d/k;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v3, v1}, La/d/k;->a(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, La/d/k;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3, v1}, La/d/k;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    add-int/2addr v0, v3

    :goto_1
    sub-int v1, v0, p2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method final c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NetServerEnum2["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/k;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, La/d/k;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "SV_TYPE_ALL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "SV_TYPE_DOMAIN_ENUM"

    goto :goto_0
.end method
