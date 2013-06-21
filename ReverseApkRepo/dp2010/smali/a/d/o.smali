.class final La/d/o;
.super La/d/ap;


# instance fields
.field private S:I

.field private a:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/d/ap;-><init>()V

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 2

    invoke-static {p1, p2}, La/d/o;->d([BI)I

    move-result v0

    iput v0, p0, La/d/o;->P:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/o;->d([BI)I

    move-result v1

    iput v1, p0, La/d/o;->a:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/o;->d([BI)I

    move-result v1

    iput v1, p0, La/d/o;->Q:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/o;->d([BI)I

    move-result v1

    iput v1, p0, La/d/o;->S:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method final a([BII)I
    .locals 6

    const/4 v1, 0x0

    iput-boolean v1, p0, La/d/o;->t:Z

    iget v0, p0, La/d/o;->Q:I

    new-array v0, v0, [La/d/bf;

    iput-object v0, p0, La/d/o;->R:[La/d/h;

    move v0, v1

    move v2, p2

    :goto_0
    iget v3, p0, La/d/o;->Q:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, La/d/o;->R:[La/d/h;

    new-instance v4, La/d/bf;

    invoke-direct {v4}, La/d/bf;-><init>()V

    aput-object v4, v3, v0

    const/16 v3, 0xd

    invoke-virtual {p0, p1, v2, v3, v1}, La/d/o;->a([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, La/d/bf;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, v2}, La/d/o;->d([BI)I

    move-result v3

    iput v3, v4, La/d/bf;->c:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, La/d/o;->e([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x4

    const v5, 0xffff

    and-int/2addr v3, v5

    iget v5, p0, La/d/o;->a:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    const/16 v5, 0x80

    invoke-virtual {p0, p1, v3, v5, v1}, La/d/o;->a([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, La/d/bf;->d:Ljava/lang/String;

    sget-object v3, La/d/o;->e:La/e/e;

    sget v3, La/e/e;->a:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    sget-object v3, La/d/o;->e:La/e/e;

    invoke-virtual {v3, v4}, La/e/e;->println(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v2, p2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetShareEnumResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/o;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/o;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/o;->S:I

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
