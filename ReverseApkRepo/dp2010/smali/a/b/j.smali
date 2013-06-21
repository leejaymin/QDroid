.class final La/b/j;
.super La/b/f;


# direct methods
.method constructor <init>(La/b/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/b/f;-><init>()V

    iput-object p1, p0, La/b/j;->q:La/b/b;

    const/16 v0, 0x21

    iput v0, p0, La/b/j;->s:I

    iput-boolean v1, p0, La/b/j;->n:Z

    iput-boolean v1, p0, La/b/j;->p:Z

    return-void
.end method


# virtual methods
.method final a([B)I
    .locals 3

    iget-object v0, p0, La/b/j;->q:La/b/b;

    iget v0, v0, La/b/b;->d:I

    iget-object v1, p0, La/b/j;->q:La/b/b;

    const/4 v2, 0x0

    iput v2, v1, La/b/b;->d:I

    invoke-virtual {p0, p1}, La/b/j;->c([B)I

    move-result v1

    iget-object v2, p0, La/b/j;->q:La/b/b;

    iput v0, v2, La/b/b;->d:I

    return v1
.end method

.method final a([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final b([B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NodeStatusRequest["

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
