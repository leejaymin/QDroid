.class Lorg/cocos2d/tests/bp;
.super Lorg/cocos2d/tests/bq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Speed action"

    return-object v0
.end method

.method public final a_()V
    .locals 7

    const/high16 v3, 0x4080

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/bq;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    neg-float v0, v0

    const/high16 v1, 0x42a0

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    const/high16 v1, 0x42c8

    const/4 v2, 0x4

    invoke-static {v3, v0, v1, v2}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    const/high16 v2, 0x4434

    invoke-static {v3, v2}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v3

    new-array v4, v5, [Lorg/cocos2d/a/a/b;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    new-array v1, v5, [Lorg/cocos2d/a/a/b;

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/w;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/e;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/cocos2d/a/a/a;->a(I)V

    invoke-virtual {v0}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v2

    invoke-virtual {v1, v5}, Lorg/cocos2d/a/a/a;->a(I)V

    invoke-virtual {v2, v5}, Lorg/cocos2d/a/a/a;->a(I)V

    iget-object v3, p0, Lorg/cocos2d/tests/bp;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v3, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/bp;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/bp;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "altertime"

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bp;->a(Ljava/lang/String;F)V

    return-void
.end method
