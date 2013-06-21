.class Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/stickycoding/rokon/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/stickycoding/rokon/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    const/16 v0, 0x3098

    iput v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    .line 580
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/stickycoding/rokon/GLSurfaceView;->access$0(Lcom/stickycoding/rokon/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 581
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 583
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 584
    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/stickycoding/rokon/GLSurfaceView;->access$0(Lcom/stickycoding/rokon/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 583
    :goto_0
    invoke-interface {p1, p2, p3, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 584
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 589
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 590
    return-void
.end method
