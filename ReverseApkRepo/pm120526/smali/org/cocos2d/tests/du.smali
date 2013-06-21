.class Lorg/cocos2d/tests/du;
.super Lorg/cocos2d/tests/dw;


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v8, 0x2

    const/4 v13, 0x1

    const/high16 v10, 0x4020

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/dw;-><init>()V

    const-string v0, "powered.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/cocos2d/g/o;->e(F)V

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    const-string v0, "tiles.png"

    const-string v1, "levelmap.tga"

    invoke-static {v0, v1}, Lorg/cocos2d/g/u;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/g/u;

    move-result-object v9

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/cocos2d/g/u;->d(Lorg/cocos2d/l/e;)V

    const-string v0, "background.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v0, 0x3fc0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(F)V

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/g/k;->a()Lorg/cocos2d/g/k;

    move-result-object v0

    const/4 v2, -0x1

    const v3, 0x3ecccccd

    const/high16 v4, 0x3f00

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const v3, 0x400ccccd

    const/high16 v4, 0x3f80

    const/high16 v6, -0x3cb8

    move-object v1, v9

    move v2, v13

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/high16 v9, 0x4040

    const/high16 v11, 0x4348

    const/high16 v12, 0x4448

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/high16 v1, 0x4080

    const/high16 v2, -0x3c06

    invoke-static {v5, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    const/high16 v3, 0x4100

    const/high16 v4, -0x3b86

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/cocos2d/a/a/b;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v2, v5, v13

    aput-object v4, v5, v8

    invoke-static {v1, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/du;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Parallax: parent and 3 children"

    return-object v0
.end method
