.class Lorg/cocos2d/tests/ce;
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

    const-string v0, "ShakyTiles + ShuffleTiles + TurnOffTiles"

    return-object v0
.end method

.method public final a_()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v4, 0xf

    const/16 v3, 0xa

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    invoke-virtual {p0, v9}, Lorg/cocos2d/tests/ce;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-static {v4, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/g/f;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/f;

    move-result-object v1

    invoke-static {v4, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/g/h;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/h;

    move-result-object v2

    invoke-static {v4, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    const/high16 v4, 0x4040

    invoke-static {v8, v3, v4}, Lorg/cocos2d/a/g/l;->a(ILorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/l;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/a/g/l;->k()Lorg/cocos2d/a/f/i;

    move-result-object v4

    invoke-static {v10}, Lorg/cocos2d/a/d/h;->b(I)Lorg/cocos2d/a/d/h;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-static {v6}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Lorg/cocos2d/a/a/b;

    aput-object v6, v7, v8

    aput-object v5, v7, v9

    aput-object v2, v7, v10

    const/4 v2, 0x3

    invoke-virtual {v6}, Lorg/cocos2d/a/f/e;->j()Lorg/cocos2d/a/f/e;

    move-result-object v5

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v3, v7, v2

    const/4 v2, 0x5

    aput-object v4, v7, v2

    invoke-static {v1, v7}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
