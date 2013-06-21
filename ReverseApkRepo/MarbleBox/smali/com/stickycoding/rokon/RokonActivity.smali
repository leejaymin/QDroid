.class public Lcom/stickycoding/rokon/RokonActivity;
.super Landroid/app/Activity;
.source "RokonActivity.java"


# static fields
.field protected static currentScene:Lcom/stickycoding/rokon/Scene;

.field protected static engineCreated:Z

.field protected static engineLoaded:Z

.field protected static forceFullscreen:Z

.field protected static forceLandscape:Z

.field protected static forcePortrait:Z

.field protected static gameHeight:F

.field protected static gameWidth:F

.field protected static graphicsPath:Ljava/lang/String;

.field protected static killLock:Ljava/lang/Object;

.field protected static lastToast:Landroid/widget/Toast;

.field public static renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

.field protected static rokonContainer:Landroid/widget/RelativeLayout;

.field protected static rokonInterface:Landroid/widget/RelativeLayout;

.field protected static runnableLock:Ljava/lang/Object;

.field protected static surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

.field protected static toastHandler:Landroid/os/Handler;

.field protected static toastMessage:Ljava/lang/String;

.field protected static toastType:I


# instance fields
.field protected executeRunnable:Landroid/os/Handler;

.field private gameThread:Lcom/stickycoding/rokon/GameThread;

.field private killEngine:Landroid/os/Handler;

.field private thread:Ljava/lang/Thread;

