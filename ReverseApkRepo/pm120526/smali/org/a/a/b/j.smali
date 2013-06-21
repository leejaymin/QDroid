.class Lorg/a/a/b/j;
.super Lorg/a/a/c/h;


# instance fields
.field private final a:Lorg/a/a/b/d;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lorg/a/a/b/d;)V
    .locals 3

    invoke-static {}, Lorg/a/a/d;->r()Lorg/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/b/d;->T()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/c/h;-><init>(Lorg/a/a/d;J)V

    iput-object p1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-static {}, Lorg/a/a/b/d;->R()I

    move-result v0

    iput v0, p0, Lorg/a/a/b/j;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/a/a/b/j;->d:I

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->b(J)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 8

    const/4 v7, 0x1

    if-nez p3, :cond_0

    move-wide v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-static {p1, p2}, Lorg/a/a/b/d;->h(J)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v2

    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, p1, p2, v2}, Lorg/a/a/b/d;->a(JI)I

    move-result v3

    sub-int v4, v3, v7

    add-int/2addr v4, p3

    if-ltz v4, :cond_3

    iget v5, p0, Lorg/a/a/b/j;->c:I

    div-int v5, v4, v5

    add-int/2addr v5, v2

    iget v6, p0, Lorg/a/a/b/j;->c:I

    rem-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v6, p1, p2, v2, v3}, Lorg/a/a/b/d;->a(JII)I

    move-result v2

    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, v5, v4}, Lorg/a/a/b/d;->b(II)I

    move-result v3

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, v5, v4, v2}, Lorg/a/a/b/d;->a(III)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v5, p0, Lorg/a/a/b/j;->c:I

    div-int v5, v4, v5

    add-int/2addr v5, v2

    sub-int/2addr v5, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lorg/a/a/b/j;->c:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_4

    iget v4, p0, Lorg/a/a/b/j;->c:I

    :cond_4
    iget v6, p0, Lorg/a/a/b/j;->c:I

    sub-int v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public final a(JJ)J
    .locals 10

    long-to-int v0, p3

    int-to-long v1, v0

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/j;->a(JI)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-static {p1, p2}, Lorg/a/a/b/d;->h(J)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v2

    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, p1, p2, v2}, Lorg/a/a/b/d;->a(JI)I

    move-result v3

    const/4 v4, 0x1

    sub-int v4, v3, v4

    int-to-long v4, v4

    add-long/2addr v4, p3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    int-to-long v6, v2

    iget v8, p0, Lorg/a/a/b/j;->c:I

    int-to-long v8, v8

    div-long v8, v4, v8

    add-long/2addr v6, v8

    iget v8, p0, Lorg/a/a/b/j;->c:I

    int-to-long v8, v8

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v8}, Lorg/a/a/b/d;->P()I

    const-wide/32 v8, -0x116bc36e

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    iget-object v8, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v8}, Lorg/a/a/b/d;->Q()I

    const-wide/32 v8, 0x116bd2d1

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Magnitude of add amount is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    int-to-long v6, v2

    iget v8, p0, Lorg/a/a/b/j;->c:I

    int-to-long v8, v8

    div-long v8, v4, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget v8, p0, Lorg/a/a/b/j;->c:I

    int-to-long v8, v8

    rem-long/2addr v4, v8

    long-to-int v4, v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/a/a/b/j;->c:I

    :cond_4
    iget v5, p0, Lorg/a/a/b/j;->c:I

    sub-int v4, v5, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_1

    :cond_5
    long-to-int v6, v6

    long-to-int v4, v4

    iget-object v5, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v5, p1, p2, v2, v3}, Lorg/a/a/b/d;->a(JII)I

    move-result v2

    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, v6, v4}, Lorg/a/a/b/d;->b(II)I

    move-result v3

    if-le v2, v3, :cond_6

    move v2, v3

    :cond_6
    iget-object v3, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v3, v6, v4, v2}, Lorg/a/a/b/d;->a(III)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto/16 :goto_0
.end method

.method public final b(JI)J
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lorg/a/a/b/j;->c:I

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, p1, p2, v0}, Lorg/a/a/b/d;->b(JI)I

    move-result v1

    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, v0, p3}, Lorg/a/a/b/d;->b(II)I

    move-result v2

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, v0, p3, v1}, Lorg/a/a/b/d;->a(III)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-static {p1, p2}, Lorg/a/a/b/d;->h(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, v0}, Lorg/a/a/b/d;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, p1, p2, v0}, Lorg/a/a/b/d;->a(JI)I

    move-result v0

    iget v1, p0, Lorg/a/a/b/j;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final d(J)J
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, p1, p2, v0}, Lorg/a/a/b/d;->a(JI)I

    move-result v1

    iget-object v2, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/b/d;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->D()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/j;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->s()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lorg/a/a/b/j;->c:I

    return v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/j;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method
