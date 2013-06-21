.class final La/d/br;
.super La/d/ap;


# instance fields
.field private S:I

.field a:La/d/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/ap;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, La/d/br;->S:I

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/br;->g:B

    const/4 v0, 0x3

    iput-byte v0, p0, La/d/br;->L:B

    return-void
.end method


# virtual methods
.method final a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a([BII)I
    .locals 4

    iget v0, p0, La/d/br;->S:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    new-instance v0, La/d/bs;

    invoke-direct {v0, p0}, La/d/bs;-><init>(La/d/br;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La/d/bs;->a:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, La/d/bs;->b:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/br;->d([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/br;->a:La/d/a;

    sub-int v0, v1, p2

    goto :goto_0

    :sswitch_1
    new-instance v0, La/d/bs;

    invoke-direct {v0, p0}, La/d/bs;-><init>(La/d/br;)V

    invoke-static {p1, p2}, La/d/br;->f([BI)J

    move-result-wide v1

    iput-wide v1, v0, La/d/bs;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/br;->f([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/bs;->b:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/br;->a:La/d/a;

    sub-int v0, v1, p2

    goto :goto_0

    :sswitch_2
    new-instance v0, La/d/bs;

    invoke-direct {v0, p0}, La/d/bs;-><init>(La/d/br;)V

    invoke-static {p1, p2}, La/d/br;->f([BI)J

    move-result-wide v1

    iput-wide v1, v0, La/d/bs;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, La/d/br;->f([BI)J

    move-result-wide v2

    iput-wide v2, v0, La/d/bs;->b:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, La/d/br;->e([BI)I

    move-result v2

    iput v2, v0, La/d/bs;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, La/d/br;->a:La/d/a;

    sub-int v0, v1, p2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x103 -> :sswitch_1
        0x3ef -> :sswitch_2
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2QueryFSInformationResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ap;->toString()Ljava/lang/String;

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
