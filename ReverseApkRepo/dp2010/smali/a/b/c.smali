.class final La/b/c;
.super La/b/f;


# direct methods
.method constructor <init>(La/b/b;)V
    .locals 1

    invoke-direct {p0}, La/b/f;-><init>()V

    iput-object p1, p0, La/b/c;->q:La/b/b;

    const/16 v0, 0x20

    iput v0, p0, La/b/c;->s:I

    return-void
.end method


# virtual methods
.method final a([B)I
    .locals 1

    invoke-virtual {p0, p1}, La/b/c;->c([B)I

    move-result v0

    return v0
.end method

.method final a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final b([B)I
    .locals 2

    iget-object v0, p0, La/b/f;->q:La/b/b;

    invoke-virtual {v0, p1}, La/b/b;->a([B)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p1, v0}, La/b/f;->b([BI)I

    move-result v1

    iput v1, p0, La/b/f;->s:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/b/f;->b([BI)I

    move-result v1

    iput v1, p0, La/b/f;->t:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameQueryRequest["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/b/f;->toString()Ljava/lang/String;

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
