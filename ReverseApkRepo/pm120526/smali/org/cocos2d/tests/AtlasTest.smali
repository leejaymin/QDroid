.class public Lorg/cocos2d/tests/AtlasTest;
.super Landroid/app/Activity;


# static fields
.field static a:I

.field static b:[Ljava/lang/Class;


# instance fields
.field private c:Lorg/cocos2d/opengl/CCGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, -0x1

    sput v0, Lorg/cocos2d/tests/AtlasTest;->a:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/cocos2d/tests/ai;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/cocos2d/tests/au;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/cocos2d/tests/as;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/cocos2d/tests/aj;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/cocos2d/tests/al;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/cocos2d/tests/an;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/cocos2d/tests/ao;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/cocos2d/tests/ap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/cocos2d/tests/ar;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/tests/AtlasTest;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a()Lorg/cocos2d/e/b;
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/AtlasTest;->b:[Ljava/lang/Class;

    sget v1, Lorg/cocos2d/tests/AtlasTest;->a:I

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

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/AtlasTest;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/cocos2d/tests/AtlasTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/AtlasTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cocos2d/tests/AtlasTest;->c:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/AtlasTest;->c:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Landroid/view/View;)Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/AtlasTest;->c:Lorg/cocos2d/opengl/CCGLSurfaceView;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/AtlasTest;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/c;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const-wide v1, 0x3f91111120000000L

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/c;->a(D)V

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v0

    sget v1, Lorg/cocos2d/tests/AtlasTest;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/cocos2d/tests/AtlasTest;->a:I

    sget-object v2, Lorg/cocos2d/tests/AtlasTest;->b:[Ljava/lang/Class;

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lorg/cocos2d/tests/AtlasTest;->a:I

    invoke-static {}, Lorg/cocos2d/tests/AtlasTest;->a()Lorg/cocos2d/e/b;

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
