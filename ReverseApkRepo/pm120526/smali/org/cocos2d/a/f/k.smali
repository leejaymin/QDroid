.class public final Lorg/cocos2d/a/f/k;
.super Lorg/cocos2d/a/f/j;


# direct methods
.method private constructor <init>(FLorg/cocos2d/l/e;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2d/a/f/j;-><init>(FLorg/cocos2d/l/e;FI)V

    return-void
.end method

.method public static a(FLorg/cocos2d/l/e;F)Lorg/cocos2d/a/f/k;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/k;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/cocos2d/a/f/k;-><init>(FLorg/cocos2d/l/e;FI)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/j;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/k;->d:Lorg/cocos2d/l/e;

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/a/f/k;->c:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v0, p0, Lorg/cocos2d/a/f/k;->d:Lorg/cocos2d/l/e;

    iget v1, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/k;->c:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public final synthetic j()Lorg/cocos2d/a/f/j;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/f/k;

    iget v1, p0, Lorg/cocos2d/a/f/k;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/k;->d:Lorg/cocos2d/l/e;

    iget v3, p0, Lorg/cocos2d/a/f/k;->e:F

    iget v4, p0, Lorg/cocos2d/a/f/k;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/f/k;-><init>(FLorg/cocos2d/l/e;FI)V

    return-object v0
.end method
