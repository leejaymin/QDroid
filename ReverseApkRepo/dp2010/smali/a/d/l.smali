.class final La/d/l;
.super La/d/ap;


# instance fields
.field private S:I

.field private T:I

.field a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/ap;-><init>()V

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 2

    invoke-static {p1, p2}, La/d/l;->d([BI)I

    move-result v0

    iput v0, p0, La/d/l;->P:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/l;->d([BI)I

    move-result v1

    iput v1, p0, La/d/l;->S:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/l;->d([BI)I

    move-result v1

    iput v1, p0, La/d/l;->Q:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/l;->d([BI)I

    move-result v1

    iput v1, p0, La/d/l;->T:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method final a([BII)I
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, La/d/l;->Q:I

    new-array v0, v0, [La/d/m;

    iput-object v0, p0, La/d/l;->R:[La/d/h;

    move v0, v1

    move-object v2, v3

    move v4, p2

    :goto_0
    iget v5, p0, La/d/l;->Q:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, La/d/l;->R:[La/d/h;

    new-instance v2, La/d/m;

    invoke-direct {v2, p0}, La/d/m;-><init>(La/d/l;)V

    aput-object v2, v5, v0

    const/16 v5, 0x10

    invoke-virtual {p0, p1, v4, v5, v1}, La/d/l;->a([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, La/d/m;->a:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v2, La/d/m;->b:I

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v2, La/d/m;->c:I

    invoke-static {p1, v4}, La/d/l;->e([BI)I

    move-result v5

    iput v5, v2, La/d/m;->d:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, La/d/l;->e([BI)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    const v6, 0xffff

    and-int/2addr v5, v6

    iget v6, p0, La/d/l;->S:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    const/16 v6, 0x30

    invoke-virtual {p0, p1, v5, v6, v1}, La/d/l;->a([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, La/d/m;->e:Ljava/lang/String;

    sget-object v5, La/d/l;->e:La/e/e;

    sget v5, La/e/e;->a:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    sget-object v5, La/d/l;->e:La/e/e;

    invoke-virtual {v5, v2}, La/e/e;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, La/d/l;->Q:I

    if-nez v0, :cond_2

    :goto_1
    iput-object v3, p0, La/d/l;->a:Ljava/lang/String;

    sub-int v0, v4, p2

    return v0

    :cond_2
    iget-object v3, v2, La/d/m;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetServerEnum2Response["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/l;->a:Ljava/lang/String;

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
