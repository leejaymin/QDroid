.class public final Lorg/a/a/c/o;
.super Lorg/a/a/c/d;


# instance fields
.field final a:I

.field final b:Lorg/a/a/k;


# direct methods
.method public constructor <init>(Lorg/a/a/c/f;)V
    .locals 1

    invoke-virtual {p1}, Lorg/a/a/c/f;->a()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/a/a/c/o;-><init>(Lorg/a/a/c/f;Lorg/a/a/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/c/f;Lorg/a/a/d;)V
    .locals 1

    invoke-virtual {p1}, Lorg/a/a/c/f;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/a/a/c/d;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    iget v0, p1, Lorg/a/a/c/f;->a:I

    iput v0, p0, Lorg/a/a/c/o;->a:I

    iget-object v0, p1, Lorg/a/a/c/f;->b:Lorg/a/a/k;

    iput-object v0, p0, Lorg/a/a/c/o;->b:Lorg/a/a/k;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/c;Lorg/a/a/d;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/a/a/c/d;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    invoke-virtual {p1}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/c/o;->b:Lorg/a/a/k;

    :goto_0
    const/16 v0, 0x64

    iput v0, p0, Lorg/a/a/c/o;->a:I

    return-void

    :cond_0
    new-instance v1, Lorg/a/a/c/p;

    invoke-virtual {p2}, Lorg/a/a/d;->z()Lorg/a/a/l;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/a/a/c/p;-><init>(Lorg/a/a/k;Lorg/a/a/l;)V

    iput-object v1, p0, Lorg/a/a/c/o;->b:Lorg/a/a/k;

    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/a/a/c/o;->a:I

    rem-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/a/a/c/o;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/a/a/c/o;->a:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final b(JI)J
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lorg/a/a/c/o;->a:I

    sub-int/2addr v1, v2

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/a/a/c/o;->a:I

    div-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v1

    iget v2, p0, Lorg/a/a/c/o;->a:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/a/a/c/o;->a:I

    div-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public final d(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/o;->b:Lorg/a/a/k;

    return-object v0
.end method

.method public final f(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lorg/a/a/c/o;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final h(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/o;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
