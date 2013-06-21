.class public Lcom/stickycoding/rokon/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stickycoding/rokon/GLSurfaceView$BaseConfigChooser;,
        Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;,
        Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;,
        Lcom/stickycoding/rokon/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;,
        Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;,
        Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;,
        Lcom/stickycoding/rokon/GLSurfaceView$GLThread;,
        Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;,
        Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;,
        Lcom/stickycoding/rokon/GLSurfaceView$LogWriter;,
        Lcom/stickycoding/rokon/GLSurfaceView$Renderer;,
        Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1439
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;-><init>(Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;)V

    sput-object v0, Lcom/stickycoding/rokon/GLSurfaceView;->sGLThreadManager:Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z

    .line 89
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z

    .line 98
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->init()V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/stickycoding/rokon/GLSurfaceView;)I
    .locals 1
    .parameter

    .prologue
    .line 1448
    iget v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$1(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .parameter

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;
    .locals 1
    .parameter

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$3(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$4(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;
    .locals 1
    .parameter

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLWrapper:Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/stickycoding/rokon/GLSurfaceView;)I
    .locals 1
    .parameter

    .prologue
    .line 1447
    iget v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 1439
    sget-object v0, Lcom/stickycoding/rokon/GLSurfaceView;->sGLThreadManager:Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/stickycoding/rokon/GLSurfaceView;)Z
    .locals 1
    .parameter

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$8(Lcom/stickycoding/rokon/GLSurfaceView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1440
    iput-boolean p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z

    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1364
    const-string v1, "setRenderer has already been called for this instance."

    .line 1363
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 105
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 106
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 421
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 422
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->onPause()V

    .line 377
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->onResume()V

    .line 388
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 410
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 411
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->requestRender()V

    .line 342
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 137
    iput p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I

    .line 138
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 267
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 268
    invoke-direct/range {v0 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;IIIIII)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/GLSurfaceView;->setEGLConfigChooser(Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;)V

    .line 269
    return-void
.end method

.method public setEGLConfigChooser(Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->checkRenderThreadState()V

    .line 231
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

    .line 232
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 249
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/GLSurfaceView;->setEGLConfigChooser(Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;)V

    .line 250
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->checkRenderThreadState()V

    .line 299
    iput p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextClientVersion:I

    .line 300
    return-void
.end method

.method public setEGLContextFactory(Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->checkRenderThreadState()V

    .line 201
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    .line 202
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->checkRenderThreadState()V

    .line 215
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 216
    return-void
.end method

.method public setGLWrapper(Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLWrapper:Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;

    .line 125
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 320
    return-void
.end method

.method public setRenderer(Lcom/stickycoding/rokon/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView;->checkRenderThreadState()V

    .line 176
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stickycoding/rokon/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/stickycoding/rokon/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/stickycoding/rokon/GLSurfaceView$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 185
    :cond_2
    new-instance v0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;Lcom/stickycoding/rokon/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    .line 186
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->start()V

    .line 187
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .parameter "safeMode"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 392
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 367
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 350
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView;->mGLThread:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 359
    return-void
.end method
