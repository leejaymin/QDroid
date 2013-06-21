.class final Lorg/a/a/b/h;
.super Lorg/a/a/c/m;


# instance fields
.field private final b:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;Lorg/a/a/k;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->n()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/a/a/c/m;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    iput-object p1, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->d(J)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-virtual {v1, v0}, Lorg/a/a/b/d;->a(I)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 2

    const/16 v1, 0x16d

    iget-object v0, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-static {}, Lorg/a/a/b/d;->N()I

    if-gt p3, v1, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/h;->c(J)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->D()Lorg/a/a/k;

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

    iget-object v0, p0, Lorg/a/a/b/h;->b:Lorg/a/a/b/d;

    invoke-static {}, Lorg/a/a/b/d;->N()I

    move-result v0

    return v0
.end method
