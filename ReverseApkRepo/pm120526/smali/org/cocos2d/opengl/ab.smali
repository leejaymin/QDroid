.class final Lorg/cocos2d/opengl/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/GLSurfaceView;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/util/ArrayList;

.field private o:Ljavax/microedition/khronos/opengles/GL10;

.field private p:Z

.field private q:Z

.field private r:Lorg/cocos2d/opengl/af;

.field private s:Lorg/cocos2d/opengl/aa;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;Lorg/cocos2d/opengl/af;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/ab;->n:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->q:Z

    iput v1, p0, Lorg/cocos2d/opengl/ab;->i:I

    iput v1, p0, Lorg/cocos2d/opengl/ab;->j:I

    iput-boolean v2, p0, Lorg/cocos2d/opengl/ab;->l:Z

    iput v2, p0, Lorg/cocos2d/opengl/ab;->k:I

    iput-object p2, p0, Lorg/cocos2d/opengl/ab;->r:Lorg/cocos2d/opengl/af;

    return-void
.end method

.method static synthetic a(Lorg/cocos2d/opengl/ab;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/ab;->c:Z

    return-void
.end method

.method private f()V
    .locals 6

    iget-boolean v0, p0, Lorg/cocos2d/opengl/ab;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/ab;->h:Z

    iget-object v0, p0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    iget-object v1, v0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, v0, Lorg/cocos2d/opengl/aa;->f:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-static {v1}, Lorg/cocos2d/opengl/GLSurfaceView;->d(Lorg/cocos2d/opengl/GLSurfaceView;)Lorg/cocos2d/opengl/z;

    move-result-object v1

    iget-object v2, v0, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lorg/cocos2d/opengl/z;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/ac;->c(Lorg/cocos2d/opengl/ab;)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 19

    new-instance v2, Lorg/cocos2d/opengl/aa;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/cocos2d/opengl/aa;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->g:Z

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v16, v10

    move-object v10, v2

    move-object v2, v9

    move v9, v3

    move/from16 v3, v16

    move/from16 v17, v5

    move v5, v7

    move/from16 v7, v17

    move/from16 v18, v8

    move v8, v4

    move/from16 v4, v18

    :goto_0
    :try_start_0
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->b:Z

    move v12, v0

    if-eqz v12, :cond_0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/opengl/ab;->o:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->f()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/cocos2d/opengl/aa;->b()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->n:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->n:Ljava/util/ArrayList;

    move-object v2, v0

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object/from16 v16, v2

    move v2, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object/from16 v4, v16

    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_e

    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x0

    move-object/from16 v16, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->h:Z

    move v12, v0

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->d:Z

    move v12, v0

    if-eqz v12, :cond_2

    const-string v12, "GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "releasing EGL surface because paused tid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->f()V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->e:Z

    move v12, v0

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->f:Z

    move v12, v0

    if-nez v12, :cond_4

    const-string v12, "GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "noticed surfaceView surface lost tid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->h:Z

    move v12, v0

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->f()V

    :cond_3
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->f:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->e:Z

    move v12, v0

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->f:Z

    move v12, v0

    if-eqz v12, :cond_5

    const-string v12, "GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "noticed surfaceView surface acquired tid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->f:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    if-eqz v6, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->m:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->d:Z

    move v12, v0

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->e:Z

    move v12, v0

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/ab;->i:I

    move v12, v0

    if-lez v12, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/ab;->j:I

    move v12, v0

    if-lez v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->l:Z

    move v12, v0

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/ab;->k:I

    move v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->g:Z

    move v12, v0

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->h:Z

    move v12, v0

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v12, v0

    iget-object v13, v12, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v13

    sget-object v14, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v13, v14, :cond_b

    iget-object v12, v12, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    const/16 v13, 0x300e

    if-eq v12, v13, :cond_b

    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/cocos2d/opengl/aa;->b()V

    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->g:Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->g:Z

    move v12, v0

    if-nez v12, :cond_9

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/ac;->b(Lorg/cocos2d/opengl/ab;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->g:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/cocos2d/opengl/aa;->a()V

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->g:Z

    move v12, v0

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->h:Z

    move v12, v0

    if-nez v12, :cond_a

    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->h:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->h:Z

    move v12, v0

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    move-object v12, v0

    invoke-static {v12}, Lorg/cocos2d/opengl/GLSurfaceView;->g(Lorg/cocos2d/opengl/GLSurfaceView;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/ab;->i:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/ab;->j:I

    move v7, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/cocos2d/opengl/GLSurfaceView;->a(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    move/from16 v16, v7

    move v7, v8

    move v8, v4

    move/from16 v4, v16

    :goto_4
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move-object/from16 v16, v2

    move v2, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_2

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/cocos2d/opengl/ab;->l:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v11

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/opengl/ab;->o:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->f()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/cocos2d/opengl/aa;->b()V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    :cond_d
    :try_start_8
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->p:Z

    move v11, v0

    if-eqz v11, :cond_15

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/cocos2d/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/opengl/aa;->a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/cocos2d/opengl/ac;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/opengl/ab;->o:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->r:Lorg/cocos2d/opengl/af;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v10, v0

    iget-object v10, v10, Lorg/cocos2d/opengl/aa;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v2}, Lorg/cocos2d/opengl/af;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v3, 0x0

    const/4 v10, 0x0

    move/from16 v16, v10

    move-object v10, v2

    move/from16 v2, v16

    :goto_5
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->r:Lorg/cocos2d/opengl/af;

    move-object v9, v0

    invoke-interface {v9, v10, v6, v5}, Lorg/cocos2d/opengl/af;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/4 v9, 0x0

    :cond_f
    const/4 v11, 0x1

    if-gt v2, v11, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/ab;->q:Z

    move v11, v0

    if-nez v11, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->r:Lorg/cocos2d/opengl/af;

    move-object v11, v0

    invoke-interface {v11, v10}, Lorg/cocos2d/opengl/af;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/ab;->s:Lorg/cocos2d/opengl/aa;

    move-object v11, v0

    iget-object v12, v11, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v13, v11, Lorg/cocos2d/opengl/aa;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v14, v11, Lorg/cocos2d/opengl/aa;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v12, v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v11, v11, Lorg/cocos2d/opengl/aa;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v11

    const/16 v12, 0x300e

    if-eq v11, v12, :cond_13

    const/4 v11, 0x1

    :goto_7
    if-nez v11, :cond_11

    const-string v11, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "egl surface lost tid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/opengl/ab;->f()V

    :cond_11
    move/from16 v16, v9

    move v9, v3

    move/from16 v3, v16

    :goto_8
    if-eqz v8, :cond_16

    const/4 v7, 0x1

    move/from16 v16, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_12
    const-string v11, "GLThread"

    const-string v12, "Safe Mode Wait..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    goto :goto_7

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_14
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5

    :cond_15
    move/from16 v16, v3

    move v3, v9

    move v9, v2

    move/from16 v2, v16

    goto :goto_8

    :cond_16
    move/from16 v16, v2

    move-object v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move/from16 v3, v16

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->e:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/cocos2d/opengl/ab;->k:I

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(II)V
    .locals 3

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/cocos2d/opengl/ab;->i:I

    iput p2, p0, Lorg/cocos2d/opengl/ab;->j:I

    iget-object v1, p0, Lorg/cocos2d/opengl/ab;->a:Lorg/cocos2d/opengl/GLSurfaceView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/GLSurfaceView;->a(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->l:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->m:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->m:Z

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "Main thread"

    const-string v2, "onWindowResize waiting for render complete."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Z)V
    .locals 3

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lorg/cocos2d/opengl/ab;->p:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Main thread"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Focus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/cocos2d/opengl/ab;->p:Z

    if-eqz v2, :cond_0

    const-string v2, "gained"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const-string v2, "lost"

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->e:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/opengl/ab;->q:Z

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->d:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->l:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/ab;->b:Z

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/ab;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/ab;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/ab;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lorg/cocos2d/opengl/ab;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/ac;->a(Lorg/cocos2d/opengl/ab;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/ac;->a(Lorg/cocos2d/opengl/ab;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->c()Lorg/cocos2d/opengl/ac;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/cocos2d/opengl/ac;->a(Lorg/cocos2d/opengl/ab;)V

    throw v0
.end method