.field private useThreading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineLoaded:Z

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->graphicsPath:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->runnableLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->killLock:Ljava/lang/Object;

    .line 551
    new-instance v0, Lcom/stickycoding/rokon/RokonActivity$3;

    invoke-direct {v0}, Lcom/stickycoding/rokon/RokonActivity$3;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->toastHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/stickycoding/rokon/RokonActivity$1;

    invoke-direct {v0, p0}, Lcom/stickycoding/rokon/RokonActivity$1;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->executeRunnable:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/stickycoding/rokon/RokonActivity$2;

    invoke-direct {v0, p0}, Lcom/stickycoding/rokon/RokonActivity$2;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->killEngine:Landroid/os/Handler;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RokonActivity;->useThreading:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/stickycoding/rokon/RokonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private createStatics()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 246
    invoke-static {p0}, Lcom/stickycoding/rokon/device/Graphics;->determine(Landroid/app/Activity;)V

    .line 247
    new-instance v0, Lcom/stickycoding/rokon/BlendFunction;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lcom/stickycoding/rokon/BlendFunction;-><init>(II)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    .line 249
    new-instance v0, Lcom/stickycoding/rokon/BufferObject;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/BufferObject;-><init>([F)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 250
    new-instance v0, Lcom/stickycoding/rokon/BufferObject;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/BufferObject;-><init>([F)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->lineLoopBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 252
    new-instance v0, Lcom/stickycoding/rokon/vbo/ArrayVBO;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-direct {v0, v1, v4}, Lcom/stickycoding/rokon/vbo/ArrayVBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->arrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    .line 253
    new-instance v0, Lcom/stickycoding/rokon/vbo/ArrayVBO;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->lineLoopBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-direct {v0, v1, v4}, Lcom/stickycoding/rokon/vbo/ArrayVBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->boxArrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    .line 255
    new-instance v0, Lcom/stickycoding/rokon/Polygon;

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/Polygon;-><init>([F)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->rectangle:Lcom/stickycoding/rokon/Polygon;

    .line 256
    new-instance v0, Lcom/stickycoding/rokon/Polygon;

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/Polygon;-><init>([F)V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->circle:Lcom/stickycoding/rokon/Polygon;

    .line 258
    new-instance v0, Lcom/stickycoding/rokon/RenderQueueManager;

    invoke-direct {v0}, Lcom/stickycoding/rokon/RenderQueueManager;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    .line 260
    sput-object p0, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 262
    invoke-static {}, Lcom/stickycoding/rokon/device/OS;->determineAPI()V

    .line 263
    return-void

    .line 249
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 250
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 255
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 256
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static debugMode()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    .line 119
    return-void
.end method

.method public static getDrawPriority()I
    .locals 1

    .prologue
    .line 538
    sget v0, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    return v0
.end method

.method public static getGameHeight()F
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    return v0
.end method

.method public static getGameWidth()F
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    return v0
.end method

.method public static getScene()Lcom/stickycoding/rokon/Scene;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    return-object v0
.end method

.method private initEngine(Z)V
    .locals 4
    .parameter "createRelativeLayout"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 500
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceFullscreen:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 502
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 503
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 505
    :cond_0
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceLandscape:Z

    if-eqz v0, :cond_1

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonActivity;->setRequestedOrientation(I)V

    .line 508
    :cond_1
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forcePortrait:Z

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0, v3}, Lcom/stickycoding/rokon/RokonActivity;->setRequestedOrientation(I)V

    .line 512
    :cond_2
    if-nez p1, :cond_3

    .line 513
    new-instance v0, Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-direct {v0, p0}, Lcom/stickycoding/rokon/RokonSurfaceView;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    .line 514
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonActivity;->setContentView(Landroid/view/View;)V

    .line 515
    sput-boolean v3, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    .line 530
    :goto_0
    return-void

    .line 517
    :cond_3
    new-instance v0, Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-direct {v0, p0}, Lcom/stickycoding/rokon/RokonSurfaceView;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    .line 519
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonInterface:Landroid/widget/RelativeLayout;

    .line 520
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonInterface:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonContainer:Landroid/widget/RelativeLayout;

    .line 523
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonContainer:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 526
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonContainer:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->rokonInterface:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 527
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonActivity;->setContentView(Landroid/view/View;)V

    .line 528
    sput-boolean v3, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    goto :goto_0
.end method

.method public static normalMode()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    .line 126
    return-void
.end method

.method public static setDrawPriority(I)V
    .locals 0
    .parameter "drawPriority"

    .prologue
    .line 548
    sput p0, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    .line 549
    return-void
.end method


# virtual methods
.method public createEngine()V
    .locals 2

    .prologue
    .line 469
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "RokonActivity.createEngine"

    const-string v1, "Attempted to call createEngine for a second time"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/stickycoding/rokon/RokonActivity;->createStatics()V

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stickycoding/rokon/RokonActivity;->initEngine(Z)V

    goto :goto_0
.end method

.method public createEngine(Z)V
    .locals 2
    .parameter "createRelativeLayout"

    .prologue
    .line 484
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "RokonActivity.createEngine"

    const-string v1, "Attempted to call createEngine for a second time"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/stickycoding/rokon/RokonActivity;->createStatics()V

    .line 489
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/RokonActivity;->initEngine(Z)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    const-string v1, "dispose()"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 99
    .end local v0           #i:I
    :cond_0
    sput-boolean v2, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    .line 100
    sput-object v3, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 101
    sput-boolean v2, Lcom/stickycoding/rokon/RokonActivity;->forceLandscape:Z

    .line 102
    sput-boolean v2, Lcom/stickycoding/rokon/RokonActivity;->forcePortrait:Z

    .line 103
    sput-boolean v2, Lcom/stickycoding/rokon/RokonActivity;->forceFullscreen:Z

    .line 104
    sput-object v3, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    .line 105
    sput-boolean v2, Lcom/stickycoding/rokon/RokonActivity;->engineLoaded:Z

    .line 106
    sput v4, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    .line 107
    sput v4, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    .line 108
    const-string v1, ""

    sput-object v1, Lcom/stickycoding/rokon/RokonActivity;->graphicsPath:Ljava/lang/String;

    .line 109
    sput-object v3, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 110
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->stopThread()V

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 112
    return-void

    .line 95
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aput-object v3, v1, v0

    .line 96
    sget-object v1, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aput-object v3, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->killEngine:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method

.method public forceFullscreen()V
    .locals 2

    .prologue
    .line 457
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "RokonActivity.forceFullscreen"

    const-string v1, "This function may only be called before createEngine()"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceFullscreen:Z

    goto :goto_0
.end method

.method public forceGameSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 380
    sput p1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    .line 381
    sput p2, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    .line 382
    return-void
.end method

.method public forceLandscape()V
    .locals 2

    .prologue
    .line 430
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "RokonActivity.forceFullscreen"

    const-string v1, "This function may only be called before createEngine()"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forcePortrait:Z

    .line 435
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceLandscape:Z

    goto :goto_0
.end method

.method public forcePortrait()V
    .locals 2

    .prologue
    .line 417
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "RokonActivity.forceFullscreen"

    const-string v1, "This function may only be called before createEngine()"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forcePortrait:Z

    .line 422
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceLandscape:Z

    goto :goto_0
.end method

.method public getGraphicsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->graphicsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->rokonInterface:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public isForceLandscape()Z
    .locals 1

    .prologue
    .line 449
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forceLandscape:Z

    return v0
.end method

.method public isForcePortrait()Z
    .locals 1

    .prologue
    .line 442
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->forcePortrait:Z

    return v0
.end method

.method public isThreading()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/stickycoding/rokon/RokonActivity;->useThreading:Z

    return v0
.end method

.method public noThreads()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RokonActivity;->useThreading:Z

    .line 195
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const-string v0, "onCreate()"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-static {}, Lcom/stickycoding/rokon/MotionEventWrapper5;->checkAvailable()V

    .line 210
    new-instance v0, Lcom/stickycoding/rokon/MotionEventWrapper5;

    invoke-direct {v0}, Lcom/stickycoding/rokon/MotionEventWrapper5;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/stickycoding/rokon/MotionEventWrapper8;->checkAvailable()V

    .line 215
    new-instance v0, Lcom/stickycoding/rokon/MotionEventWrapper8;

    invoke-direct {v0}, Lcom/stickycoding/rokon/MotionEventWrapper8;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/Rokon;->motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;
    :try_end_1
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :goto_1
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "onCreate() when already started, creating new GLSurfaceView"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-direct {v0, p0}, Lcom/stickycoding/rokon/RokonSurfaceView;-><init>(Lcom/stickycoding/rokon/RokonActivity;)V

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    .line 220
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/RokonActivity;->setContentView(Landroid/view/View;)V

    .line 231
    :cond_0
    :goto_2
    return-void

    .line 223
    :cond_1
    const-string v0, "Engine Activity created"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->onCreate()V

    .line 225
    sget-boolean v0, Lcom/stickycoding/rokon/RokonActivity;->engineCreated:Z

    if-nez v0, :cond_0

    .line 226
    const-string v0, "The engine was not created"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 227
    const-string v0, "#################### FINISH ME HERE"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->finish()V

    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    goto :goto_1

    .line 211
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "onDestroy()"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RokonActivity;->isFinishing()Z

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-static {v1, p1, p2}, Lcom/stickycoding/rokon/GameThread;->keyInput(ZILandroid/view/KeyEvent;)V

    .line 142
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/stickycoding/rokon/GameThread;->keyInput(ZILandroid/view/KeyEvent;)V

    .line 161
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadComplete()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 271
    :try_start_0
    const-string v0, "onPause()"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Scene;->onPause()V

    .line 276
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->pauseGame()V

    .line 277
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/RokonSurfaceView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 280
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    const-string v0, "onResume()"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 288
    sput-object p0, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    .line 289
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/RokonSurfaceView;->onResume()V

    .line 290
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->resumeGame()V

    .line 291
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Scene;->onResume()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/stickycoding/rokon/GameThread;->motionInput(ZLandroid/view/MotionEvent;)V

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/stickycoding/rokon/GameThread;->motionInput(ZLandroid/view/MotionEvent;)V

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setGameHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 346
    sput p1, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    .line 347
    return-void
.end method

.method public setGameSize(FF)F
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 359
    invoke-static {p0}, Lcom/stickycoding/rokon/device/Graphics;->determine(Landroid/app/Activity;)V

    .line 360
    div-float v0, p1, p2

    .line 361
    .local v0, aspect:F
    sput p1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    .line 362
    sput p2, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    .line 363
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 364
    const-string v1, "Thinner than expected"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 368
    :cond_0
    :goto_0
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getAspectRatio()F

    move-result v1

    sget v2, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    mul-float/2addr v1, v2

    sput v1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    .line 369
    sget v1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    return v1

    .line 365
    :cond_1
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 366
    const-string v1, "Wider than expected"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGameWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 333
    sput p1, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    .line 337
    return-void
.end method

.method public setGraphicsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 316
    sput-object p1, Lcom/stickycoding/rokon/RokonActivity;->graphicsPath:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setScene(Lcom/stickycoding/rokon/Scene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    const-string v0, "RokonActivity.setScene"

    const-string v1, "Tried setting to a NULL Scene"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x0

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_1

    .line 396
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Scene;->onEndScene()V

    .line 398
    :cond_1
    sput-object p1, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    .line 399
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Scene;->onSetScene()V

    .line 400
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Scene;->onReady()V

    goto :goto_0
.end method

.method protected startThread()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/stickycoding/rokon/GameThread;

    invoke-direct {v0}, Lcom/stickycoding/rokon/GameThread;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->gameThread:Lcom/stickycoding/rokon/GameThread;

    .line 181
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/stickycoding/rokon/RokonActivity;->gameThread:Lcom/stickycoding/rokon/GameThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->thread:Ljava/lang/Thread;

    .line 182
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonActivity;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method public useThreading()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RokonActivity;->useThreading:Z

    .line 191
    return-void
.end method
