.class Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;
.super Ljava/lang/Thread;
.source "GameSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng/vace/android/highwayracing/game/GameSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidThread"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lng/vace/android/highwayracing/game/GameSurfaceView;


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/game/GameSurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->this$0:Lng/vace/android/highwayracing/game/GameSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->running:Z

    return-void
.end method


# virtual methods
.method public requestExitAndWait()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->running:Z

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 73
    :goto_0
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->running:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameSurfaceView$AndroidThread;->this$0:Lng/vace/android/highwayracing/game/GameSurfaceView;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/GameSurfaceView;->doDraw()V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
