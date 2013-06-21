.class Lcom/jellybus/fx/Activity_Filter$5;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0x1e

    const/high16 v4, 0x4248

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 523
    :goto_0
    return v0

    .line 469
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->isFlipping:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$8(Lcom/jellybus/fx/Activity_Filter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    #setter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$9(Lcom/jellybus/fx/Activity_Filter;F)V

    .line 471
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_picture_flip:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$10(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 474
    goto :goto_0

    .line 477
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$11(Lcom/jellybus/fx/Activity_Filter;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 478
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$11(Lcom/jellybus/fx/Activity_Filter;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 479
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isLeft:Z
    invoke-static {v2, v1}, Lcom/jellybus/fx/Activity_Filter;->access$12(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 480
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Filter;->access$13(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 481
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$11(Lcom/jellybus/fx/Activity_Filter;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 482
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 499
    :goto_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 501
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 502
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v5}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v1

    if-le v1, v6, :cond_2

    .line 504
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v6}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Filter;->access$13(Lcom/jellybus/fx/Activity_Filter;Z)V

    move v0, v1

    .line 485
    goto/16 :goto_0

    .line 488
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$11(Lcom/jellybus/fx/Activity_Filter;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 489
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isLeft:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Filter;->access$12(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 490
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Filter;->access$13(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 491
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->startX:F
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$11(Lcom/jellybus/fx/Activity_Filter;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 492
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$15(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Lcom/jellybus/fx/Activity_Filter;->alpha:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$14(Lcom/jellybus/fx/Activity_Filter;I)V

    goto/16 :goto_1

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Filter;->access$13(Lcom/jellybus/fx/Activity_Filter;Z)V

    move v0, v1

    .line 495
    goto/16 :goto_0

    .line 509
    :pswitch_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$16(Lcom/jellybus/fx/Activity_Filter;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 510
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Favorites"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "History"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 511
    :cond_6
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->isLeft:Z
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$18(Lcom/jellybus/fx/Activity_Filter;)Z

    move-result v3

    #calls: Lcom/jellybus/fx/Activity_Filter;->flipFilterFavHis(Z)V
    invoke-static {v2, v3}, Lcom/jellybus/fx/Activity_Filter;->access$19(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 515
    :goto_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isFlipping:Z
    invoke-static {v2, v1}, Lcom/jellybus/fx/Activity_Filter;->access$21(Lcom/jellybus/fx/Activity_Filter;Z)V

    .line 516
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->isMove:Z
    invoke-static {v2, v1}, Lcom/jellybus/fx/Activity_Filter;->access$13(Lcom/jellybus/fx/Activity_Filter;Z)V

    goto/16 :goto_0

    .line 513
    :cond_7
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->isLeft:Z
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$18(Lcom/jellybus/fx/Activity_Filter;)Z

    move-result v3

    #calls: Lcom/jellybus/fx/Activity_Filter;->flipFilter(Z)V
    invoke-static {v2, v3}, Lcom/jellybus/fx/Activity_Filter;->access$20(Lcom/jellybus/fx/Activity_Filter;Z)V

    goto :goto_2

    .line 518
    :cond_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$5;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->opacity:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$22(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    move v0, v1

    .line 519
    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
