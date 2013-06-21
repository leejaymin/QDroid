.class public final Lorg/cocos2d/a/f/p;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:I

.field private d:I

.field private e:Lorg/cocos2d/a/a/b;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/a/b;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/p;->c:I

    iput-object p1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/f/p;->d:I

    return-void
.end method

.method public static a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/p;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/p;-><init>(Lorg/cocos2d/a/a/b;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/f/p;->d:I

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final b(F)V
    .locals 3

    const/high16 v2, 0x3f80

    iget v0, p0, Lorg/cocos2d/a/f/p;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/cocos2d/a/f/p;->d:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1, v2}, Lorg/cocos2d/a/a/b;->b(F)V

    iget v1, p0, Lorg/cocos2d/a/f/p;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/a/f/p;->d:I

    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->d()V

    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    iget-object v2, p0, Lorg/cocos2d/a/f/p;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1, v2}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    iget v1, p0, Lorg/cocos2d/a/f/p;->d:I

    iget v2, p0, Lorg/cocos2d/a/f/p;->c:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/b;->b(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    iget v2, p0, Lorg/cocos2d/a/f/p;->d:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/a/b;->b(F)V

    goto :goto_0

    :cond_1
    rem-float/2addr v0, v2

    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    iget v0, p0, Lorg/cocos2d/a/f/p;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/a/f/p;->d:I

    move v0, v2

    :cond_2
    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/a/b;->b(F)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/a/f/p;->d:I

    iget v1, p0, Lorg/cocos2d/a/f/p;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/p;

    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->i()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/f/p;->c:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/p;-><init>(Lorg/cocos2d/a/a/b;I)V

    return-object v0
.end method

.method public final l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/p;

    iget-object v1, p0, Lorg/cocos2d/a/f/p;->e:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/f/p;->c:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/p;-><init>(Lorg/cocos2d/a/a/b;I)V

    return-object v0
.end method
