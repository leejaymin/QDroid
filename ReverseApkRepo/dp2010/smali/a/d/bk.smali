.class final La/d/bk;
.super La/d/ap;


# instance fields
.field S:Z

.field T:I

.field U:I

.field V:I

.field a:I

.field aA:Ljava/lang/String;

.field aB:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/ap;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bk;->g:B

    const/4 v0, 0x1

    iput-byte v0, p0, La/d/bk;->L:B

    return-void
.end method

.method private b([BII)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, La/d/bk;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-lez p3, :cond_1

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v2, La/d/u;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/bk;->e:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    sget-object v2, La/d/bk;->e:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a([BI)I
    .locals 3

    const/4 v1, 0x1

    iget-byte v0, p0, La/d/bk;->L:B

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, La/d/bk;->d([BI)I

    move-result v0

    iput v0, p0, La/d/bk;->a:I

    add-int/lit8 v0, p2, 0x2

    :goto_0
    invoke-static {p1, v0}, La/d/bk;->d([BI)I

    move-result v2

    iput v2, p0, La/d/bk;->Q:I

    add-int/lit8 v2, v0, 0x2

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/d/bk;->S:Z

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, La/d/bk;->d([BI)I

    move-result v1

    iput v1, p0, La/d/bk;->T:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/bk;->d([BI)I

    move-result v1

    iput v1, p0, La/d/bk;->U:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method final a([BII)I
    .locals 5

    iget v0, p0, La/d/bk;->U:I

    add-int/2addr v0, p2

    iput v0, p0, La/d/bk;->V:I

    iget v0, p0, La/d/bk;->Q:I

    new-array v0, v0, [La/d/bl;

    iput-object v0, p0, La/d/bk;->R:[La/d/h;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/d/bk;->Q:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, La/d/bk;->R:[La/d/h;

    new-instance v2, La/d/bl;

    invoke-direct {v2, p0}, La/d/bl;-><init>(La/d/bk;)V

    aput-object v2, v1, v0

    invoke-static {p1, p2}, La/d/bk;->e([BI)I

    move-result v1

    iput v1, v2, La/d/bl;->a:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, La/d/bk;->e([BI)I

    move-result v1

    iput v1, v2, La/d/bl;->b:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/bk;->g([BI)J

    move-result-wide v3

    iput-wide v3, v2, La/d/bl;->c:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, La/d/bk;->g([BI)J

    move-result-wide v3

    iput-wide v3, v2, La/d/bl;->e:J

    add-int/lit8 v1, p2, 0x28

    invoke-static {p1, v1}, La/d/bk;->f([BI)J

    move-result-wide v3

    iput-wide v3, v2, La/d/bl;->g:J

    add-int/lit8 v1, p2, 0x38

    invoke-static {p1, v1}, La/d/bk;->e([BI)I

    move-result v1

    iput v1, v2, La/d/bl;->i:I

    add-int/lit8 v1, p2, 0x3c

    invoke-static {p1, v1}, La/d/bk;->e([BI)I

    move-result v1

    iput v1, v2, La/d/bl;->j:I

    add-int/lit8 v1, p2, 0x5e

    iget v3, v2, La/d/bl;->j:I

    invoke-direct {p0, p1, v1, v3}, La/d/bk;->b([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, La/d/bl;->n:Ljava/lang/String;

    iget v1, p0, La/d/bk;->V:I

    if-lt v1, p2, :cond_1

    iget v1, v2, La/d/bl;->a:I

    if-eqz v1, :cond_0

    iget v1, p0, La/d/bk;->V:I

    iget v3, v2, La/d/bl;->a:I

    add-int/2addr v3, p2

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, v2, La/d/bl;->n:Ljava/lang/String;

    iput-object v1, p0, La/d/bk;->aA:Ljava/lang/String;

    iget v1, v2, La/d/bl;->b:I

    iput v1, p0, La/d/bk;->aB:I

    :cond_1
    iget v1, v2, La/d/bl;->a:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, La/d/bk;->K:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, La/d/bk;->L:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Trans2FindFirst2Response["

    :goto_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, La/d/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/d/bk;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",searchCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/d/bk;->Q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isEndOfSearch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, La/d/bk;->S:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",eaErrorOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/d/bk;->T:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastNameOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/d/bk;->U:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/bk;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "Trans2FindNext2Response["

    goto :goto_0
.end method
