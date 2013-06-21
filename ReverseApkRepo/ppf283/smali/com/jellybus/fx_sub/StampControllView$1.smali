.class Lcom/jellybus/fx_sub/StampControllView$1;
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
    iput-object p1, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    .line 396
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 399
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->isStampLeft:Z
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$0(Lcom/jellybus/fx_sub/StampControllView;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget v3, v3, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v2, v3

    sget v3, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->isStampLeft:Z
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$0(Lcom/jellybus/fx_sub/StampControllView;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget v3, v3, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v2, v3

    sget v3, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 400
    :cond_1
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->removeX:F
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$2(Lcom/jellybus/fx_sub/StampControllView;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    .line 401
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->removeY:F
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$3(Lcom/jellybus/fx_sub/StampControllView;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    .line 402
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->removeScale:F
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$4(Lcom/jellybus/fx_sub/StampControllView;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    .line 403
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$5(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 425
    return-void

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$5(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx_sub/StampControllView;->access$5(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_3
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v0, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 411
    .local v0, bitmapIdx:I
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    iget-object v3, v2, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v4}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 412
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #getter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v3}, Lcom/jellybus/fx_sub/StampControllView;->access$1(Lcom/jellybus/fx_sub/StampControllView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    #setter for: Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z
    invoke-static {v2, v5}, Lcom/jellybus/fx_sub/StampControllView;->access$6(Lcom/jellybus/fx_sub/StampControllView;Z)V

    .line 422
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView$1;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I
    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/StampControllView;->access$7(Lcom/jellybus/fx_sub/StampControllView;I)V

    goto :goto_0

    .line 416
    :cond_4
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    if-lt v2, v0, :cond_5

    .line 417
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 415
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
