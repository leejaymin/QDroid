.class public Lorg/tf/GameActivity;
.super Lorg/tf/ui/ActivityBase;
.source "GameActivity.java"

# interfaces
.implements Lorg/tf/ui/GameMenuView$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/GameActivity$CupcakeDetector;,
        Lorg/tf/GameActivity$EclairDetector;,
        Lorg/tf/GameActivity$LocalHandler;,
        Lorg/tf/GameActivity$SaveStageRunnable;,
        Lorg/tf/GameActivity$StageAction;,
        Lorg/tf/GameActivity$VersionedGestureDetector;
    }
.end annotation


# static fields
.field private static final MESSAGE_HIDE_LOADING:I = 0x2

.field private static final MESSAGE_SHOW_LOADING:I = 0x1

.field private static final MESSAGE_SHOW_MENU:I = 0x3

.field private static final MESSAGE_STAGE_FINISHED:I = 0x4

.field private static m_id0:I

.field private static m_id1:I

.field private static m_totalTouches:I

.field private static m_touchX0:F

.field private static m_touchX1:F

.field private static m_touchY0:F

.field private static m_touchY1:F

.field static final sdkVersion:I


# instance fields
.field private mDetector:Lorg/tf/GameActivity$VersionedGestureDetector;

.field private m_firstTouchTime:J

.field private m_fpsTimer:Lorg/tf/util/GameFPSTimer;

.field private m_glCrashHandlerAttached:Z

.field private m_glEventProcessedEvent:Ljava/lang/Object;

.field private m_glView:Landroid/opengl/GLSurfaceView;

.field private m_handler:Landroid/os/Handler;

.field private m_loadingView:Lorg/tf/ui/GameLoadingView;

.field private m_menuShown:Z

.field private m_menuView:Lorg/tf/ui/GameMenuView;

.field private m_songInfo:Lorg/tf/song/SongInfo;

.field private m_stage:Lorg/tf/stage/Stage;

.field private m_stageState:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x4080

    .line 59
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/tf/GameActivity;->sdkVersion:I

    .line 325
    const/4 v0, 0x0

    sput v0, Lorg/tf/GameActivity;->m_totalTouches:I

    .line 741
    sput v1, Lorg/tf/GameActivity;->m_touchX0:F

    .line 742
    sput v1, Lorg/tf/GameActivity;->m_touchY0:F

    .line 743
    sput v2, Lorg/tf/GameActivity;->m_id0:I

    .line 746
    sput v1, Lorg/tf/GameActivity;->m_touchX1:F

    .line 747
    sput v1, Lorg/tf/GameActivity;->m_touchY1:F

    .line 748
    sput v2, Lorg/tf/GameActivity;->m_id1:I

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tf/GameActivity;->m_firstTouchTime:J

    .line 716
    new-instance v0, Lorg/tf/GameActivity$LocalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tf/GameActivity$LocalHandler;-><init>(Lorg/tf/GameActivity;Lorg/tf/GameActivity$LocalHandler;)V

    iput-object v0, p0, Lorg/tf/GameActivity;->m_handler:Landroid/os/Handler;

    .line 733
    iput-boolean v2, p0, Lorg/tf/GameActivity;->m_menuShown:Z

    .line 736
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;

    .line 737
    iput-boolean v2, p0, Lorg/tf/GameActivity;->m_glCrashHandlerAttached:Z

    .line 739
    new-instance v0, Lorg/tf/util/GameFPSTimer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/tf/util/GameFPSTimer;-><init>(I)V

    iput-object v0, p0, Lorg/tf/GameActivity;->m_fpsTimer:Lorg/tf/util/GameFPSTimer;

    .line 55
    return-void
.end method

.method static synthetic access$0(F)V
    .locals 0
    .parameter

    .prologue
    .line 741
    sput p0, Lorg/tf/GameActivity;->m_touchX0:F

    return-void
.end method

.method static synthetic access$1(F)V
    .locals 0
    .parameter

    .prologue
    .line 742
    sput p0, Lorg/tf/GameActivity;->m_touchY0:F

    return-void
.end method

