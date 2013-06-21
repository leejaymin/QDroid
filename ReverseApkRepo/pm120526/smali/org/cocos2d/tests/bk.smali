.class Lorg/cocos2d/tests/bk;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v3, 0x4320

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    const-string v0, "grossinis_sister1.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    const-string v1, "grossinis_sister2.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v2, 0x42c8

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v2, 0x43be

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v2, 0x43b4

    invoke-static {v6, v2}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v3

    new-array v4, v7, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Lorg/cocos2d/a/a/a;->a(I)V

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lorg/cocos2d/a/a/a;->a(I)V

    invoke-virtual {p0, v0, v5, v7}, Lorg/cocos2d/tests/bk;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v5, v4}, Lorg/cocos2d/tests/bk;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v1, v3}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "addAndRemove"

    invoke-virtual {p0, v0, v6}, Lorg/cocos2d/tests/bk;->a(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "remove and cleanup"

    return-object v0
.end method
