.class public Lcom/ui/LapseIt/capture/CaptureView;
.super Landroid/app/Activity;
.source "CaptureView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field static final CAPTURETAG:Ljava/lang/String; = "LapseItCapture"

.field public static final CAPTURE_CANCELED:I = 0x0

.field public static final CAPTURE_COMPLETED:I = 0x1

.field public static final dimDelay:I = 0x4e20

.field static dm:Landroid/util/DisplayMetrics;


# instance fields
.field bReceiver:Landroid/content/BroadcastReceiver;

.field cThread:Lcom/ui/LapseIt/capture/CaptureThread;

.field cam:Landroid/hardware/Camera;

.field camFlip:Landroid/widget/ImageView;

.field public camFlipHandler:Landroid/view/View$OnClickListener;

.field camHolder:Landroid/view/SurfaceHolder;

.field camParams:Landroid/hardware/Camera$Parameters;

.field camSurface:Landroid/view/SurfaceView;

.field captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

.field captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

.field contentView:Landroid/widget/RelativeLayout;

.field dimRect:Landroid/widget/RelativeLayout;

.field private dimTask:Ljava/util/TimerTask;

.field dimTimer:Ljava/util/Timer;

.field endScheduledTime:J

.field info:Landroid/widget/TextView;

.field isDimmed:Z

.field private isFrontFacing:Z

.field isPreviewning:Z

.field isSchedule:Z

