.class public Lorg/cocos2d/tests/TileMapTest;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String;

.field static b:I

.field static c:[Ljava/lang/Class;


# instance fields
.field private d:Lorg/cocos2d/opengl/CCGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cocos2d/tests/TileMapTest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lorg/cocos2d/tests/TileMapTest;->b:I

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/cocos2d/tests/gk;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/cocos2d/tests/gs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/cocos2d/tests/gj;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/cocos2d/tests/gr;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/cocos2d/tests/gn;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/cocos2d/tests/go;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/cocos2d/tests/gp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/cocos2d/tests/gq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/cocos2d/tests/gg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/cocos2d/tests/gh;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/cocos2d/tests/gi;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/cocos2d/tests/gx;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/cocos2d/tests/gd;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/cocos2d/tests/gt;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/cocos2d/tests/gw;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/cocos2d/tests/gm;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lorg/cocos2d/tests/gf;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lorg/cocos2d/tests/gv;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lorg/cocos2d/tests/gu;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lorg/cocos2d/tests/ge;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lorg/cocos2d/tests/gl;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lorg/cocos2d/tests/ha;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lorg/cocos2d/tests/gz;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/tests/TileMapTest;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a()Lorg/cocos2d/e/b;
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/TileMapTest;->c:[Ljava/lang/Class;

    sget v1, Lorg/cocos2d/tests/TileMapTest;->b:I

    aget-object v0, v0, v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/b;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/TileMapTest;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/cocos2d/tests/TileMapTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/TileMapTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2d/tests/TileMapTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    iget-object v0, p0, Lorg/cocos2d/tests/TileMapTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/TileMapTest;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/TileMapTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Landroid/view/View;)Z

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/c;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const-wide v1, 0x3fa1111120000000L

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/c;->a(D)V

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v0

    sget v1, Lorg/cocos2d/tests/TileMapTest;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/cocos2d/tests/TileMapTest;->b:I

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->c:[Ljava/lang/Class;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lorg/cocos2d/tests/TileMapTest;->b:I

    invoke-static {}, Lorg/cocos2d/tests/TileMapTest;->a()Lorg/cocos2d/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

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
