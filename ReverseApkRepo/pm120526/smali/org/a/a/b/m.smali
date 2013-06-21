.class final Lorg/a/a/b/m;
.super Lorg/a/a/c/h;


# instance fields
.field protected final a:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;)V
    .locals 3

    invoke-static {}, Lorg/a/a/d;->s()Lorg/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/b/d;->S()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/c/h;-><init>(Lorg/a/a/d;J)V

    iput-object p1, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 4

    if-nez p3, :cond_0

    move-wide v0, p1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/m;->a(J)I

    move-result v0

    add-int v1, v0, p3

    xor-int v2, v0, v1

    if-gez v2, :cond_1

    xor-int v2, v0, p3

    if-ltz v2, :cond_1

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The calculation caused an overflow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lorg/a/a/b/m;->b(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(JJ)J
    .locals 2

    invoke-static {p3, p4}, Lorg/a/a/c/g;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/m;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JI)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->P()I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v1}, Lorg/a/a/b/d;->Q()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/b/d;->e(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)Z
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/m;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/a/a/b/d;->d(I)Z

    move-result v0

    return v0
.end method

.method public final d(J)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/m;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/a/a/b/d;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/m;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, v0}, Lorg/a/a/b/d;->c(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/a/a/b/d;->c(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->s()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->P()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/m;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->Q()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/m;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method
