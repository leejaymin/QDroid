.class final Lorg/a/a/b/g;
.super Lorg/a/a/c/m;


# instance fields
.field private final b:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;Lorg/a/a/k;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->m()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/a/a/c/m;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    iput-object p1, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->c(J)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/b/d;->i(J)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/b/d;->d(JI)I

    move-result v0

    return v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->B()Lorg/a/a/k;

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

    iget-object v0, p0, Lorg/a/a/b/g;->b:Lorg/a/a/b/d;

    invoke-static {}, Lorg/a/a/b/d;->O()I

    move-result v0

    return v0
.end method
