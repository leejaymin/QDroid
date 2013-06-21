.class final Lorg/cocos2d/opengl/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic f:Lorg/cocos2d/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

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
.method public final a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->d(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/z;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lorg/cocos2d/opengl/z;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->d(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/z;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/cocos2d/opengl/z;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "createWindowSurface"

    invoke-direct {p0, v0}, Lorg/cocos2d/opengl/aa;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lorg/cocos2d/opengl/aa;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v1}, Lorg/cocos2d/opengl/GLSurfaceView;->e(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/ad;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->e(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/ad;

    move-result-object v0

    invoke-interface {v0}, Lorg/cocos2d/opengl/ad;->a()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v1}, Lorg/cocos2d/opengl/GLSurfaceView;->f(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v3}, Lorg/cocos2d/opengl/GLSurfaceView;->f(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v3}, Lorg/cocos2d/opengl/GLSurfaceView;->f(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    new-instance v2, Lorg/cocos2d/opengl/ae;

    invoke-direct {v2}, Lorg/cocos2d/opengl/ae;-><init>()V

    :cond_6
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->b(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/x;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Lorg/cocos2d/opengl/x;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->c(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/y;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lorg/cocos2d/opengl/y;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lorg/cocos2d/opengl/aa;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->c(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/y;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/cocos2d/opengl/y;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    iput-object v4, p0, Lorg/cocos2d/opengl/aa;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v4, p0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    return-void
.end method
