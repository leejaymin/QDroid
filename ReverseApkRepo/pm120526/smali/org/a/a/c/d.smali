.class public abstract Lorg/a/a/c/d;
.super Lorg/a/a/c/b;


# instance fields
.field private final a:Lorg/a/a/c;


# direct methods
.method protected constructor <init>(Lorg/a/a/c;Lorg/a/a/d;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/a/a/c/b;-><init>(Lorg/a/a/d;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->e()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public final i()Lorg/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/c;

    return-object v0
.end method
