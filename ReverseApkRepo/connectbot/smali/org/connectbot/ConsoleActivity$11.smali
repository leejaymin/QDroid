.class Lorg/connectbot/ConsoleActivity$11;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$detect:Landroid/view/GestureDetector;

.field private final synthetic val$keyboardGroup:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iput-object p2, p0, Lorg/connectbot/ConsoleActivity$11;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lorg/connectbot/ConsoleActivity$11;->val$detect:Landroid/view/GestureDetector;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/ConsoleActivity$11;)Lorg/connectbot/ConsoleActivity;
    .locals 1
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v9, 0x41c8

    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 495
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->isSelectingForCopy()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v7, v7, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    iget v7, v7, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 497
    .local v4, row:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v7, v7, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    iget v7, v7, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 499
    .local v1, col:I
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->getSelectionArea()Lorg/connectbot/bean/SelectionArea;

    move-result-object v0

    .line 501
    .local v0, area:Lorg/connectbot/bean/SelectionArea;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 554
    .end local v0           #area:Lorg/connectbot/bean/SelectionArea;
    .end local v1           #col:I
    .end local v4           #row:I
    :cond_0
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {v6}, Lorg/connectbot/ConsoleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 556
    .local v2, config:Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    .line 557
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    #setter for: Lorg/connectbot/ConsoleActivity;->lastX:F
    invoke-static {v5, v6}, Lorg/connectbot/ConsoleActivity;->access$8(Lorg/connectbot/ConsoleActivity;F)V

    .line 558
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    #setter for: Lorg/connectbot/ConsoleActivity;->lastY:F
    invoke-static {v5, v6}, Lorg/connectbot/ConsoleActivity;->access$9(Lorg/connectbot/ConsoleActivity;F)V

    .line 579
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->val$detect:Landroid/view/GestureDetector;

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .end local v2           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_1
    return v5

    .line 504
    .restart local v0       #area:Lorg/connectbot/bean/SelectionArea;
    .restart local v1       #col:I
    .restart local v4       #row:I
    :pswitch_0
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->isSelectingOrigin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 505
    invoke-virtual {v0, v4}, Lorg/connectbot/bean/SelectionArea;->setRow(I)V

    .line 506
    invoke-virtual {v0, v1}, Lorg/connectbot/bean/SelectionArea;->setColumn(I)V

    .line 507
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #setter for: Lorg/connectbot/ConsoleActivity;->lastTouchRow:I
    invoke-static {v6, v4}, Lorg/connectbot/ConsoleActivity;->access$4(Lorg/connectbot/ConsoleActivity;I)V

    .line 508
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #setter for: Lorg/connectbot/ConsoleActivity;->lastTouchCol:I
    invoke-static {v6, v1}, Lorg/connectbot/ConsoleActivity;->access$5(Lorg/connectbot/ConsoleActivity;I)V

    .line 509
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    goto :goto_1

    .line 516
    :pswitch_1
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->lastTouchRow:I
    invoke-static {v6}, Lorg/connectbot/ConsoleActivity;->access$6(Lorg/connectbot/ConsoleActivity;)I

    move-result v6

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->lastTouchCol:I
    invoke-static {v6}, Lorg/connectbot/ConsoleActivity;->access$7(Lorg/connectbot/ConsoleActivity;)I

    move-result v6

    if-eq v1, v6, :cond_2

    .line 520
    :cond_3
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->finishSelectingOrigin()V

    .line 523
    invoke-virtual {v0, v4}, Lorg/connectbot/bean/SelectionArea;->setRow(I)V

    .line 524
    invoke-virtual {v0, v1}, Lorg/connectbot/bean/SelectionArea;->setColumn(I)V

    .line 525
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #setter for: Lorg/connectbot/ConsoleActivity;->lastTouchRow:I
    invoke-static {v6, v4}, Lorg/connectbot/ConsoleActivity;->access$4(Lorg/connectbot/ConsoleActivity;I)V

    .line 526
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #setter for: Lorg/connectbot/ConsoleActivity;->lastTouchCol:I
    invoke-static {v6, v1}, Lorg/connectbot/ConsoleActivity;->access$5(Lorg/connectbot/ConsoleActivity;I)V

    .line 527
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    goto :goto_1

    .line 533
    :pswitch_2
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->getLeft()I

    move-result v6

    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->getRight()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 534
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->getTop()I

    move-result v6

    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->getBottom()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 539
    :cond_4
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    iget-object v6, v6, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v0, v6}, Lorg/connectbot/bean/SelectionArea;->copyFrom(Lde/mud/terminal/VDUBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, copiedText:Ljava/lang/String;
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    const v8, 0x7f080087

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lorg/connectbot/ConsoleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 547
    .end local v3           #copiedText:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v0}, Lorg/connectbot/bean/SelectionArea;->reset()V

    .line 548
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6, v11}, Lorg/connectbot/service/TerminalBridge;->setSelectingForCopy(Z)V

    .line 549
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, v6, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    goto/16 :goto_1

    .line 559
    .end local v0           #area:Lorg/connectbot/bean/SelectionArea;
    .end local v1           #col:I
    .end local v4           #row:I
    .restart local v2       #config:Landroid/content/res/Configuration;
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 560
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x190

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 562
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->lastX:F
    invoke-static {v6}, Lorg/connectbot/ConsoleActivity;->access$10(Lorg/connectbot/ConsoleActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1

    .line 563
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->lastY:F
    invoke-static {v6}, Lorg/connectbot/ConsoleActivity;->access$11(Lorg/connectbot/ConsoleActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1

    .line 564
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->keyboard_fade_in:Landroid/view/animation/Animation;
    invoke-static {v6}, Lorg/connectbot/ConsoleActivity;->access$12(Lorg/connectbot/ConsoleActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 565
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$11;->this$0:Lorg/connectbot/ConsoleActivity;

    #getter for: Lorg/connectbot/ConsoleActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lorg/connectbot/ConsoleActivity;->access$13(Lorg/connectbot/ConsoleActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lorg/connectbot/ConsoleActivity$11$1;

    iget-object v7, p0, Lorg/connectbot/ConsoleActivity$11;->val$keyboardGroup:Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0, v7}, Lorg/connectbot/ConsoleActivity$11$1;-><init>(Lorg/connectbot/ConsoleActivity$11;Landroid/widget/RelativeLayout;)V

    .line 575
    const-wide/16 v7, 0x5dc

    .line 567
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
