.class final Lorg/a/a/b/l;
.super Lorg/a/a/c/h;


# instance fields
.field private final a:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;)V
    .locals 3

    invoke-static {}, Lorg/a/a/d;->p()Lorg/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/b/d;->S()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/c/h;-><init>(Lorg/a/a/d;J)V

    iput-object p1, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->e(J)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 2

    if-nez p3, :cond_0

    move-wide v0, p1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/l;->a(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/l;->b(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(JJ)J
    .locals 2

    invoke-static {p3, p4}, Lorg/a/a/c/g;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/l;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JI)J
    .locals 8

    const-wide/32 v6, 0x240c8400

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v1}, Lorg/a/a/b/d;->P()I

    move-result v1

    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2}, Lorg/a/a/b/d;->Q()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/l;->a(J)I

    move-result v0

    if-ne v0, p3, :cond_0

    move-wide v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-static {p1, p2}, Lorg/a/a/b/d;->g(J)I

    move-result v1

    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, v0}, Lorg/a/a/b/d;->b(I)I

    move-result v0

    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, p3}, Lorg/a/a/b/d;->b(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, p1, p2}, Lorg/a/a/b/d;->f(J)I

    move-result v2

    if-le v2, v0, :cond_4

    :goto_1
    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, p1, p2, p3}, Lorg/a/a/b/d;->e(JI)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/a/a/b/l;->a(J)I

    move-result v4

    if-ge v4, p3, :cond_3

    add-long/2addr v2, v6

    :cond_2
    :goto_2
    iget-object v4, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v4, v2, v3}, Lorg/a/a/b/d;->f(J)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-long v4, v0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->t()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    if-le v4, p3, :cond_2

    sub-long/2addr v2, v6

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final b(J)Z
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    iget-object v1, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v1, p1, p2}, Lorg/a/a/b/d;->e(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/a/a/b/d;->b(I)I

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(J)J
    .locals 7

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->x()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/b/d;->f(J)I

    move-result v2

    if-le v2, v5, :cond_0

    const-wide/32 v3, 0x240c8400

    sub-int/2addr v2, v5

    int-to-long v5, v2

    mul-long v2, v3, v5

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->w()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->P()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->Q()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/l;->d(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method
