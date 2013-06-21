.class Lcom/stickycoding/rokon/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/stickycoding/rokon/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;Lcom/stickycoding/rokon/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 957
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    .line 951
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1321
    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 952
    iput v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWidth:I

    .line 953
    iput v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHeight:I

    .line 954
    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 955
    iput v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderMode:I

    .line 956
    iput-object p2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

    return-void
.end method

.method static synthetic access$0(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1308
    iput-boolean p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method private guardedRun()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 986
    new-instance v10, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    invoke-direct {v10, v11}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;)V

    iput-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    .line 987
    iput-boolean v12, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 988
    iput-boolean v12, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 990
    const/4 v5, 0x0

    .line 991
    .local v5, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 992
    .local v1, createEglSurface:Z
    const/4 v7, 0x0

    .line 993
    .local v7, sizeChanged:Z
    const/4 v9, 0x0

    .line 994
    .local v9, wantRenderNotification:Z
    const/4 v2, 0x0

    .line 995
    .local v2, doRenderNotification:Z
    const/4 v8, 0x0

    .line 996
    .local v8, w:I
    const/4 v6, 0x0

    .line 997
    .local v6, h:I
    const/4 v3, 0x0

    .line 998
    .local v3, event:Ljava/lang/Runnable;
    const/4 v4, 0x0

    .line 1000
    .local v4, framesSinceResetHack:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1002
    :goto_1
    :try_start_1
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v10, :cond_1

    .line 1003
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1150
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    monitor-enter v10

    .line 1151
    :try_start_2
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1152
    iget-object v11, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v11}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->finish()V

    .line 1150
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1006
    :cond_1
    :try_start_3
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1007
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 1000
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1092
    if-eqz v3, :cond_e

    .line 1093
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1094
    const/4 v3, 0x0

    .line 1095
    goto :goto_0

    .line 1012
    :cond_2
    :try_start_5
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v10, :cond_3

    .line 1013
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1017
    :cond_3
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_5

    .line 1018
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_4

    .line 1019
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1021
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1022
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1026
    :cond_5
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_6

    .line 1027
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1028
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1031
    :cond_6
    if-eqz v2, :cond_7

    .line 1032
    const/4 v9, 0x0

    .line 1033
    const/4 v2, 0x0

    .line 1034
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1035
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1039
    :cond_7
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_d

    .line 1040
    iget v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWidth:I

    if-lez v10, :cond_d

    iget v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHeight:I

    if-lez v10, :cond_d

    .line 1041
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v10, :cond_8

    iget v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v10, v13, :cond_d

    .line 1043
    :cond_8
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_9

    .line 1045
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->verifyContext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1046
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->finish()V

    .line 1047
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

    invoke-interface {v10}, Lcom/stickycoding/rokon/GLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1048
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1052
    :cond_9
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v10, :cond_a

    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1053
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1054
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->start()V

    .line 1056
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1059
    :cond_a
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_b

    .line 1060
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1061
    const/4 v1, 0x1

    .line 1062
    const/4 v7, 0x1

    .line 1065
    :cond_b
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_d

    .line 1066
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    #getter for: Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v10}, Lcom/stickycoding/rokon/GLSurfaceView;->access$7(Lcom/stickycoding/rokon/GLSurfaceView;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1067
    const/4 v7, 0x1

    .line 1068
    iget v8, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWidth:I

    .line 1069
    iget v6, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHeight:I

    .line 1070
    const/4 v9, 0x1

    .line 1079
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    const/4 v12, 0x0

    #setter for: Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v10, v12}, Lcom/stickycoding/rokon/GLSurfaceView;->access$8(Lcom/stickycoding/rokon/GLSurfaceView;Z)V

    .line 1083
    :goto_3
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1000
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1146
    :catchall_2
    move-exception v10

    .line 1150
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1151
    :try_start_7
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1152
    iget-object v12, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->finish()V

    .line 1150
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1154
    throw v10

    .line 1081
    :cond_c
    const/4 v10, 0x0

    :try_start_8
    iput-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 1088
    :cond_d
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1098
    :cond_e
    :try_start_9
    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v10, :cond_13

    .line 1099
    if-eqz v1, :cond_f

    .line 1100
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    invoke-virtual {v11}, Lcom/stickycoding/rokon/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v5, v0

    .line 1101
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1102
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

    iget-object v11, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    iget-object v11, v11, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v5, v11}, Lcom/stickycoding/rokon/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1103
    const/4 v1, 0x0

    .line 1104
    const/4 v4, 0x0

    .line 1108
    :cond_f
    if-eqz v7, :cond_10

    .line 1109
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

    invoke-interface {v10, v5, v8, v6}, Lcom/stickycoding/rokon/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1110
    const/4 v7, 0x0

    .line 1129
    :cond_10
    if-gt v4, v13, :cond_11

    iget-boolean v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v10, :cond_12

    .line 1130
    :cond_11
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderer:Lcom/stickycoding/rokon/GLSurfaceView$Renderer;

    invoke-interface {v10, v5}, Lcom/stickycoding/rokon/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1133
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 1135
    iget-object v10, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->swap()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1137
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->stopEglLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1141
    :cond_13
    if-eqz v9, :cond_0

    .line 1142
    const/4 v2, 0x1

    .line 999
    goto/16 :goto_0

    .line 1150
    :catchall_3
    move-exception v10

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v10
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 980
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEglHelper:Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/GLSurfaceView$EglHelper;->destroySurface()V

    .line 981
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V

    .line 983
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1168
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1169
    :try_start_0
    iget v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1202
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1203
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mPaused:Z

    .line 1204
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    monitor-exit v0

    .line 1206
    return-void

    .line 1202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1209
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1210
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mPaused:Z

    .line 1211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1212
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1209
    monitor-exit v0

    .line 1214
    return-void

    .line 1209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 1264
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1265
    :try_start_0
    iput-boolean p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasFocus:Z

    .line 1266
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1264
    monitor-exit v0

    .line 1269
    return-void

    .line 1264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1217
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1218
    :try_start_0
    iput p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWidth:I

    .line 1219
    iput p2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHeight:I

    .line 1220
    iget-object v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    const/4 v3, 0x1

    #setter for: Lcom/stickycoding/rokon/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v2, v3}, Lcom/stickycoding/rokon/GLSurfaceView;->access$8(Lcom/stickycoding/rokon/GLSurfaceView;Z)V

    .line 1221
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1222
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1223
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1226
    :goto_0
    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-eqz v2, :cond_1

    .line 1217
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    return-void

    .line 1228
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1230
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1217
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1292
    if-nez p1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1296
    :try_start_0
    iget-object v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1295
    monitor-exit v0

    .line 1299
    return-void

    .line 1295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1274
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1275
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1276
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1277
    :goto_0
    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v2, :cond_0

    .line 1274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    return-void

    .line 1279
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1281
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1274
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1174
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1175
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1176
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1174
    monitor-exit v0

    .line 1178
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 965
    :try_start_0
    invoke-direct {p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V

    .line 971
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 969
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V

    goto :goto_0

    .line 968
    :catchall_0
    move-exception v0

    .line 969
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/stickycoding/rokon/GLSurfaceView$GLThread;)V

    .line 970
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1158
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1162
    :try_start_0
    iput p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1163
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1161
    monitor-exit v0

    .line 1165
    return-void

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSafeMode(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1303
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1181
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1182
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1183
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1181
    monitor-exit v0

    .line 1185
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1188
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1189
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1190
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    :goto_0
    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/stickycoding/rokon/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v2, :cond_1

    .line 1188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    return-void

    .line 1193
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/stickycoding/rokon/GLSurfaceView;->access$6()Lcom/stickycoding/rokon/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1195
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1188
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
