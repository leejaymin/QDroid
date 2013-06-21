.class public final Lorg/cocos2d/a/f/w;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:Lorg/cocos2d/a/a/b;

.field private d:Lorg/cocos2d/a/a/b;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V
    .locals 4

    invoke-virtual {p1}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    invoke-virtual {p2}, Lorg/cocos2d/a/a/b;->g()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lorg/cocos2d/a/f/i;-><init>(F)V

    invoke-virtual {p1}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    invoke-virtual {p2}, Lorg/cocos2d/a/a/b;->g()F

    move-result v1

    iput-object p1, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    iput-object p2, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    new-instance v2, Lorg/cocos2d/a/f/v;

    new-instance v3, Lorg/cocos2d/a/f/e;

    sub-float/2addr v0, v1

    invoke-direct {v3, v0}, Lorg/cocos2d/a/f/e;-><init>(F)V

    invoke-direct {v2, p2, v3}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    iput-object v2, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Lorg/cocos2d/a/f/v;

    new-instance v3, Lorg/cocos2d/a/f/e;

    sub-float v0, v1, v0

    invoke-direct {v3, v0}, Lorg/cocos2d/a/f/e;-><init>(F)V

    invoke-direct {v2, p1, v3}, Lorg/cocos2d/a/f/v;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    iput-object v2, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    goto :goto_0
.end method

.method public static varargs a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;
    .locals 5

    if-eqz p0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move-object v1, p0

    :goto_0
    if-lt v2, v0, :cond_1

    move-object p0, v1

    :cond_0
    check-cast p0, Lorg/cocos2d/a/f/w;

    return-object p0

    :cond_1
    aget-object v3, p1, v2

    new-instance v4, Lorg/cocos2d/a/f/w;

    invoke-direct {v4, v1, v3}, Lorg/cocos2d/a/f/w;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    iget-object v1, p0, Lorg/cocos2d/a/f/w;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    iget-object v1, p0, Lorg/cocos2d/a/f/w;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/a/a/b;->b(F)V

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/a/a/b;->b(F)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    iget-object v0, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/w;

    iget-object v1, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->i()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->i()Lorg/cocos2d/a/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/w;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method

.method public final l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/w;

    iget-object v1, p0, Lorg/cocos2d/a/f/w;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/a/f/w;->d:Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/w;-><init>(Lorg/cocos2d/a/a/b;Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method
