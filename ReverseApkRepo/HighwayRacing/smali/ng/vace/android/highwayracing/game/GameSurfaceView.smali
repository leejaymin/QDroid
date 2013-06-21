.class public abstract Lng/vace/android/highwayracing/game/GameSurfaceView;
.super Landroid/view/SurfaceView;
.source "GameSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;
    }
.end annotation


# instance fields
.field private fps:F

.field private frameCounter:J

.field final holder:Landroid/view/SurfaceHolder;

.field private final measureInterval:J

.field final showFPS:Z

.field text:Landroid/graphics/Paint;

.field protected thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->showFPS:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->frameCounter:J

    .line 19
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->measureInterval:J

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->fps:F

    .line 24
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 25
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    new-instance v0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    invoke-direct {v0, p0}, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;-><init>(Lng/vace/android/highwayracing/game/GameSurfaceView;)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    .line 33
    return-void
.end method


# virtual methods
.method public doDraw()V
    .locals 6

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, startTime:J
    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/game/GameSurfaceView;->doDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 66
    .end local v2           #startTime:J
    :cond_0
    :goto_0
    return-void

    .line 58
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 59
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 60
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_1

    .line 63
    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    throw v4
.end method

.method protected abstract doDraw(Landroid/graphics/Canvas;)V
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "surfaceHolder"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 94
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 89
    new-instance v0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    invoke-direct {v0, p0}, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;-><init>(Lng/vace/android/highwayracing/game/GameSurfaceView;)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    .line 90
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->start()V

    .line 91
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 97
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->requestExitAndWait()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView;->thread:Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;

    .line 99
    return-void
.end method
