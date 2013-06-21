.class final Lorg/cocos2d/opengl/v;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/y;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/GLSurfaceView;

.field private b:I


# direct methods
.method private constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;)V
    .locals 1

    iput-object p1, p0, Lorg/cocos2d/opengl/v;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lorg/cocos2d/opengl/v;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/v;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2d/opengl/v;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/cocos2d/opengl/v;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v2}, Lorg/cocos2d/opengl/GLSurfaceView;->a(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lorg/cocos2d/opengl/v;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v2}, Lorg/cocos2d/opengl/GLSurfaceView;->a(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
