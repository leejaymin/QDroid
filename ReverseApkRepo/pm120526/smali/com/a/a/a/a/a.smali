.class public Lcom/a/a/a/a/a;
.super Lcom/a/a/a/a/b;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    const/16 v0, 0x2f

    new-instance v1, Lcom/a/a/b/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/a/a/b/b;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/a/a/b;-><init>(JILcom/a/a/b/b;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/a/a/b;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    check-cast p1, Lcom/a/a/a/b;

    iget-wide v0, p0, Lcom/a/a/a/a/a;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/a/a/a;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/a;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a/a;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/a/a/a/a;

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
