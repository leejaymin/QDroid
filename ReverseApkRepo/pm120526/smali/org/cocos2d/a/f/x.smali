.class public final Lorg/cocos2d/a/f/x;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:Lorg/cocos2d/l/j;

.field protected d:Lorg/cocos2d/l/j;


# direct methods
.method private constructor <init>(FLorg/cocos2d/l/j;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, p2}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    return-void
.end method

.method public static a(FLorg/cocos2d/l/j;)Lorg/cocos2d/a/f/x;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/x;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/x;-><init>(FLorg/cocos2d/l/j;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/x;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0}, Lorg/cocos2d/i/c;->a()Lorg/cocos2d/l/j;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/j;

    invoke-direct {v1, v0}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v1, p0, Lorg/cocos2d/a/f/x;->d:Lorg/cocos2d/l/j;

    return-void
.end method

.method public final b(F)V
    .locals 6

    iget-object v0, p0, Lorg/cocos2d/a/f/x;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    new-instance v1, Lorg/cocos2d/l/j;

    iget-object v2, p0, Lorg/cocos2d/a/f/x;->d:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->j:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v3, v3, Lorg/cocos2d/l/j;->j:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/cocos2d/a/f/x;->d:Lorg/cocos2d/l/j;

    iget v3, v3, Lorg/cocos2d/l/j;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v4, v4, Lorg/cocos2d/l/j;->k:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/cocos2d/a/f/x;->d:Lorg/cocos2d/l/j;

    iget v4, v4, Lorg/cocos2d/l/j;->l:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v5, v5, Lorg/cocos2d/l/j;->l:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2d/l/j;-><init>(III)V

    invoke-interface {v0, v1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/x;
    .locals 6

    new-instance v0, Lorg/cocos2d/a/f/x;

    iget v1, p0, Lorg/cocos2d/a/f/x;->b:F

    new-instance v2, Lorg/cocos2d/l/j;

    iget-object v3, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v3, v3, Lorg/cocos2d/l/j;->j:I

    neg-int v3, v3

    iget-object v4, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v4, v4, Lorg/cocos2d/l/j;->k:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    iget v5, v5, Lorg/cocos2d/l/j;->l:I

    neg-int v5, v5

    invoke-direct {v2, v3, v4, v5}, Lorg/cocos2d/l/j;-><init>(III)V

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/x;-><init>(FLorg/cocos2d/l/j;)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/x;->j()Lorg/cocos2d/a/f/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/x;

    iget v1, p0, Lorg/cocos2d/a/f/x;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/x;->c:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/x;-><init>(FLorg/cocos2d/l/j;)V

    return-object v0
.end method