.field items:[Ljava/lang/String;

.field mgr:Landroid/media/AudioManager;

.field pictureSize:Landroid/hardware/Camera$Size;

.field private powerManager:Landroid/os/PowerManager;

.field schedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field shutterEnabled:Z

.field title:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field zoomWidget:Lcom/ui/LapseIt/capture/ZoomWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 205
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureView$1;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimTask:Ljava/util/TimerTask;

    .line 550
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureView$2;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->camFlipHandler:Landroid/view/View$OnClickListener;

    .line 802
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureView$3;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->bReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureView;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/capture/CaptureView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/capture/CaptureView;)Ljava/util/TimerTask;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method private buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "title"
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 537
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 539
    invoke-virtual {v2, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 542
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 548
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 545
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 546
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final buildErrorCameraAlert(I)V
    .locals 5
    .parameter "error"

    .prologue
    .line 779
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    const-string v3, "No suitable video player"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 781
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sorry but an error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ocurred, please try again, if you can\'t use the app because of this error, contact us and we will solve the problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 783
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/capture/CaptureView$11;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/capture/CaptureView$11;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 792
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 798
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 795
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 796
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createCancelCaptureDialog()V
    .locals 4

    .prologue
    .line 848
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureView$13;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureView$13;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    .line 862
    .local v0, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 863
    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 864
    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 865
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 866
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 867
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 868
    return-void
.end method

.method public createLowBatteryDialog()V
    .locals 3

    .prologue
    .line 810
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureView$12;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureView$12;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    .line 822
    .local v0, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    iget-boolean v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->isSchedule:Z

    if-nez v1, :cond_0

    .line 823
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 824
    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 825
    const-string v2, "Continue"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 826
    const-string v2, "Finish"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 829
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 768
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Focus result is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 266
    const-string v0, "trace"

    const-string v1, "Config changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resizeItems(I)V

    .line 271
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    return-void

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x30000006

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sput-boolean v1, Lui/utils/ImageUtils;->flipX:Z

    .line 117
    sput-boolean v1, Lui/utils/ImageUtils;->flipY:Z

    .line 119
    sput v1, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    .line 120
    sput v1, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    .line 122
    invoke-static {v1}, Lcom/ui/LapseIt/project/TrimWidget;->setTrimEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setFormat(I)V

    .line 125
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->contentView:Landroid/widget/RelativeLayout;

    .line 128
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->setContentView(Landroid/view/View;)V

    .line 130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/ui/LapseIt/capture/CaptureView;->dm:Landroid/util/DisplayMetrics;

    .line 131
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureView;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camSurface:Landroid/view/SurfaceView;

    .line 134
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camHolder:Landroid/view/SurfaceHolder;

    .line 135
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 136
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 138
    new-instance v1, Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/CaptureThread;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    .line 140
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camFlip:Landroid/widget/ImageView;

    .line 141
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->camFlip:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->camFlipHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureMenu:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    .line 153
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x4e20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->schedule:Ljava/util/concurrent/ScheduledFuture;

    .line 155
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/ui/LapseIt/capture/CaptureView$4;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/capture/CaptureView$4;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/ui/LapseIt/capture/CaptureView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->info:Landroid/widget/TextView;

    .line 187
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 191
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->info:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    .line 195
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->powerManager:Landroid/os/PowerManager;

    .line 197
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LapseItSchedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->powerManager:Landroid/os/PowerManager;

    const-string v2, "LapseItCapture"

    invoke-virtual {v1, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    iput-boolean v8, p0, Lcom/ui/LapseIt/capture/CaptureView;->isSchedule:Z

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->powerManager:Landroid/os/PowerManager;

    const-string v2, "LapseItCapture"

    invoke-virtual {v1, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 328
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 329
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v0, v0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    .line 319
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->isSchedule:Z

    .line 321
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 773
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO NA CAMERA "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    .line 775
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/capture/CaptureView;->buildErrorCameraAlert(I)V

    .line 776
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 833
    packed-switch p1, :pswitch_data_0

    .line 844
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 836
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v0, v0, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    .line 842
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->createCancelCaptureDialog()V

    goto :goto_1

    .line 833
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    .line 335
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 533
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    return v9

    .line 337
    :pswitch_0
    :try_start_1
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v9, v9, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-nez v9, :cond_3

    .line 338
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 339
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v7

    .line 341
    .local v7, supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    .line 343
    if-eqz v7, :cond_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 344
    :cond_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Default"

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    .line 354
    :goto_1
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    iget-object v10, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ui/LapseIt/capture/CaptureView$5;

    invoke-direct {v11, p0}, Lcom/ui/LapseIt/capture/CaptureView$5;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-direct {p0, v9, v10, v11}, Lcom/ui/LapseIt/capture/CaptureView;->buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 528
    .end local v7           #supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 529
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v7       #supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_2

    .line 351
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 530
    .end local v4           #i:I
    .end local v7           #supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 531
    .local v2, error:Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v2           #error:Ljava/lang/Error;
    .restart local v4       #i:I
    .restart local v7       #supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 348
    .local v6, stringArray:[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v6, v9

    .line 349
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v7, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 375
    .end local v4           #i:I
    .end local v6           #stringArray:[C
    .end local v7           #supportedFocusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v9, "Can\'t auto-focus while capturing !"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 381
    :pswitch_1
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 382
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 384
    .local v3, flashModesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080113

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    .line 386
    if-eqz v3, :cond_4

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 387
    :cond_4
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Default"

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    .line 398
    :goto_3
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    iget-object v10, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ui/LapseIt/capture/CaptureView$6;

    invoke-direct {v11, p0}, Lcom/ui/LapseIt/capture/CaptureView$6;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-direct {p0, v9, v10, v11}, Lcom/ui/LapseIt/capture/CaptureView;->buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 389
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_6

    .line 394
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    goto :goto_3

    .line 390
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 391
    .restart local v6       #stringArray:[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v6, v9

    .line 392
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v3, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 418
    .end local v3           #flashModesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #stringArray:[C
    :pswitch_2
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 419
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    .line 421
    .local v0, colorEffectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    .line 423
    if-eqz v0, :cond_7

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_8

    .line 424
    :cond_7
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Default"

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    .line 435
    :goto_5
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    iget-object v10, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ui/LapseIt/capture/CaptureView$7;

    invoke-direct {v11, p0}, Lcom/ui/LapseIt/capture/CaptureView$7;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-direct {p0, v9, v10, v11}, Lcom/ui/LapseIt/capture/CaptureView;->buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 426
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_9

    .line 431
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    goto :goto_5

    .line 427
    :cond_9
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 428
    .restart local v6       #stringArray:[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v6, v9

    .line 429
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 455
    .end local v0           #colorEffectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #stringArray:[C
    :pswitch_3
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 457
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v5

    .line 459
    .local v5, sceneModeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    .line 461
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 462
    :cond_a
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Default"

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    .line 473
    :goto_7
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    iget-object v10, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ui/LapseIt/capture/CaptureView$8;

    invoke-direct {v11, p0}, Lcom/ui/LapseIt/capture/CaptureView$8;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-direct {p0, v9, v10, v11}, Lcom/ui/LapseIt/capture/CaptureView;->buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 464
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_c

    .line 469
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    goto :goto_7

    .line 465
    :cond_c
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 466
    .restart local v6       #stringArray:[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v6, v9

    .line 467
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v5, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 493
    .end local v4           #i:I
    .end local v5           #sceneModeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #stringArray:[C
    :pswitch_4
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 494
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->captureParams:Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v8

    .line 496
    .local v8, whiteBalanceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    .line 498
    if-eqz v8, :cond_d

    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_e

    .line 499
    :cond_d
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Default"

    aput-object v11, v9, v10

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    .line 509
    :goto_9
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->title:Ljava/lang/String;

    iget-object v10, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    new-instance v11, Lcom/ui/LapseIt/capture/CaptureView$9;

    invoke-direct {v11, p0}, Lcom/ui/LapseIt/capture/CaptureView$9;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    invoke-direct {p0, v9, v10, v11}, Lcom/ui/LapseIt/capture/CaptureView;->buildChoiceDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 501
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_f

    .line 506
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/ui/LapseIt/capture/CaptureView;->items:[Ljava/lang/String;

    goto :goto_9

    .line 502
    :cond_f
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 503
    .restart local v6       #stringArray:[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v6, v9

    .line 504
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v8, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    .line 501
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 286
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureThread;->pauseCaptureProcess()V

    .line 288
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 290
    iget-boolean v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->shutterEnabled:Z

    if-nez v1, :cond_1

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 294
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 297
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 298
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 299
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 300
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->bReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/CaptureView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 309
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    sput-boolean v5, Lui/utils/ImageUtils;->flipX:Z

    .line 228
    sput-boolean v5, Lui/utils/ImageUtils;->flipY:Z

    .line 230
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 232
    const-string v2, "shutter"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "disabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iput-boolean v5, p0, Lcom/ui/LapseIt/capture/CaptureView;->shutterEnabled:Z

    .line 238
    :goto_0
    iget-boolean v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->shutterEnabled:Z

    if-nez v2, :cond_1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 241
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    .line 243
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 246
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 247
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 248
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 249
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->mgr:Landroid/media/AudioManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, batteryFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->bReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/ui/LapseIt/capture/CaptureView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .end local v0           #batteryFilter:Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 235
    :cond_2
    iput-boolean v4, p0, Lcom/ui/LapseIt/capture/CaptureView;->shutterEnabled:Z

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 260
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 109
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    .line 699
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 700
    const-string v2, "trace"

    const-string v3, "Surface changed with camera null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :goto_0
    return-void

    .line 705
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    if-eqz v2, :cond_1

    .line 706
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 707
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 710
    :cond_1
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :try_start_1
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->camParams:Landroid/hardware/Camera$Parameters;

    .line 714
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v0

    .line 715
    .local v0, capParams:Lcom/ui/LapseIt/capture/CaptureParams;
    invoke-virtual {v0, p0}, Lcom/ui/LapseIt/capture/CaptureParams;->setupCamera(Landroid/content/Context;)Landroid/hardware/Camera$Parameters;

    .line 717
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->zoomWidget:Lcom/ui/LapseIt/capture/ZoomWidget;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureParams;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    new-instance v2, Lcom/ui/LapseIt/capture/ZoomWidget;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/capture/ZoomWidget;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    iput-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->zoomWidget:Lcom/ui/LapseIt/capture/ZoomWidget;

    .line 721
    :cond_2
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    .end local v0           #capParams:Lcom/ui/LapseIt/capture/CaptureParams;
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    .line 733
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 734
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 737
    :cond_3
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 738
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    const-string v2, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 743
    const-string v2, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 744
    const-string v2, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 745
    const-string v2, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 746
    sget-object v2, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error setting camera params"

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lui/utils/CustomUncaughtExceptionHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error on surface change : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 723
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    .line 724
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 725
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 727
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    sget-object v2, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error setting camera params internal"

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lui/utils/CustomUncaughtExceptionHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9
    .parameter "holder"

    .prologue
    const-wide/16 v7, 0x0

    const v3, 0x7f080011

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 632
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :goto_0
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 651
    const-string v2, "trace"

    const-string v3, "Camera null when creating surface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_1
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 635
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 636
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 637
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 638
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    .line 639
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error initilizing Camera : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 642
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 643
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureView;->finish()V

    .line 646
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error initilizing Camera : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureParams;->getNumberOfCameras()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 658
    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->camFlip:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    :cond_1
    iget-boolean v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->isSchedule:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_3

    .line 665
    const-string v2, "scheduledEnd"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, tempScheduleEnd:Ljava/lang/String;
    iput-wide v7, p0, Lcom/ui/LapseIt/capture/CaptureView;->endScheduledTime:J

    .line 668
    if-eqz v1, :cond_2

    .line 670
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ui/LapseIt/capture/CaptureView;->endScheduledTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 676
    :cond_2
    :goto_2
    const-string v2, "scheduledStart"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 677
    const-string v2, "scheduledEnd"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v6}, Ljava/util/Timer;-><init>(Z)V

    new-instance v3, Lcom/ui/LapseIt/capture/CaptureView$10;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/capture/CaptureView$10;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V

    .line 690
    const-wide/16 v4, 0x7d0

    .line 679
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 671
    :catch_2
    move-exception v0

    .line 672
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 692
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #tempScheduleEnd:Ljava/lang/String;
    :cond_3
    iput-wide v7, p0, Lcom/ui/LapseIt/capture/CaptureView;->endScheduledTime:J

    goto/16 :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 754
    iget-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 756
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 759
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 760
    iput-object v1, p0, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 762
    :cond_1
    return-void
.end method
