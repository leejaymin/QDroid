.class public final Lorg/cocos2d/a/f/v;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:[Lorg/cocos2d/a/a/b;

.field private d:F

.field private e:I


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V
    .locals 2

    invoke-virtual {p1}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    invoke-virtual {p2}, Lorg/cocos2d/a/a/b;->g()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/cocos2d/a/f/i;-><init>(F)V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cocos2d/a/a/b;

    iput-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    iget-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-void
.end method

.method public static varargs a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lorg/cocos2d/a/f/v;

    invoke-static {}, Lorg/cocos2d/a/a/b;->f()Lorg/cocos2d/a/a/b;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    check-cast p0, Lorg/cocos2d/a/f/v;

    move-object v0, p0

    goto :goto_0

    :cond_1
    aget-object v2, p1, v1

    new-instance v3, Lorg/cocos2d/a/f/v;

    invoke-direct {v3, p0, v2}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    iget v1, p0, Lorg/cocos2d/a/f/v;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/v;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/a/f/v;->e:I

    return-void
.end method

.method public final b(F)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget v0, p0, Lorg/cocos2d/a/f/v;->d:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/cocos2d/a/f/v;->d:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/cocos2d/a/f/v;->d:F

    sub-float v0, p1, v0

    iget v1, p0, Lorg/cocos2d/a/f/v;->d:F

    sub-float v1, v4, v1

    div-float/2addr v0, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lorg/cocos2d/a/f/v;->e:I

    if-ne v2, v6, :cond_0

    if-ne v0, v3, :cond_0

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    aget-object v2, v2, v5

    iget-object v3, p0, Lorg/cocos2d/a/f/v;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v2, v3}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lorg/cocos2d/a/a/b;->b(F)V

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->d()V

    :cond_0
    iget v2, p0, Lorg/cocos2d/a/f/v;->e:I

    if-eq v2, v0, :cond_2

    iget v2, p0, Lorg/cocos2d/a/f/v;->e:I

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    iget v3, p0, Lorg/cocos2d/a/f/v;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lorg/cocos2d/a/a/b;->b(F)V

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    iget v3, p0, Lorg/cocos2d/a/f/v;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->d()V

    :cond_1
    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/f/v;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v2, v3}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/cocos2d/a/a/b;->b(F)V

    iput v0, p0, Lorg/cocos2d/a/f/v;->e:I

    return-void

    :cond_3
    iget v0, p0, Lorg/cocos2d/a/f/v;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/cocos2d/a/f/v;->d:F

    div-float v0, p1, v0

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    iget-object v0, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/v;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/v;

    iget-object v1, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/v;->m()Lorg/cocos2d/a/f/v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/v;->j()Lorg/cocos2d/a/f/v;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lorg/cocos2d/a/f/v;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/v;

    iget-object v1, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->i()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/a/f/v;->c:[Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->i()Lorg/cocos2d/a/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method
