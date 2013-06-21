.class Lorg/cocos2d/tests/cg;
.super Lorg/cocos2d/tests/cj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Jumpy Lens3D"

    return-object v0
.end method

.method public final a_()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x42c8

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    const/high16 v0, 0x4334

    invoke-static {v4, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    const/high16 v1, 0x4316

    const/16 v2, 0x20

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    const/high16 v3, 0x4120

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/a/d/e;->a(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/e;

    move-result-object v0

    const/high16 v1, 0x40a0

    const/high16 v2, 0x43be

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v4, v3}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/j;->m()Lorg/cocos2d/a/f/j;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, p0, v5}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/a/a;Lorg/cocos2d/g/i;Z)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/cg;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
