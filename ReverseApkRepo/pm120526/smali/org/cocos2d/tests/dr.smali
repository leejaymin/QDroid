.class Lorg/cocos2d/tests/dr;
.super Lorg/cocos2d/tests/dq;


# instance fields
.field a:Lorg/cocos2d/g/i;

.field b:Lorg/cocos2d/g/i;

.field c:Lorg/cocos2d/g/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "MotionStreak test 1"

    return-object v0
.end method

.method public final a_()V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x42c8

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/dq;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "r1.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v1, v10}, Lorg/cocos2d/tests/dr;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Lorg/cocos2d/g/i;->d(FF)V

    const-string v0, "r1.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/dr;->b:Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/dr;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/dr;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v9, v8}, Lorg/cocos2d/g/i;->d(FF)V

    new-instance v0, Lorg/cocos2d/g/h;

    const-string v1, "streak.png"

    const/high16 v2, 0x4200

    new-instance v3, Lorg/cocos2d/l/k;

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-direct {v3, v7, v4, v7, v5}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/cocos2d/g/h;-><init>(FLjava/lang/String;FLorg/cocos2d/l/k;)V

    iput-object v0, p0, Lorg/cocos2d/tests/dr;->c:Lorg/cocos2d/g/h;

    iget-object v0, p0, Lorg/cocos2d/tests/dr;->c:Lorg/cocos2d/g/h;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/dr;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/ds;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ds;-><init>(Lorg/cocos2d/tests/dr;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/dr;->a(Lorg/cocos2d/a/i;)V

    const/high16 v0, 0x43b4

    invoke-static {v6, v0}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-static {v9, v8}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    new-array v3, v10, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/dr;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/tests/dr;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->E()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/dr;->c:Lorg/cocos2d/g/h;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/h;->e(Lorg/cocos2d/l/e;)V

    return-void
.end method
