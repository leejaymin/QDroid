.class Lorg/cocos2d/tests/bb;
.super Lorg/cocos2d/tests/bm;


# static fields
.field static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/cocos2d/tests/bb;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x4080

    const/high16 v4, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "grossini.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/cocos2d/tests/bb;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->t()Lorg/cocos2d/opengl/e;

    move-result-object v1

    const v2, 0x43cf8000

    invoke-virtual {v1, v7, v7, v2}, Lorg/cocos2d/opengl/e;->a(FFF)V

    const-string v1, "grossini.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v6, v2}, Lorg/cocos2d/tests/bb;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    mul-float/2addr v2, v4

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const-string v1, "grossini.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {p0, v1, v6, v2}, Lorg/cocos2d/tests/bb;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v0, Lorg/cocos2d/tests/bc;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/bc;-><init>(Lorg/cocos2d/tests/bb;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/bb;->a(Lorg/cocos2d/a/i;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera Zoom test"

    return-object v0
.end method

.method public final a(F)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lorg/cocos2d/tests/bb;->a:F

    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    sput v0, Lorg/cocos2d/tests/bb;->a:F

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/bb;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v0

    sget v1, Lorg/cocos2d/tests/bb;->a:F

    invoke-virtual {v0, v2, v2, v1}, Lorg/cocos2d/opengl/e;->a(FFF)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/bb;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v0

    sget v1, Lorg/cocos2d/tests/bb;->a:F

    invoke-virtual {v0, v2, v2, v1}, Lorg/cocos2d/opengl/e;->a(FFF)V

    return-void
.end method

.method public final a_()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/tests/bm;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    invoke-super {p0}, Lorg/cocos2d/tests/bm;->g()V

    return-void
.end method
