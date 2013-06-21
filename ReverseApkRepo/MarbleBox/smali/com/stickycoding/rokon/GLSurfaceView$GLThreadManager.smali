.class Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1420
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1422
    iget v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1423
    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1425
    :cond_0
    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1428
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_1

    .line 1410
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1411
    iget v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1413
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1415
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    :cond_1
    monitor-exit p0

    return-void

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglSurfaceLocked(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    .line 1405
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1406
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1371
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->access$0(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;Z)V

    .line 1372
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    .line 1375
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    monitor-exit p0

    return-void

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v1, 0x1

    .line 1386
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    if-nez v0, :cond_1

    .line 1387
    :cond_0
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/stickycoding/rokon/GLSurfaceView$GLThread;

    .line 1388
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    .line 1395
    :goto_0
    return v0

    .line 1391
    :cond_1
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1392
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 1393
    goto :goto_0

    .line 1395
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
