.class abstract Lorg/cocos2d/opengl/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/x;


# instance fields
.field protected a:[I

.field final synthetic b:Lorg/cocos2d/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/cocos2d/opengl/t;->b:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/cocos2d/opengl/t;->b:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v0}, Lorg/cocos2d/opengl/GLSurfaceView;->a(Lorg/cocos2d/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/cocos2d/opengl/t;->a:[I

    return-void

    :cond_0
    array-length v0, p2

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    sub-int v2, v0, v4

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v0, v4

    const/16 v3, 0x3040

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x3038

    aput v2, v1, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Lorg/cocos2d/opengl/t;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v4, v5, v4

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lorg/cocos2d/opengl/t;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lorg/cocos2d/opengl/t;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
