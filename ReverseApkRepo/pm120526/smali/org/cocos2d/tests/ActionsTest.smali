.class public Lorg/cocos2d/tests/ActionsTest;
.super Landroid/app/Activity;


# static fields
.field static a:I

.field static b:[Ljava/lang/Class;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lorg/cocos2d/opengl/CCGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cocos2d/tests/ActionsTest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/tests/ActionsTest;->c:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lorg/cocos2d/tests/ActionsTest;->a:I

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/cocos2d/tests/r;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/cocos2d/tests/s;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/cocos2d/tests/aa;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/cocos2d/tests/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/cocos2d/tests/q;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/cocos2d/tests/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/cocos2d/tests/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/cocos2d/tests/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/cocos2d/tests/ah;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/cocos2d/tests/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/cocos2d/tests/ae;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/cocos2d/tests/af;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lorg/cocos2d/tests/ag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lorg/cocos2d/tests/x;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lorg/cocos2d/tests/l;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lorg/cocos2d/tests/v;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lorg/cocos2d/tests/w;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lorg/cocos2d/tests/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lorg/cocos2d/tests/ab;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lorg/cocos2d/tests/j;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lorg/cocos2d/tests/k;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lorg/cocos2d/tests/y;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lorg/cocos2d/tests/z;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lorg/cocos2d/tests/t;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lorg/cocos2d/tests/p;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lorg/cocos2d/tests/u;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/tests/ActionsTest;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2d/tests/ActionsTest;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static b()Lorg/cocos2d/e/b;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/cocos2d/tests/ActionsTest;->b:[Ljava/lang/Class;

    sget v1, Lorg/cocos2d/tests/ActionsTest;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/ActionsTest;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/cocos2d/tests/ActionsTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/ActionsTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2d/tests/ActionsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ActionsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Landroid/view/View;)Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/ActionsTest;->d:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/ActionsTest;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/c;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const-wide v1, 0x3fa1111120000000L

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/c;->a(D)V

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v0

    sget v1, Lorg/cocos2d/tests/ActionsTest;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/cocos2d/tests/ActionsTest;->a:I

    sget-object v2, Lorg/cocos2d/tests/ActionsTest;->b:[Ljava/lang/Class;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lorg/cocos2d/tests/ActionsTest;->a:I

    invoke-static {}, Lorg/cocos2d/tests/ActionsTest;->b()Lorg/cocos2d/e/b;

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
