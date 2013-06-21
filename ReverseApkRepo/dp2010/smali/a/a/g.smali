.class public abstract La/a/g;
.super La/a/b/d;

# interfaces
.implements La/a/c;


# instance fields
.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/b/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/g;->f:I

    iput v1, p0, La/a/g;->g:I

    iput v1, p0, La/a/g;->h:I

    iput v1, p0, La/a/g;->i:I

    iput v1, p0, La/a/g;->j:I

    iput v1, p0, La/a/g;->k:I

    return-void
.end method


# virtual methods
.method public a()La/a/e;
    .locals 2

    iget v0, p0, La/a/g;->k:I

    if-eqz v0, :cond_0

    new-instance v0, La/a/e;

    iget v1, p0, La/a/g;->k:I

    invoke-direct {v0, v1}, La/a/e;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(La/a/b/a;)V
.end method

.method public abstract b()I
.end method

.method public abstract b(La/a/b/a;)V
.end method

.method final c(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->e(I)V

    iget v0, p0, La/a/g;->f:I

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)V

    iget v0, p0, La/a/g;->g:I

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/g;->h:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    iget v0, p0, La/a/g;->i:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, La/a/g;->g:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(La/a/b/a;)V
    .locals 2

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, La/a/b/b;

    const-string v1, "DCERPC version not supported"

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    iput v0, p0, La/a/g;->f:I

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    iput v0, p0, La/a/g;->g:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    new-instance v0, La/a/b/b;

    const-string v1, "Data representation not supported"

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    iput v0, p0, La/a/g;->h:I

    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, La/a/b/b;

    const-string v1, "DCERPC authentication not supported"

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/g;->i:I

    return-void
.end method

.method public final e(La/a/b/a;)V
    .locals 3

    const/4 v1, 0x0

    iget v2, p1, La/a/b/a;->c:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, La/a/b/a;->c(I)V

    iget v0, p0, La/a/g;->f:I

    if-nez v0, :cond_1

    iget v0, p1, La/a/b/a;->c:I

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    invoke-virtual {p0}, La/a/g;->b()I

    move-result v1

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    :goto_0
    invoke-virtual {p0, p1}, La/a/g;->a(La/a/b/a;)V

    iget v1, p1, La/a/b/a;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, La/a/g;->h:I

    iget v1, p0, La/a/g;->f:I

    if-nez v1, :cond_0

    iput v0, p1, La/a/b/a;->c:I

    iget v1, p0, La/a/g;->h:I

    sub-int v0, v1, v0

    iput v0, p0, La/a/g;->j:I

    iget v0, p0, La/a/g;->j:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    :cond_0
    iput v2, p1, La/a/b/a;->c:I

    invoke-virtual {p0, p1}, La/a/g;->c(La/a/b/a;)V

    iget v0, p0, La/a/g;->h:I

    add-int/2addr v0, v2

    iput v0, p1, La/a/b/a;->c:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final f(La/a/b/a;)V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, La/a/g;->d(La/a/b/a;)V

    iget v0, p0, La/a/g;->f:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, La/a/g;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, La/a/g;->f:I

    if-eq v0, v2, :cond_0

    iget v0, p0, La/a/g;->f:I

    if-eq v0, v4, :cond_0

    new-instance v0, La/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected ptype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/a/g;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, La/a/g;->f:I

    if-eq v0, v3, :cond_1

    iget v0, p0, La/a/g;->f:I

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/g;->j:I

    invoke-virtual {p1}, La/a/b/a;->c()I

    invoke-virtual {p1}, La/a/b/a;->c()I

    :cond_2
    iget v0, p0, La/a/g;->f:I

    if-eq v0, v2, :cond_3

    iget v0, p0, La/a/g;->f:I

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/g;->k:I

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, p1}, La/a/g;->b(La/a/b/a;)V

    goto :goto_0
.end method
