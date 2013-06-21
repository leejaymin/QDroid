.class final Lorg/a/a/b/o;
.super Lorg/a/a/c/b;


# instance fields
.field private final a:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->w()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/c/b;-><init>(Lorg/a/a/d;)V

    iput-object p1, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/b/p;->a()I

    move-result v0

    return v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    invoke-static {p4}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/a/a/b/p;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/o;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JI)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->a(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/a/a/b/d;->e(JI)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method public final d(J)J
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->a(J)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/a/a/b/d;->e(JI)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public final d()Lorg/a/a/k;
    .locals 1

    invoke-static {}, Lorg/a/a/l;->l()Lorg/a/a/l;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c/r;->a(Lorg/a/a/l;)Lorg/a/a/c/r;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->a(J)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/o;->a:Lorg/a/a/b/d;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/a/a/b/d;->e(JI)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->d(J)J

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

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/o;->d(J)J

    move-result-wide v0

    return-wide v0
.end method
