.class Lcom/jellybus/fx_sub/StampControllView$3;
.super Landroid/os/Handler;
.source "StampControllView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/StampControllView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/StampControllView;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/StampControllView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    .line 471
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, isAllOK:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 485
    :goto_1
    if-eqz v1, :cond_5

    .line 486
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 491
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$8(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    :goto_3
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 501
    return-void

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v2, v2, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft_clear:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget v3, v3, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v2, v3

    sget v3, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v2, v2, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft_clear:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget v3, v3, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v2, v3

    sget v3, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 478
    :cond_2
    const/4 v1, 0x1

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 480
    :cond_3
    const/4 v1, 0x0

    .line 481
    goto/16 :goto_1

    .line 487
    :cond_4
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v4, v4, Lcom/jellybus/fx_sub/StampControllView;->clearX:[F

    aget v4, v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    .line 488
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v4, v4, Lcom/jellybus/fx_sub/StampControllView;->clearY:[F

    aget v4, v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    .line 489
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v4, v4, Lcom/jellybus/fx_sub/StampControllView;->clearScale:[F

    aget v4, v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 493
    :cond_5
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$8(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 494
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$8(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    :cond_6
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #setter for: Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z
    invoke-static {v2, v5}, Lcom/jellybus/fx_sub/StampControllView;->access$6(Lcom/jellybus/fx_sub/StampControllView;Z)V

    .line 496
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    const/4 v3, -0x1

    #setter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/StampControllView;->access$7(Lcom/jellybus/fx_sub/StampControllView;I)V

    .line 497
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/StampControllView;->clearAll()V

    .line 498
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$3;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/StampControllView;->clearBitmap()V

    goto/16 :goto_3
.end method
