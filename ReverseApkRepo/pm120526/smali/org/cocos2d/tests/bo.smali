.class public Lorg/cocos2d/tests/bo;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/high16 v9, 0x42c8

    const/4 v8, 0x0

    const/high16 v7, 0x41f0

    const/high16 v6, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "b1.png"

    const-string v2, "b2.png"

    const-string v3, "backCallback"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "r1.png"

    const-string v3, "r2.png"

    const-string v4, "restartCallback"

    invoke-static {v2, v3, p0, v4}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    const-string v3, "f1.png"

    const-string v4, "f2.png"

    const-string v5, "nextCallback"

    invoke-static {v3, v4, p0, v5}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/f/c;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-static {v8, v8}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v6

    sub-float/2addr v5, v9

    invoke-static {v5, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v6

    invoke-static {v1, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    invoke-static {v0, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v4, v0}, Lorg/cocos2d/tests/bo;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-void
.end method