.method static synthetic access$10(Lorg/tf/GameActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->onStageAction(I)V

    return-void
.end method

.method static synthetic access$11(Lorg/tf/GameActivity;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12(Lorg/tf/GameActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->onSaveStage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$13(Lorg/tf/GameActivity;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14(Lorg/tf/GameActivity;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-direct {p0, p1, p2}, Lorg/tf/GameActivity;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$15(Lorg/tf/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    invoke-direct {p0}, Lorg/tf/GameActivity;->attachGLCrashHandler()V

    return-void
.end method

.method static synthetic access$16(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->onStageGLCreated(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$17(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1, p2, p3}, Lorg/tf/GameActivity;->onStageGLChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method static synthetic access$18(Lorg/tf/GameActivity;)Lorg/tf/util/GameFPSTimer;
    .locals 1
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lorg/tf/GameActivity;->m_fpsTimer:Lorg/tf/util/GameFPSTimer;

    return-object v0
.end method

.method static synthetic access$19(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->onStageGLRender(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$2(I)V
    .locals 0
    .parameter

    .prologue
    .line 743
    sput p0, Lorg/tf/GameActivity;->m_id0:I

    return-void
.end method

.method static synthetic access$20(Lorg/tf/GameActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$21(Lorg/tf/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/tf/GameActivity;->onStageGLDestroyed()V

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 325
    sget v0, Lorg/tf/GameActivity;->m_totalTouches:I

    return v0
.end method

.method static synthetic access$4(I)V
    .locals 0
    .parameter

    .prologue
    .line 325
    sput p0, Lorg/tf/GameActivity;->m_totalTouches:I

    return-void
.end method

.method static synthetic access$5(F)V
    .locals 0
    .parameter

    .prologue
    .line 746
    sput p0, Lorg/tf/GameActivity;->m_touchX1:F

    return-void
.end method

.method static synthetic access$6(F)V
    .locals 0
    .parameter

    .prologue
    .line 747
    sput p0, Lorg/tf/GameActivity;->m_touchY1:F

    return-void
.end method

.method static synthetic access$7(I)V
    .locals 0
    .parameter

    .prologue
    .line 748
    sput p0, Lorg/tf/GameActivity;->m_id1:I

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 743
    sget v0, Lorg/tf/GameActivity;->m_id0:I

    return v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 748
    sget v0, Lorg/tf/GameActivity;->m_id1:I

    return v0
.end method

.method private addGLView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 578
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    .line 579
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Z)V

    .line 597
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lorg/tf/GameActivity$2;

    invoke-direct {v1, p0}, Lorg/tf/GameActivity$2;-><init>(Lorg/tf/GameActivity;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 612
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    .line 613
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 611
    invoke-virtual {p0, v0, v1}, Lorg/tf/GameActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    return-void
.end method

.method private addLoadingView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 549
    invoke-virtual {p0}, Lorg/tf/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 550
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/tf/ui/GameLoadingView;

    .line 549
    iput-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    .line 551
    iget-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/tf/ui/GameLoadingView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    .line 554
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 552
    invoke-virtual {p0, v0, v1}, Lorg/tf/GameActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    return-void
.end method

.method private addMenuView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 562
    invoke-virtual {p0}, Lorg/tf/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 563
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/tf/ui/GameMenuView;

    .line 562
    iput-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    .line 564
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/tf/ui/GameMenuView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    .line 567
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 565
    invoke-virtual {p0, v0, v1}, Lorg/tf/GameActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    invoke-virtual {v0, p0}, Lorg/tf/ui/GameMenuView;->setCallback(Lorg/tf/ui/GameMenuView$Callback;)V

    .line 573
    return-void
.end method

.method private attachGLCrashHandler()V
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lorg/tf/GameActivity;->m_glCrashHandlerAttached:Z

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/GameActivity;->m_glCrashHandlerAttached:Z

    .line 638
    invoke-static {p0}, Lorg/tf/CrashHandler;->attachToCurrentThread(Landroid/content/Context;)V

    .line 639
    iget-object v0, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getErrorDetails()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tf/CrashHandler;->setDetails(Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method private createGL()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 622
    return-void
.end method

.method private destroyGL()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lorg/tf/GameActivity$3;

    invoke-direct {v1, p0}, Lorg/tf/GameActivity$3;-><init>(Lorg/tf/GameActivity;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 632
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;

    invoke-static {v0}, Lskiba/util/Simply;->wait(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method private doStageAction(IZ)V
    .locals 2
    .parameter "action"
    .parameter "wait"

    .prologue
    .line 496
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lorg/tf/GameActivity$StageAction;

    invoke-direct {v1, p0, p1, p2}, Lorg/tf/GameActivity$StageAction;-><init>(Lorg/tf/GameActivity;IZ)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 497
    if-eqz p2, :cond_0

    .line 498
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;

    invoke-static {v0}, Lskiba/util/Simply;->wait(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    return-void
.end method

.method public static getNumTouches()I
    .locals 1

    .prologue
    .line 321
    sget v0, Lorg/tf/GameActivity;->m_totalTouches:I

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 685
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 707
    :goto_0
    return-void

    .line 688
    :pswitch_0
    iget-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    invoke-virtual {v0}, Lorg/tf/ui/GameLoadingView;->show()V

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    invoke-virtual {v0}, Lorg/tf/ui/GameLoadingView;->hide()V

    goto :goto_0

    .line 698
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/GameActivity;->showMenu(Z)V

    goto :goto_0

    .line 703
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/tf/stage/Stage$FinalScore;

    invoke-direct {p0, v0}, Lorg/tf/GameActivity;->onStageFinished(Lorg/tf/stage/Stage$FinalScore;)V

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onSaveStage(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 444
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-nez v1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_0
    :try_start_0
    const-string v1, "org.tf.Activity:state"

    iget-object v2, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v2}, Lorg/tf/stage/Stage;->saveState()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 451
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onStageAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 419
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 422
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_0
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0}, Lorg/tf/stage/Stage;->start()V

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0, v1}, Lorg/tf/stage/Stage;->stop(Z)V

    .line 426
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0}, Lorg/tf/stage/Stage;->resetState()V

    .line 427
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0}, Lorg/tf/stage/Stage;->start()V

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0, v1}, Lorg/tf/stage/Stage;->stop(Z)V

    goto :goto_0

    .line 437
    :pswitch_3
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tf/stage/Stage;->stop(Z)V

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private onStageFinished(Lorg/tf/stage/Stage$FinalScore;)V
    .locals 9
    .parameter "score"

    .prologue
    .line 457
    iget-object v4, p1, Lorg/tf/stage/Stage$FinalScore;->error:Ljava/lang/Exception;

    if-nez v4, :cond_0

    .line 459
    iget-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v4}, Lorg/tf/song/SongInfo;->getID()I

    move-result v4

    .line 460
    iget-object v5, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v5}, Lorg/tf/song/SongInfo;->getSelectedSkill()I

    move-result v5

    .line 461
    new-instance v6, Lorg/tf/song/SongDB$Score;

    iget v7, p1, Lorg/tf/stage/Stage$FinalScore;->score:I

    iget v8, p1, Lorg/tf/stage/Stage$FinalScore;->accuracy:F

    invoke-direct {v6, v7, v8}, Lorg/tf/song/SongDB$Score;-><init>(IF)V

    .line 458
    invoke-static {v4, v5, v6}, Lorg/tf/song/SongDB;->update(IILorg/tf/song/SongDB$Score;)V

    .line 462
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/tf/SongFinishedActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v0, Lorg/tf/util/DataOutputBA;

    invoke-direct {v0}, Lorg/tf/util/DataOutputBA;-><init>()V

    .line 465
    .local v0, dataOut:Lorg/tf/util/DataOutputBA;
    new-instance v2, Lorg/tf/song/FinishedSongInfo;

    iget-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-direct {v2, v4}, Lorg/tf/song/FinishedSongInfo;-><init>(Lorg/tf/song/SongInfo;)V

    .line 466
    .local v2, info:Lorg/tf/song/FinishedSongInfo;
    iget v4, p1, Lorg/tf/stage/Stage$FinalScore;->score:I

    invoke-virtual {v2, v4}, Lorg/tf/song/FinishedSongInfo;->setScore(I)V

    .line 467
    iget v4, p1, Lorg/tf/stage/Stage$FinalScore;->longestStreak:I

    invoke-virtual {v2, v4}, Lorg/tf/song/FinishedSongInfo;->setLongestStreak(I)V

    .line 468
    iget v4, p1, Lorg/tf/stage/Stage$FinalScore;->accuracy:F

    invoke-virtual {v2, v4}, Lorg/tf/song/FinishedSongInfo;->setAccuracy(F)V

    .line 469
    invoke-virtual {v2, v0}, Lorg/tf/song/FinishedSongInfo;->saveState(Ljava/io/DataOutput;)V

    .line 470
    const-string v4, "org.tf.FinishedSongInfo"

    invoke-virtual {v0}, Lorg/tf/util/DataOutputBA;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    invoke-virtual {p0, v3}, Lorg/tf/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Lorg/tf/GameActivity;->finish()V

    .line 480
    .end local v0           #dataOut:Lorg/tf/util/DataOutputBA;
    .end local v2           #info:Lorg/tf/song/FinishedSongInfo;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 472
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 473
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 478
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    const v4, 0x7f060017

    iget-object v5, p1, Lorg/tf/stage/Stage$FinalScore;->error:Ljava/lang/Exception;

    invoke-direct {p0, v4, v5}, Lorg/tf/GameActivity;->reportStageError(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private onStageGLChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 389
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    new-instance v1, Lorg/tf/gl/GLRect;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v4, v4, v2, v3}, Lorg/tf/gl/GLRect;-><init>(FFFF)V

    invoke-virtual {v0, p1, v1}, Lorg/tf/stage/Stage;->setViewport(Ljavax/microedition/khronos/opengles/GL10;Lorg/tf/gl/GLRect;)V

    .line 392
    :cond_0
    return-void
.end method

.method private onStageGLCreated(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 331
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 332
    invoke-static {p1}, Lorg/tf/stage/Stage;->setDefaults(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 334
    invoke-direct {p0, v7}, Lorg/tf/GameActivity;->sendMessage(I)V

    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, startStage:Z
    :try_start_0
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-nez v4, :cond_0

    .line 338
    new-instance v2, Lorg/tf/song/Song;

    iget-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-direct {v2, v4}, Lorg/tf/song/Song;-><init>(Lorg/tf/song/SongConfig;)V

    .line 339
    .local v2, song:Lorg/tf/song/Song;
    invoke-virtual {v2}, Lorg/tf/song/Song;->selectAnySkill()V

    .line 340
    iget-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v4}, Lorg/tf/song/SongInfo;->getSelectedSkill()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/tf/song/Song;->selectSkill(I)Z

    .line 341
    invoke-static {}, Lorg/tf/Config;->getMinNotesDistance()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/tf/song/Song;->glueNoteEvents(F)V

    .line 342
    new-instance v4, Lorg/tf/stage/Stage;

    invoke-direct {v4, p0, v2}, Lorg/tf/stage/Stage;-><init>(Landroid/content/Context;Lorg/tf/song/Song;)V

    iput-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    .line 343
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    new-instance v5, Lorg/tf/GameActivity$1;

    invoke-direct {v5, p0}, Lorg/tf/GameActivity$1;-><init>(Lorg/tf/GameActivity;)V

    invoke-virtual {v4, v5}, Lorg/tf/stage/Stage;->setCallback(Lorg/tf/stage/Stage$Callback;)V

    .line 348
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stageState:[B

    if-nez v4, :cond_2

    move v3, v7

    .line 350
    .end local v2           #song:Lorg/tf/song/Song;
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v4, p0, p1}, Lorg/tf/stage/Stage;->loadResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 351
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stageState:[B

    if-eqz v4, :cond_1

    .line 352
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    iget-object v5, p0, Lorg/tf/GameActivity;->m_stageState:[B

    invoke-virtual {v4, v5}, Lorg/tf/stage/Stage;->restoreState([B)V

    .line 353
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/tf/GameActivity;->m_stageState:[B

    .line 355
    :cond_1
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/tf/stage/Stage;->stop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ne v1, v9, :cond_3

    .line 369
    invoke-direct {p0, v8}, Lorg/tf/GameActivity;->sendMessage(I)V

    .line 370
    invoke-static {p0}, Lorg/tf/ui/GameLoadingView;->getHideDuratioin(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lskiba/util/Simply;->waitSleep(I)Z

    .line 371
    if-eqz v3, :cond_5

    .line 372
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v4}, Lorg/tf/stage/Stage;->start()V

    .line 376
    .end local v1           #i:I
    :goto_2
    return-void

    .restart local v2       #song:Lorg/tf/song/Song;
    :cond_2
    move v3, v6

    .line 348
    goto :goto_0

    .line 357
    .end local v2           #song:Lorg/tf/song/Song;
    .restart local v1       #i:I
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 360
    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 361
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-eqz v4, :cond_4

    .line 362
    iget-object v4, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v4}, Lorg/tf/stage/Stage;->destroy()V

    .line 363
    iput-object v10, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    .line 365
    :cond_4
    const v4, 0x7f060016

    invoke-direct {p0, v4, v0}, Lorg/tf/GameActivity;->reportStageError(ILjava/lang/Exception;)V

    .line 366
    invoke-direct {p0, v8}, Lorg/tf/GameActivity;->sendMessage(I)V

    goto :goto_2

    .line 374
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_5
    invoke-direct {p0, v9}, Lorg/tf/GameActivity;->sendMessage(I)V

    goto :goto_2
.end method

.method private onStageGLDestroyed()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/tf/stage/Stage;->stop(Z)V

    .line 382
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tf/stage/Stage;->unloadResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 384
    :cond_0
    invoke-static {}, Lorg/tf/gl/GLHelpers;->destroy()V

    .line 385
    return-void
.end method

.method private onStageGLRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v2, -0x1

    .line 395
    const/16 v1, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 396
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-eqz v1, :cond_0

    .line 398
    sget v1, Lorg/tf/GameActivity;->m_id0:I

    if-eq v1, v2, :cond_1

    sget v1, Lorg/tf/GameActivity;->m_id1:I

    if-eq v1, v2, :cond_1

    .line 400
    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    sget v2, Lorg/tf/GameActivity;->m_touchX0:F

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/tf/GameActivity;->m_touchY0:F

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lorg/tf/GameActivity;->m_touchX1:F

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lorg/tf/GameActivity;->m_touchY1:F

    aput v2, v0, v1

    .line 401
    .local v0, screencoords:[F
    const-string v1, "taps"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m_id0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lorg/tf/GameActivity;->m_id0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m_id1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/tf/GameActivity;->m_id1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v1, v0}, Lorg/tf/stage/Stage;->onMultitouch([F)V

    .line 412
    .end local v0           #screencoords:[F
    :goto_0
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    iget-object v2, p0, Lorg/tf/GameActivity;->m_fpsTimer:Lorg/tf/util/GameFPSTimer;

    invoke-virtual {v2}, Lorg/tf/util/GameFPSTimer;->getAverageFPS()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/tf/stage/Stage;->setFPS(I)V

    .line 413
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v1, p1}, Lorg/tf/stage/Stage;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 415
    :cond_0
    return-void

    .line 405
    :cond_1
    sget v1, Lorg/tf/GameActivity;->m_id0:I

    if-eq v1, v2, :cond_2

    .line 406
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    sget v2, Lorg/tf/GameActivity;->m_touchX0:F

    sget v3, Lorg/tf/GameActivity;->m_touchY0:F

    invoke-virtual {v1, v2, v3}, Lorg/tf/stage/Stage;->onTouch(FF)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    sget v2, Lorg/tf/GameActivity;->m_touchX1:F

    sget v3, Lorg/tf/GameActivity;->m_touchY1:F

    invoke-virtual {v1, v2, v3}, Lorg/tf/stage/Stage;->onTouch(FF)V

    goto :goto_0
.end method

.method private reportStageError(ILjava/lang/Exception;)V
    .locals 6
    .parameter "causeID"
    .parameter "error"

    .prologue
    .line 484
    .line 485
    const/4 v1, 0x1

    .line 486
    invoke-virtual {p0, p1}, Lorg/tf/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 487
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v0}, Lorg/tf/song/SongInfo;->getErrorDetails()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    .line 483
    invoke-static/range {v0 .. v5}, Lorg/tf/ErrorReportActivity;->report(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p0}, Lorg/tf/GameActivity;->finish()V

    .line 491
    return-void
.end method

.method private saveStage(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 503
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lorg/tf/GameActivity$SaveStageRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lorg/tf/GameActivity$SaveStageRunnable;-><init>(Lorg/tf/GameActivity;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 504
    iget-object v0, p0, Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;

    invoke-static {v0}, Lskiba/util/Simply;->wait(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method private sendMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 710
    iget-object v0, p0, Lorg/tf/GameActivity;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 711
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "message"
    .parameter "data"

    .prologue
    .line 713
    iget-object v0, p0, Lorg/tf/GameActivity;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 714
    return-void
.end method

.method private showMenu(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 665
    iget-boolean v0, p0, Lorg/tf/GameActivity;->m_menuShown:Z

    if-ne v0, p1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 668
    :cond_0
    iput-boolean p1, p0, Lorg/tf/GameActivity;->m_menuShown:Z

    .line 669
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    invoke-virtual {v0}, Lorg/tf/ui/GameMenuView;->show()V

    goto :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    invoke-virtual {v0}, Lorg/tf/ui/GameMenuView;->hide()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, sdkVersion:I
    const-string v4, "taps"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sdkversion:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lorg/tf/GameActivity;->addGLView()V

    .line 69
    invoke-direct {p0}, Lorg/tf/GameActivity;->addMenuView()V

    .line 70
    invoke-direct {p0}, Lorg/tf/GameActivity;->addLoadingView()V

    .line 71
    iget-object v4, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    invoke-virtual {v4}, Lorg/tf/ui/GameLoadingView;->show()V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/tf/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "org.tf.SongInfo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 75
    .local v3, songState:[B
    if-eqz v3, :cond_1

    .line 76
    new-instance v4, Lorg/tf/song/SongInfo;

    new-instance v5, Lorg/tf/util/DataInputBA;

    invoke-direct {v5, v3}, Lorg/tf/util/DataInputBA;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    .line 94
    :goto_0
    if-eqz p1, :cond_0

    .line 95
    const-string v4, "org.tf.Activity:state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/tf/GameActivity;->m_stageState:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    iget-object v4, p0, Lorg/tf/GameActivity;->m_songInfo:Lorg/tf/song/SongInfo;

    invoke-virtual {v4}, Lorg/tf/song/SongInfo;->getErrorDetails()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/tf/CrashHandler;->setDetails(Ljava/lang/String;)V

    .line 104
    return-void

    .line 78
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/tf/GameActivity;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #songState:[B
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 99
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onDestroy()V

    .line 134
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    invoke-virtual {v0}, Lorg/tf/stage/Stage;->destroy()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/GameActivity;->m_stage:Lorg/tf/stage/Stage;

    .line 138
    :cond_0
    return-void
.end method

.method public onGameMenuRestart()V
    .locals 2

    .prologue
    .line 660
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/tf/GameActivity;->doStageAction(IZ)V

    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/GameActivity;->showMenu(Z)V

    .line 662
    return-void
.end method

.method public onGameMenuResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 655
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/tf/GameActivity;->doStageAction(IZ)V

    .line 656
    invoke-direct {p0, v1}, Lorg/tf/GameActivity;->showMenu(Z)V

    .line 657
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onPause()V

    .line 118
    invoke-static {p0}, Lorg/tf/song/SongDB;->store(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 120
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 646
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 647
    iget-boolean v0, p0, Lorg/tf/GameActivity;->m_menuShown:Z

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/tf/GameActivity;->doStageAction(IZ)V

    .line 649
    invoke-direct {p0, v1}, Lorg/tf/GameActivity;->showMenu(Z)V

    .line 651
    :cond_0
    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 125
    invoke-static {p0}, Lorg/tf/song/SongDB;->load(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lorg/tf/GameActivity;->m_menuView:Lorg/tf/ui/GameMenuView;

    invoke-virtual {v0}, Lorg/tf/ui/GameMenuView;->hide()V

    .line 127
    iget-object v0, p0, Lorg/tf/GameActivity;->m_loadingView:Lorg/tf/ui/GameLoadingView;

    invoke-virtual {v0}, Lorg/tf/ui/GameLoadingView;->show()V

    .line 128
    invoke-direct {p0}, Lorg/tf/GameActivity;->createGL()V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0, p1}, Lorg/tf/GameActivity;->saveStage(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 141
    iget-object v0, p0, Lorg/tf/GameActivity;->mDetector:Lorg/tf/GameActivity$VersionedGestureDetector;

    if-nez v0, :cond_0

    .line 143
    invoke-static {p0}, Lorg/tf/GameActivity$VersionedGestureDetector;->newInstance(Landroid/content/Context;)Lorg/tf/GameActivity$VersionedGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/GameActivity;->mDetector:Lorg/tf/GameActivity$VersionedGestureDetector;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/tf/GameActivity;->mDetector:Lorg/tf/GameActivity$VersionedGestureDetector;

    invoke-virtual {v0, p1}, Lorg/tf/GameActivity$VersionedGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    const/4 v0, 0x1

    return v0
.end method
