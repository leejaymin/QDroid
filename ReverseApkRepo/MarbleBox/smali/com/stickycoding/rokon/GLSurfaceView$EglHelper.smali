.class Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/stickycoding/rokon/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 923
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 8
    .parameter "holder"

    .prologue
    .line 837
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v3, v4, :cond_0

    .line 843
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 844
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 843
    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 845
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$3(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5, v6}, Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 851
    :cond_0
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$3(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 852
    iget-object v5, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 851
    invoke-interface {v3, v4, v5, v6, p1}, Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 854
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_2

    .line 855
    :cond_1
    const-string v3, "createWindowSurface"

    invoke-direct {p0, v3}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 862
    :cond_2
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 863
    const-string v3, "eglMakeCurrent"

    invoke-direct {p0, v3}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 866
    :cond_3
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 867
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mGLWrapper:Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$4(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 868
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mGLWrapper:Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$4(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/stickycoding/rokon/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 871
    :cond_4
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$5(Lcom/stickycoding/rokon/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_7

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, configFlags:I
    const/4 v2, 0x0

    .line 874
    .local v2, log:Ljava/io/Writer;
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$5(Lcom/stickycoding/rokon/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 875
    or-int/lit8 v0, v0, 0x1

    .line 877
    :cond_5
    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$5(Lcom/stickycoding/rokon/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 878
    new-instance v2, Lcom/stickycoding/rokon/GLSurfaceView$LogWriter;

    .end local v2           #log:Ljava/io/Writer;
    invoke-direct {v2}, Lcom/stickycoding/rokon/GLSurfaceView$LogWriter;-><init>()V

    .line 880
    .restart local v2       #log:Ljava/io/Writer;
    :cond_6
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 882
    .end local v0           #configFlags:I
    .end local v2           #log:Ljava/io/Writer;
    :cond_7
    return-object v1
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 902
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 904
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 905
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 903
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 906
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/stickycoding/rokon/GLSurfaceView;->access$3(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/stickycoding/rokon/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 909
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 912
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/stickycoding/rokon/GLSurfaceView;->access$2(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 914
    iput-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 918
    iput-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 920
    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 796
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 801
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 803
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 804
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 811
    .local v0, version:[I
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLConfigChooser:Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Lcom/stickycoding/rokon/GLSurfaceView;->access$1(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/stickycoding/rokon/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 820
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextFactory:Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;
    invoke-static {v1}, Lcom/stickycoding/rokon/GLSurfaceView;->access$2(Lcom/stickycoding/rokon/GLSurfaceView;)Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 821
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 822
    :cond_2
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 825
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 826
    return-void
.end method

.method public swap()Z
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 898
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyContext()Z
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 929
    .local v0, currentContext:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x300e

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
