.class public Lorg/cocos2d/a/g/j;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:I

.field e:Lorg/cocos2d/l/g;


# direct methods
.method private constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/j;->c:I

    return-void
.end method

.method public static c(F)Lorg/cocos2d/a/g/j;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/g/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/cocos2d/a/g/j;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2d/a/g/k;->a(Lorg/cocos2d/g/i;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/g/j;->e:Lorg/cocos2d/l/g;

    return-void
.end method

.method public final b(F)V
    .locals 6

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/g/j;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {v5, v0}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/a/g/j;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v1

    const/high16 v2, 0x3f80

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1

    const/high16 v2, -0x4080

    :cond_1
    iget v3, v1, Lorg/cocos2d/l/o;->a:F

    iget-object v4, p0, Lorg/cocos2d/a/g/j;->e:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lorg/cocos2d/l/o;->a:F

    iget v3, v1, Lorg/cocos2d/l/o;->d:F

    iget-object v4, p0, Lorg/cocos2d/a/g/j;->e:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lorg/cocos2d/l/o;->d:F

    iget v3, v1, Lorg/cocos2d/l/o;->g:F

    iget-object v4, p0, Lorg/cocos2d/a/g/j;->e:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lorg/cocos2d/l/o;->g:F

    iget v3, v1, Lorg/cocos2d/l/o;->j:F

    iget-object v4, p0, Lorg/cocos2d/a/g/j;->e:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/l/o;->j:F

    invoke-static {v5, v0}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/cocos2d/a/g/j;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/g/j;

    iget v1, p0, Lorg/cocos2d/a/g/j;->c:I

    iget v2, p0, Lorg/cocos2d/a/g/j;->b:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/g/j;-><init>(IF)V

    return-object v0
.end method
