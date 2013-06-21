.class Lorg/cocos2d/tests/fs;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "MoveTo / MoveBy"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/high16 v4, 0x42a0

    const/high16 v3, 0x4220

    const/high16 v2, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v1, v3

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    sub-float/2addr v0, v3

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v0

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fs;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fs;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
