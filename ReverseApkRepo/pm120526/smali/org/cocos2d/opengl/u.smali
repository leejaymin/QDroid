.class Lorg/cocos2d/opengl/u;
.super Lorg/cocos2d/opengl/t;


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field final synthetic i:Lorg/cocos2d/opengl/GLSurfaceView;

.field private j:[I


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;IIIIII)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lorg/cocos2d/opengl/u;->i:Lorg/cocos2d/opengl/GLSurfaceView;

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/opengl/t;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;[I)V

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/cocos2d/opengl/u;->j:[I

    iput p2, p0, Lorg/cocos2d/opengl/u;->c:I

    iput p3, p0, Lorg/cocos2d/opengl/u;->d:I

    iput p4, p0, Lorg/cocos2d/opengl/u;->e:I

    iput p5, p0, Lorg/cocos2d/opengl/u;->f:I

    iput p6, p0, Lorg/cocos2d/opengl/u;->g:I

    iput p7, p0, Lorg/cocos2d/opengl/u;->h:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/opengl/u;->j:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/u;->j:[I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    array-length v2, p3

    const/4 v3, 0x0

    move v10, v3

    move-object v3, v0

    move v0, v10

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    aget-object v4, p3, v0

    const/16 v5, 0x3025

    invoke-direct {p0, p1, p2, v4, v5}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3026

    invoke-direct {p0, p1, p2, v4, v6}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    iget v7, p0, Lorg/cocos2d/opengl/u;->g:I

    if-lt v5, v7, :cond_1

    iget v5, p0, Lorg/cocos2d/opengl/u;->h:I

    if-lt v6, v5, :cond_1

    const/16 v5, 0x3024

    invoke-direct {p0, p1, p2, v4, v5}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3023

    invoke-direct {p0, p1, p2, v4, v6}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    const/16 v7, 0x3022

    invoke-direct {p0, p1, p2, v4, v7}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v7

    const/16 v8, 0x3021

    invoke-direct {p0, p1, p2, v4, v8}, Lorg/cocos2d/opengl/u;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    iget v9, p0, Lorg/cocos2d/opengl/u;->c:I

    sub-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v9, p0, Lorg/cocos2d/opengl/u;->d:I

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/cocos2d/opengl/u;->e:I

    sub-int v6, v7, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/cocos2d/opengl/u;->f:I

    sub-int v6, v8, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v1, :cond_1

    move v1, v5

    move-object v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
