.class public Lorg/cocos2d/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Lorg/cocos2d/opengl/ac;


# instance fields
.field private b:Z

.field private c:Lorg/cocos2d/opengl/ab;

.field private d:Lorg/cocos2d/opengl/x;

.field private e:Lorg/cocos2d/opengl/y;

.field private f:Lorg/cocos2d/opengl/z;

.field private g:Lorg/cocos2d/opengl/ad;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/cocos2d/opengl/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/opengl/ac;-><init>(B)V

    sput-object v0, Lorg/cocos2d/opengl/GLSurfaceView;->a:Lorg/cocos2d/opengl/ac;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->b:Z

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->b:Z

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->d()V

    return-void
.end method

.method static synthetic a(Lorg/cocos2d/opengl/GLSurfaceView;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->i:I

    return v0
.end method

.method static synthetic a(Lorg/cocos2d/opengl/GLSurfaceView;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->b:Z

    return-void
.end method

.method static synthetic b(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/x;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->d:Lorg/cocos2d/opengl/x;

    return-object v0
.end method

.method static synthetic c()Lorg/cocos2d/opengl/ac;
    .locals 1

    sget-object v0, Lorg/cocos2d/opengl/GLSurfaceView;->a:Lorg/cocos2d/opengl/ac;

    return-object v0
.end method

.method static synthetic c(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/y;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->e:Lorg/cocos2d/opengl/y;

    return-object v0
.end method

.method static synthetic d(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/z;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->f:Lorg/cocos2d/opengl/z;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method static synthetic e(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/ad;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->g:Lorg/cocos2d/opengl/ad;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic f(Lorg/cocos2d/opengl/GLSurfaceView;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->h:I

    return v0
.end method

.method static synthetic g(Lorg/cocos2d/opengl/GLSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->d()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->e()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/ab;->a(Z)V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->h:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    new-instance v0, Lorg/cocos2d/opengl/u;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/opengl/u;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLSurfaceView;->setEGLConfigChooser(Lorg/cocos2d/opengl/x;)V

    return-void
.end method

.method public setEGLConfigChooser(Lorg/cocos2d/opengl/x;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->e()V

    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->d:Lorg/cocos2d/opengl/x;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lorg/cocos2d/opengl/ag;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/ag;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLSurfaceView;->setEGLConfigChooser(Lorg/cocos2d/opengl/x;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->e()V

    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->i:I

    return-void
.end method

.method public setEGLContextFactory(Lorg/cocos2d/opengl/y;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->e()V

    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->e:Lorg/cocos2d/opengl/y;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lorg/cocos2d/opengl/z;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->e()V

    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->f:Lorg/cocos2d/opengl/z;

    return-void
.end method

.method public setGLWrapper(Lorg/cocos2d/opengl/ad;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView;->g:Lorg/cocos2d/opengl/ad;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/ab;->a(I)V

    return-void
.end method

.method public setRenderer(Lorg/cocos2d/opengl/af;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView;->e()V

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->d:Lorg/cocos2d/opengl/x;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cocos2d/opengl/ag;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/opengl/ag;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->d:Lorg/cocos2d/opengl/x;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->e:Lorg/cocos2d/opengl/y;

    if-nez v0, :cond_1

    new-instance v0, Lorg/cocos2d/opengl/v;

    invoke-direct {v0, p0, v2}, Lorg/cocos2d/opengl/v;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;B)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->e:Lorg/cocos2d/opengl/y;

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->f:Lorg/cocos2d/opengl/z;

    if-nez v0, :cond_2

    new-instance v0, Lorg/cocos2d/opengl/w;

    invoke-direct {v0, v2}, Lorg/cocos2d/opengl/w;-><init>(B)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->f:Lorg/cocos2d/opengl/z;

    :cond_2
    new-instance v0, Lorg/cocos2d/opengl/ab;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/ab;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;Lorg/cocos2d/opengl/af;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->start()V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/ab;->b(Z)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0, p3, p4}, Lorg/cocos2d/opengl/ab;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->a()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView;->c:Lorg/cocos2d/opengl/ab;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/ab;->b()V

    return-void
.end method
