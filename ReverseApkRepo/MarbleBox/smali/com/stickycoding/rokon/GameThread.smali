.class public Lcom/stickycoding/rokon/GameThread;
.super Ljava/lang/Object;
.source "GameThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stickycoding/rokon/GameThread$KeyTrigger;,
        Lcom/stickycoding/rokon/GameThread$MotionTrigger;
    }
.end annotation


# static fields
.field protected static final MAX_TRIGGERS:I = 0x20

.field private static finished:Z

.field protected static hasKeyTrigger:Z

.field protected static hasRunnable:Z

.field private static inputLock:Ljava/lang/Object;

.field private static keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

.field private static motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

.field protected static motionTriggerCount:I

.field private static pauseGame:Z

.field private static pauseLock:Ljava/lang/Object;

.field public static runnableLock:Ljava/lang/Object;


# instance fields
.field private lastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/stickycoding/rokon/GameThread;->finished:Z

    sput-boolean v0, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/GameThread;->inputLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/GameThread;->runnableLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPaused()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    return v0
.end method

.method public static keyInput(ZILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "down"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 268
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->inputLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 276
    :try_start_0
    const-string v2, "Key input queue is full, what\'s goingo on?"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    .line 268
    monitor-exit v1

    .line 278
    :goto_1
    return-void

    .line 270
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isNull:Z

    if-eqz v2, :cond_1

    .line 271
    sget-object v2, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0}, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->set(IZ)V

    .line 272
    const/4 v2, 0x1

    sput-boolean v2, Lcom/stickycoding/rokon/GameThread;->hasKeyTrigger:Z

    .line 273
    monitor-exit v1

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static motionInput(ZLandroid/view/MotionEvent;)V
    .locals 3
    .parameter "touch"
    .parameter "event"

    .prologue
    .line 257
    sget-object v0, Lcom/stickycoding/rokon/GameThread;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    sget v1, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 259
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    sget v2, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p0}, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->set(Landroid/view/MotionEvent;Z)V

    .line 260
    sget v1, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    .line 257
    :goto_0
    monitor-exit v0

    .line 265
    return-void

    .line 262
    :cond_0
    const-string v1, "MotionInput queue is full, what\'s going on? Either I\'m broken, or you need to buy a new phone"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pauseGame()V
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    .line 232
    monitor-exit v0

    .line 235
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeGame()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    .line 240
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v0

    .line 242
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopThread()V
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    .line 251
    const/4 v1, 0x1

    sput-boolean v1, Lcom/stickycoding/rokon/GameThread;->finished:Z

    .line 252
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v0

    .line 254
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 104
    const-string v5, "Game thread begins"

    invoke-static {v5}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 105
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stickycoding/rokon/GameThread;->finished:Z

    .line 106
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    .line 107
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    .line 108
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stickycoding/rokon/GameThread;->hasKeyTrigger:Z

    .line 109
    const/16 v5, 0x20

    new-array v5, v5, [Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    sput-object v5, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    .line 110
    const/16 v5, 0x20

    new-array v5, v5, [Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    sput-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    .line 112
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    const/16 v5, 0x20

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 117
    :goto_1
    sget-boolean v5, Lcom/stickycoding/rokon/GameThread;->finished:Z

    if-eqz v5, :cond_1

    .line 226
    sget-object v5, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    sget-object v6, Lcom/stickycoding/rokon/RokonRenderer;->singleton:Lcom/stickycoding/rokon/RokonRenderer;

    invoke-virtual {v5, v6}, Lcom/stickycoding/rokon/RenderQueueManager;->emptyQueues(Lcom/stickycoding/rokon/RokonRenderer;)V

    .line 228
    const-string v5, "Game thread over"

    invoke-static {v5}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 229
    return-void

    .line 113
    :cond_0
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    new-instance v6, Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/GameThread$MotionTrigger;-><init>(Lcom/stickycoding/rokon/GameThread;)V

    aput-object v6, v5, v16

    .line 114
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    new-instance v6, Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/GameThread$KeyTrigger;-><init>(Lcom/stickycoding/rokon/GameThread;)V

    aput-object v6, v5, v16

    .line 112
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 119
    .local v17, startTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/stickycoding/rokon/GameThread;->lastTime:J

    move-wide v5, v0

    sub-long v10, v17, v5

    .line 120
    .local v10, deltaTime:J
    move-wide v14, v10

    .line 123
    .local v14, finalDelta:J
    const-wide/16 v5, 0xc

    cmp-long v5, v10, v5

    if-lez v5, :cond_8

    .line 124
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/stickycoding/rokon/GameThread;->lastTime:J

    .line 125
    invoke-static {}, Lcom/stickycoding/rokon/Time;->updateLoop()V

    .line 126
    sget-object v4, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 128
    .local v4, scene:Lcom/stickycoding/rokon/Scene;
    if-eqz v4, :cond_7

    .line 130
    sget-object v5, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    sget-object v6, Lcom/stickycoding/rokon/RokonRenderer;->singleton:Lcom/stickycoding/rokon/RokonRenderer;

    invoke-virtual {v5, v6}, Lcom/stickycoding/rokon/RenderQueueManager;->swap(Lcom/stickycoding/rokon/RokonRenderer;)V

    .line 133
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->runnableLock:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    :try_start_0
    sget-boolean v6, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    if-eqz v6, :cond_2

    .line 135
    const/4 v6, 0x0

    sput-boolean v6, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    .line 136
    const/16 v16, 0x0

    :goto_2
    const/16 v6, 0x18

    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_a

    .line 133
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    invoke-virtual {v4}, Lcom/stickycoding/rokon/Scene;->onUIRunnables()V

    .line 153
    sget-object v10, Lcom/stickycoding/rokon/GameThread;->inputLock:Ljava/lang/Object;

    .end local v10           #deltaTime:J
    monitor-enter v10

    .line 154
    :try_start_1
    sget v5, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    if-lez v5, :cond_3

    .line 155
    const/16 v16, 0x0

    :goto_3
    sget v5, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_d

    .line 162
    const/4 v5, 0x0

    sput v5, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    .line 164
    :cond_3
    sget-boolean v5, Lcom/stickycoding/rokon/GameThread;->hasKeyTrigger:Z

    if-eqz v5, :cond_4

    .line 165
    const/16 v16, 0x0

    :goto_4
    const/16 v5, 0x20

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_f

    .line 175
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stickycoding/rokon/GameThread;->hasKeyTrigger:Z

    .line 153
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    iget-boolean v5, v4, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    if-eqz v5, :cond_5

    .line 181
    iget-boolean v5, v4, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    if-eqz v5, :cond_12

    .line 182
    iget-object v5, v4, Lcom/stickycoding/rokon/Scene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    .line 190
    :cond_5
    :goto_5
    sget-object v5, Lcom/stickycoding/rokon/RokonActivity;->killLock:Ljava/lang/Object;

    monitor-enter v5

    .line 191
    :try_start_2
    sget-boolean v6, Lcom/stickycoding/rokon/GameThread;->finished:Z

    if-nez v6, :cond_6

    .line 193
    invoke-virtual {v4}, Lcom/stickycoding/rokon/Scene;->onGameLoop()V

    .line 196
    invoke-virtual {v4}, Lcom/stickycoding/rokon/Scene;->render()V

    .line 190
    :cond_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 200
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 201
    .local v12, endTime:J
    sub-long v14, v12, v17

    .line 204
    .end local v4           #scene:Lcom/stickycoding/rokon/Scene;
    .end local v12           #endTime:J
    :cond_8
    invoke-static {}, Lcom/stickycoding/rokon/FPSCounter;->onLoop()V

    .line 207
    const-wide/16 v5, 0x10

    cmp-long v5, v14, v5

    if-gez v5, :cond_9

    .line 209
    const-wide/16 v5, 0x10

    sub-long/2addr v5, v14

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 216
    :cond_9
    :goto_6
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 217
    :goto_7
    :try_start_4
    sget-boolean v6, Lcom/stickycoding/rokon/GameThread;->pauseGame:Z

    if-nez v6, :cond_14

    .line 216
    monitor-exit v5

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 137
    .restart local v4       #scene:Lcom/stickycoding/rokon/Scene;
    .restart local v10       #deltaTime:J
    :cond_a
    :try_start_5
    sget-object v6, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aget-object v6, v6, v16

    if-eqz v6, :cond_b

    .line 138
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v6

    sget-object v8, Lcom/stickycoding/rokon/Scene;->gameRunnableTime:[J

    aget-wide v8, v8, v16

    cmp-long v6, v6, v8

    if-lez v6, :cond_c

    .line 139
    sget-object v6, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aget-object v6, v6, v16

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 140
    sget-object v6, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v7, v6, v16

    .line 136
    :cond_b
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 142
    :cond_c
    const/4 v6, 0x1

    sput-boolean v6, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    goto :goto_8

    .line 133
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 156
    .end local v10           #deltaTime:J
    :cond_d
    :try_start_6
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v5, v5, v16

    iget-boolean v5, v5, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->isTouch:Z

    if-eqz v5, :cond_e

    .line 157
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    sget-object v6, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v6, v6, v16

    iget-object v6, v6, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    sget-object v7, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v7, v7, v16

    iget v7, v7, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->action:I

    sget-object v8, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v8, v8, v16

    iget v8, v8, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    sget-object v9, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v9, v9, v16

    iget-object v9, v9, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerId:[I

    invoke-virtual/range {v4 .. v9}, Lcom/stickycoding/rokon/Scene;->handleTouch([F[FII[I)V

    .line 155
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 159
    :cond_e
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v6, v6, v16

    iget-object v6, v6, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lcom/stickycoding/rokon/GameThread;->motionTrigger:[Lcom/stickycoding/rokon/GameThread$MotionTrigger;

    aget-object v7, v7, v16

    iget v7, v7, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->action:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/stickycoding/rokon/Scene;->onTrackballEvent(FFI)Z

    goto :goto_9

    .line 153
    :catchall_2
    move-exception v5

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 166
    :cond_f
    :try_start_7
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v5, v5, v16

    iget-boolean v5, v5, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isNull:Z

    if-nez v5, :cond_10

    .line 167
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v5, v5, v16

    iget-boolean v5, v5, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isDown:Z

    if-eqz v5, :cond_11

    .line 168
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->keyCode:I

    invoke-virtual {v4, v5}, Lcom/stickycoding/rokon/Scene;->onKeyDown(I)V

    .line 172
    :goto_a
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v5, v5, v16

    invoke-virtual {v5}, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->reset()V

    .line 165
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 170
    :cond_11
    sget-object v5, Lcom/stickycoding/rokon/GameThread;->keyTrigger:[Lcom/stickycoding/rokon/GameThread$KeyTrigger;

    aget-object v5, v5, v16

    iget v5, v5, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->keyCode:I

    invoke-virtual {v4, v5}, Lcom/stickycoding/rokon/Scene;->onKeyUp(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_a

    .line 184
    :cond_12
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicksFraction()F

    move-result v19

    .line 185
    .local v19, timeStep:F
    const v5, 0x3c9374bc

    cmpl-float v5, v19, v5

    if-lez v5, :cond_13

    const v19, 0x3c9374bc

    .line 186
    :cond_13
    iget-object v5, v4, Lcom/stickycoding/rokon/Scene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    const/16 v6, 0xa

    const/16 v7, 0xa

    move-object v0, v5

    move/from16 v1, v19

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    goto/16 :goto_5

    .line 190
    .end local v19           #timeStep:F
    :catchall_3
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 219
    .end local v4           #scene:Lcom/stickycoding/rokon/Scene;
    :cond_14
    :try_start_9
    sget-object v6, Lcom/stickycoding/rokon/GameThread;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_7

    .line 220
    :catch_0
    move-exception v6

    goto/16 :goto_7

    .line 210
    :catch_1
    move-exception v5

    goto/16 :goto_6
.end method
