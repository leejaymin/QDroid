.class final Lorg/a/a/b/r;
.super Lorg/a/a/c/d;


# instance fields
.field private final a:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/c;Lorg/a/a/b/d;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->t()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/a/a/c/d;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    iput-object p2, p0, Lorg/a/a/b/r;->a:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/c;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JI)J
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    invoke-static {p0, p3, v1, v0}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    iget-object v0, p0, Lorg/a/a/b/r;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    sub-int v0, v1, p3

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lorg/a/a/c/d;->b(JI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, p3

    goto :goto_0
.end method

.method public final d(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/r;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
