.class Lorg/connectbot/ConsoleActivity$10;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ConsoleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;

.field private totalY:F


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 401
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float v0, v5, v6

    .line 408
    .local v0, distx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v1, v5, v6

    .line 409
    .local v1, disty:F
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v5, v5, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 413
    .local v2, goalwidth:I
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 414
    int-to-float v5, v2

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 415
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v4, v3}, Lorg/connectbot/ConsoleActivity;->shiftCurrentTerminal(I)V

    .line 426
    :goto_0
    return v3

    .line 419
    :cond_0
    neg-int v5, v2

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 420
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v5, v4}, Lorg/connectbot/ConsoleActivity;->shiftCurrentTerminal(I)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 426
    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 434
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v4, v4, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v4, v4, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v4}, Lorg/connectbot/service/TerminalBridge;->isSelectingForCopy()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 483
    :goto_0
    return v4

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v4, v5

    .line 438
    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 442
    iput v8, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    .line 446
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    .line 448
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity$10;->this$0:Lorg/connectbot/ConsoleActivity;

    const v7, 0x7f0b0004

    invoke-virtual {v4, v7}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, flip:Landroid/view/View;
    if-nez v1, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move-object v3, v1

    .line 450
    check-cast v3, Lorg/connectbot/TerminalView;

    .line 454
    .local v3, terminal:Lorg/connectbot/TerminalView;
    iget v4, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    add-float/2addr v4, p4

    iput v4, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    .line 455
    iget v4, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    iget-object v7, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v7, v7, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v2, v4

    .line 458
    .local v2, moved:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    .line 459
    if-eqz v2, :cond_7

    .line 460
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, v4, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v4}, Lde/mud/terminal/VDUBuffer;->getWindowBase()I

    move-result v0

    .line 461
    .local v0, base:I
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, v4, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    add-int v5, v0, v2

    invoke-virtual {v4, v5}, Lde/mud/terminal/VDUBuffer;->setWindowBase(I)V

    .line 462
    iput v8, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    move v4, v6

    .line 463
    goto :goto_0

    .line 467
    .end local v0           #base:I
    :cond_5
    const/4 v4, 0x5

    if-le v2, v4, :cond_6

    .line 468
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, v4, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v4, Lde/mud/terminal/vt320;

    const/16 v7, 0x12

    invoke-virtual {v4, v7, v9, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 469
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v4}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    .line 470
    iput v8, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    move v4, v6

    .line 471
    goto/16 :goto_0

    .line 472
    :cond_6
    const/4 v4, -0x5

    if-ge v2, v4, :cond_7

    .line 473
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, v4, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v4, Lde/mud/terminal/vt320;

    const/16 v7, 0x13

    invoke-virtual {v4, v7, v9, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 474
    iget-object v4, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v4}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    .line 475
    iput v8, p0, Lorg/connectbot/ConsoleActivity$10;->totalY:F

    move v4, v6

    .line 476
    goto/16 :goto_0

    .end local v1           #flip:Landroid/view/View;
    .end local v2           #moved:I
    .end local v3           #terminal:Lorg/connectbot/TerminalView;
    :cond_7
    move v4, v5

    .line 483
    goto/16 :goto_0
.end method
