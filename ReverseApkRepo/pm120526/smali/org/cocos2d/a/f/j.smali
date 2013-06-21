.class public Lorg/cocos2d/a/f/j;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:Lorg/cocos2d/l/e;

.field protected d:Lorg/cocos2d/l/e;

.field protected e:F

.field protected f:I


# direct methods
.method protected constructor <init>(FLorg/cocos2d/l/e;FI)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/j;->c:Lorg/cocos2d/l/e;

    iget v0, p2, Lorg/cocos2d/l/e;->a:F

    iget v1, p2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/j;->d:Lorg/cocos2d/l/e;

    iput p3, p0, Lorg/cocos2d/a/f/j;->e:F

    iput p4, p0, Lorg/cocos2d/a/f/j;->f:I

    return-void
.end method

.method public static a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/a/f/j;-><init>(FLorg/cocos2d/l/e;FI)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/j;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/j;->c:Lorg/cocos2d/l/e;

    return-void
.end method

.method public final b(F)V
    .locals 4

    const/high16 v3, 0x3f80

    iget v0, p0, Lorg/cocos2d/a/f/j;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    rem-float/2addr v0, v3

    iget v1, p0, Lorg/cocos2d/a/f/j;->e:F

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/f/j;->d:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/f/j;->d:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lorg/cocos2d/a/f/j;->a:Lorg/cocos2d/g/i;

    iget-object v3, p0, Lorg/cocos2d/a/f/j;->c:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/cocos2d/a/f/j;->c:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    return-void
.end method

.method public j()Lorg/cocos2d/a/f/j;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/f/j;

    iget v1, p0, Lorg/cocos2d/a/f/j;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/j;->d:Lorg/cocos2d/l/e;

    iget v3, p0, Lorg/cocos2d/a/f/j;->e:F

    iget v4, p0, Lorg/cocos2d/a/f/j;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/f/j;-><init>(FLorg/cocos2d/l/e;FI)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/j;->m()Lorg/cocos2d/a/f/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/j;->j()Lorg/cocos2d/a/f/j;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lorg/cocos2d/a/f/j;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/f/j;

    iget v1, p0, Lorg/cocos2d/a/f/j;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/j;->d:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    iget v3, p0, Lorg/cocos2d/a/f/j;->e:F

    iget v4, p0, Lorg/cocos2d/a/f/j;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/f/j;-><init>(FLorg/cocos2d/l/e;FI)V

    return-object v0
.end method
