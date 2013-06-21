.class Lorg/cocos2d/tests/bj;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4320

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

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v4, v2}, Lorg/cocos2d/tests/bj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v4, v0}, Lorg/cocos2d/tests/bj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const-string v0, "delay2"

    const/high16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bj;->a(Ljava/lang/String;F)V

    const-string v0, "delay4"

    const/high16 v1, 0x4080

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bj;->a(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Tags"

    return-object v0
.end method
