.class Lcom/jellybus/fx/Activity_TimeMatrix$3;
.super Ljava/lang/Object;
.source "Activity_TimeMatrix.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_TimeMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_TimeMatrix;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 277
    :goto_0
    return v0

    .line 252
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$21(Lcom/jellybus/fx/Activity_TimeMatrix;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jellybus/fx_sub/TimeControllView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 254
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$22(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$22(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$19(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$3(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    if-eqz v2, :cond_2

    .line 265
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/TimeControllView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 268
    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jellybus/fx_sub/TimeControllView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 272
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$3;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$22(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 275
    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
