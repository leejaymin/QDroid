.class final Lorg/connectbot/Console$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/Console;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/Console;

.field public totalY:F

.field private final synthetic val$fade_stay_hidden:Landroid/view/animation/Animation;

.field private final synthetic val$slide_left_in:Landroid/view/animation/Animation;

.field private final synthetic val$slide_left_out:Landroid/view/animation/Animation;

.field private final synthetic val$slide_right_in:Landroid/view/animation/Animation;

.field private final synthetic val$slide_right_out:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lorg/connectbot/Console;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iput-object p2, p0, Lorg/connectbot/Console$2;->val$fade_stay_hidden:Landroid/view/animation/Animation;

    iput-object p3, p0, Lorg/connectbot/Console$2;->val$slide_right_in:Landroid/view/animation/Animation;

    iput-object p4, p0, Lorg/connectbot/Console$2;->val$slide_right_out:Landroid/view/animation/Animation;

    iput-object p5, p0, Lorg/connectbot/Console$2;->val$slide_left_in:Landroid/view/animation/Animation;

    iput-object p6, p0, Lorg/connectbot/Console$2;->val$slide_left_out:Landroid/view/animation/Animation;

    .line 181
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/Console$2;->totalY:F

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f09001a

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float v0, v5, v6

    .line 240
    .local v0, distx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v1, v5, v6

    .line 241
    .local v1, disty:F
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 242
    .local v3, goalwidth:I
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getHeight()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 246
    .local v2, goalheight:I
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42c8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 247
    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 250
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5, v7}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v4

    .line 251
    .local v4, overlay:Landroid/view/View;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/connectbot/Console$2;->val$fade_stay_hidden:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    :cond_0
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    iget-object v6, p0, Lorg/connectbot/Console$2;->val$slide_right_in:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    iget-object v6, p0, Lorg/connectbot/Console$2;->val$slide_right_out:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 256
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5}, Lorg/connectbot/Console;->updateDefault()V

    .line 259
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5, v7}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v4

    .line 260
    if-eqz v4, :cond_1

    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->fade_out:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    move v5, v8

    .line 285
    .end local v4           #overlay:Landroid/view/View;
    :goto_0
    return v5

    .line 264
    :cond_2
    neg-int v5, v3

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    .line 267
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5, v7}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v4

    .line 268
    .restart local v4       #overlay:Landroid/view/View;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/connectbot/Console$2;->val$fade_stay_hidden:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    :cond_3
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    iget-object v6, p0, Lorg/connectbot/Console$2;->val$slide_left_in:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    iget-object v6, p0, Lorg/connectbot/Console$2;->val$slide_left_out:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 273
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5}, Lorg/connectbot/Console;->updateDefault()V

    .line 276
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    invoke-virtual {v5, v7}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v4

    .line 277
    .restart local v4       #overlay:Landroid/view/View;
    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    iget-object v5, v5, Lorg/connectbot/Console;->fade_out:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    move v5, v8

    .line 278
    goto :goto_0

    .line 285
    .end local v4           #overlay:Landroid/view/View;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 190
    iput v7, p0, Lorg/connectbot/Console$2;->totalY:F

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42c8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 196
    iget-object v5, p0, Lorg/connectbot/Console$2;->this$0:Lorg/connectbot/Console;

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Lorg/connectbot/Console;->findCurrentView(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, flip:Landroid/view/View;
    if-nez v2, :cond_1

    move v5, v8

    .line 232
    .end local v2           #flip:Landroid/view/View;
    :goto_0
    return v5

    .line 198
    .restart local v2       #flip:Landroid/view/View;
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/connectbot/TerminalView;

    move-object v4, v0

    .line 202
    .local v4, terminal:Lorg/connectbot/TerminalView;
    iget v5, p0, Lorg/connectbot/Console$2;->totalY:F

    add-float/2addr v5, p4

    iput v5, p0, Lorg/connectbot/Console$2;->totalY:F

    .line 203
    iget v5, p0, Lorg/connectbot/Console$2;->totalY:F

    iget-object v6, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v6, v6, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 206
    .local v3, moved:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 207
    if-eqz v3, :cond_4

    .line 208
    iget-object v5, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v5, v5, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v5}, Lde/mud/terminal/VDUBuffer;->getWindowBase()I

    move-result v1

    .line 209
    .local v1, base:I
    iget-object v5, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v5, v5, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Lde/mud/terminal/VDUBuffer;->setWindowBase(I)V

    .line 210
    iput v7, p0, Lorg/connectbot/Console$2;->totalY:F

    move v5, v9

    .line 211
    goto :goto_0

    .line 215
    .end local v1           #base:I
    :cond_2
    const/4 v5, 0x5

    if-le v3, v5, :cond_3

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "going pagedown"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v5, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v5, v5, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v5, Lde/mud/terminal/vt320;

    const/16 v6, 0x12

    invoke-virtual {v5, v6, v10, v8}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 218
    iput v7, p0, Lorg/connectbot/Console$2;->totalY:F

    move v5, v9

    .line 219
    goto :goto_0

    .line 220
    :cond_3
    const/4 v5, -0x5

    if-ge v3, v5, :cond_4

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "going pageup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v5, v4, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v5, v5, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v5, Lde/mud/terminal/vt320;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v10, v8}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 223
    iput v7, p0, Lorg/connectbot/Console$2;->totalY:F

    move v5, v9

    .line 224
    goto :goto_0

    .end local v2           #flip:Landroid/view/View;
    .end local v4           #terminal:Lorg/connectbot/TerminalView;
    .end local v3           #moved:I
    :cond_4
    move v5, v8

    .line 232
    goto :goto_0
.end method
