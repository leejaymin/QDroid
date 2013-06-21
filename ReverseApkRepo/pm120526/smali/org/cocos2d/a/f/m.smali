.class public Lorg/cocos2d/a/f/m;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:Lorg/cocos2d/l/e;

.field private d:Lorg/cocos2d/l/e;

.field private e:Lorg/cocos2d/l/e;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/l/e;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget v0, p2, Lorg/cocos2d/l/e;->a:F

    iget v1, p2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/m;->d:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/m;->c:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/m;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/m;-><init>(FLorg/cocos2d/l/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/m;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->s()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/m;->c:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/m;->d:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/a/f/m;->d:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/e;->b(FF)V

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/f/m;->a:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/a/f/m;->c:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/cocos2d/a/f/m;->e:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/a/f/m;->c:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/i;->d(FF)V

    return-void
.end method

.method public l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/m;

    iget v1, p0, Lorg/cocos2d/a/f/m;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/m;->d:Lorg/cocos2d/l/e;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/m;-><init>(FLorg/cocos2d/l/e;)V

    return-object v0
.end method
