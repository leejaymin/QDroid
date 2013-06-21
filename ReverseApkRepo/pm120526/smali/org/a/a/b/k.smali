.class final Lorg/a/a/b/k;
.super Lorg/a/a/c/m;


# instance fields
.field private final b:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;Lorg/a/a/k;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->o()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/a/a/c/m;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    iput-object p1, p0, Lorg/a/a/b/k;->b:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/k;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->f(J)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/k;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->e(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/k;->b:Lorg/a/a/b/d;

    invoke-virtual {v1, v0}, Lorg/a/a/b/d;->b(I)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 1

    const/16 v0, 0x34

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/k;->c(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final d(J)J
    .locals 4

    const-wide/32 v2, 0xf731400

    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lorg/a/a/c/m;->d(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(J)J
    .locals 4

    const-wide/32 v2, 0xf731400

    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lorg/a/a/c/m;->e(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/k;->b:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->y()Lorg/a/a/k;

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

    const/16 v0, 0x35

    return v0
.end method

.method public final i(J)J
    .locals 2

    const-wide/32 v0, 0xf731400

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Lorg/a/a/c/m;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
