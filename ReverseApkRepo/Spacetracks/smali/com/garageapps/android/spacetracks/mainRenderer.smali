.class public Lcom/garageapps/android/spacetracks/mainRenderer;
.super Landroid/opengl/GLSurfaceView;
.source "mainRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private stateManager:Lcom/garageapps/android/spacetracks/states/StateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/garageapps/android/spacetracks/mainRenderer$1;

    invoke-direct {v0, p0}, Lcom/garageapps/android/spacetracks/mainRenderer$1;-><init>(Lcom/garageapps/android/spacetracks/mainRenderer;)V

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/mainRenderer;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/garageapps/android/spacetracks/mainRenderer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 55
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainRenderer;->requestFocus()Z

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/mainRenderer;->setFocusableInTouchMode(Z)V

    .line 57
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StateManager;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StateManager;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainRenderer;->stateManager:Lcom/garageapps/android/spacetracks/states/StateManager;

    .line 58
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainRenderer;->stateManager:Lcom/garageapps/android/spacetracks/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StateManager;->updateState(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 101
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->debugLevel:I

    if-lez v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/garageapps/android/spacetracks/glSpec;->drawFps(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 107
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput p1, v2, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 109
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 110
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->incSoundVolume()I

    move-result v0

    .line 111
    .local v0, v:I
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v0}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->setVolume(I)V

    .line 125
    .end local v0           #v:I
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 116
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->decSoundVolume()I

    move-result v0

    .line 117
    .restart local v0       #v:I
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v0}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->setVolume(I)V

    goto :goto_0

    .line 121
    .end local v0           #v:I
    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 130
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v1, 0x0

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 131
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p3, :cond_0

    .line 64
    const/4 p3, 0x1

    .line 66
    :cond_0
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 67
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 68
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 69
    const/high16 v0, 0x4234

    div-int v1, p2, p3

    int-to-float v1, v1

    const v2, 0x3dcccccd

    const/high16 v3, 0x42c8

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 72
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput p2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    .line 73
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput p3, v0, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    .line 76
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v1, 0x2

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    .line 79
    const/16 v0, 0x320

    if-lt p2, v0, :cond_1

    .line 80
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v1, 0x3

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    .line 83
    :cond_1
    const/16 v0, 0x400

    if-lt p2, v0, :cond_2

    .line 84
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    const/4 v1, 0x4

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->screenMode:I

    .line 85
    :cond_2
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 90
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 91
    invoke-interface {p1, v1, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 92
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 93
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 94
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 145
    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, v1, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 146
    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v1, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    .line 147
    sget-object v1, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v1, v1, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v1, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    .line 151
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 136
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 137
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 138
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 139
    const/4 v0, 0x1

    return v0
.end method
