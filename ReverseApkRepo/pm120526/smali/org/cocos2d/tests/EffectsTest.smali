.class public Lorg/cocos2d/tests/EffectsTest;
.super Landroid/app/Activity;


# static fields
.field static a:I

.field static b:[Ljava/lang/Class;

.field static c:[Ljava/lang/String;


# instance fields
.field private d:Lorg/cocos2d/opengl/CCGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput v3, Lorg/cocos2d/tests/EffectsTest;->a:I

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/cocos2d/tests/cv;

    aput-object v1, v0, v3

    const-class v1, Lorg/cocos2d/tests/df;

    aput-object v1, v0, v4

    const-class v1, Lorg/cocos2d/tests/co;

    aput-object v1, v0, v5

    const-class v1, Lorg/cocos2d/tests/cp;

    aput-object v1, v0, v6

    const-class v1, Lorg/cocos2d/tests/cr;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Lorg/cocos2d/tests/cu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/cocos2d/tests/cs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/cocos2d/tests/dg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/cocos2d/tests/de;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/cocos2d/tests/cw;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/cocos2d/tests/cx;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/cocos2d/tests/cy;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/cocos2d/tests/cm;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/cocos2d/tests/ck;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/cocos2d/tests/cn;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/cocos2d/tests/cl;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lorg/cocos2d/tests/dd;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lorg/cocos2d/tests/dh;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lorg/cocos2d/tests/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lorg/cocos2d/tests/da;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lorg/cocos2d/tests/cz;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lorg/cocos2d/tests/ct;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/tests/EffectsTest;->b:[Ljava/lang/Class;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Shaky3D"

    aput-object v1, v0, v3

    const-string v1, "Waves3D"

    aput-object v1, v0, v4

    const-string v1, "FlipX3D"

    aput-object v1, v0, v5

    const-string v1, "FlipY3D"

    aput-object v1, v0, v6

    const-string v1, "Lens3D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Ripple3D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Liquid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Waves"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Twirl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ShakyTiles3D"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ShatteredTiles3D"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ShuffleTiles"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FadeOutTRTiles"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FadeOutBLTiles"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FadeOutUpTiles"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FadeOutDownTiles"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TurnOffTiles"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WavesTiles3D"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "JumpTiles3D"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SplitRows"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SplitCols"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PageTurn3D"

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/tests/EffectsTest;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/Class;
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/EffectsTest;->b:[Ljava/lang/Class;

    sget v1, Lorg/cocos2d/tests/EffectsTest;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v2, 0x400

    const/16 v1, 0x80

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/EffectsTest;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/cocos2d/tests/EffectsTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/EffectsTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2d/tests/EffectsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/EffectsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Landroid/view/View;)Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/EffectsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/EffectsTest;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/c;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const-wide v1, 0x3f91111120000000L

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/c;->a(D)V

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/tests/db;

    invoke-direct {v1}, Lorg/cocos2d/tests/db;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/e/d;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->i()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->j()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->k()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
