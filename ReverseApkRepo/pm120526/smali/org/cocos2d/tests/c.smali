.class Lorg/cocos2d/tests/c;
.super Lorg/cocos2d/tests/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Issue 835"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/a;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "grossini.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/cocos2d/tests/c;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v4, v4}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a;->e(Lorg/cocos2d/g/i;)V

    const/high16 v0, 0x43b4

    invoke-static {v4, v0}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "resumeGrossini"

    const/high16 v1, 0x4040

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/c;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Grossini only rotate/scale in 3 seconds"

    return-object v0
.end method
