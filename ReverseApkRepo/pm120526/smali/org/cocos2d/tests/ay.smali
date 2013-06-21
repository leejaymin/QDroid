.class final Lorg/cocos2d/tests/ay;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/a/d;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/high16 v8, 0x3f80

    const/16 v2, 0xff

    const/4 v7, 0x0

    const/high16 v6, 0x4320

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-virtual {p0, v5}, Lorg/cocos2d/tests/ay;->a(Z)V

    const-string v0, "grossini.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/k;

    invoke-direct {v1, v2, v2, v7, v2}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {v1}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/tests/ay;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0, v5, v5}, Lorg/cocos2d/tests/ay;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v2, 0x41a0

    const/high16 v3, 0x4316

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v2, 0x4080

    const/high16 v3, 0x4396

    const/high16 v4, 0x4240

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    const/high16 v4, 0x42c8

    invoke-static {v2, v3, v4}, Lorg/cocos2d/a/f/k;->a(FLorg/cocos2d/l/e;F)Lorg/cocos2d/a/f/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "Click on the screen"

    const-string v2, "DroidSans"

    const/high16 v3, 0x41c0

    invoke-static {v0, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v0

    const-string v2, "to move and rotate Grossini"

    const-string v3, "DroidSans"

    const/high16 v4, 0x4180

    invoke-static {v2, v3, v4}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v2

    invoke-virtual {p0, v0, v7}, Lorg/cocos2d/tests/ay;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v2, v5}, Lorg/cocos2d/tests/ay;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const/high16 v3, 0x4370

    invoke-static {v6, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4348

    invoke-static {v6, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const-string v0, "iso.png"

    invoke-static {v0}, Lorg/cocos2d/a/d;->a(Ljava/lang/String;)Lorg/cocos2d/a/d;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    iget-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/tests/ay;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    const/high16 v2, 0x42c8

    invoke-virtual {v0, v6, v2}, Lorg/cocos2d/a/d;->d(FF)V

    iget-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/cocos2d/a/d;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    const/high16 v2, 0x4248

    invoke-virtual {v0, v2}, Lorg/cocos2d/a/d;->a(F)V

    invoke-static {v8}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v0

    new-array v2, v5, [Lorg/cocos2d/a/a/b;

    invoke-static {v8}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/ay;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/g/i;)V

    invoke-static {v3, v0}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->d(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v0

    invoke-static {v3, v0}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    const/high16 v1, 0x4120

    iget-object v2, p0, Lorg/cocos2d/tests/ay;->a:Lorg/cocos2d/a/d;

    invoke-virtual {v2}, Lorg/cocos2d/a/d;->a()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/d;->a(F)V

    return v4
.end method
