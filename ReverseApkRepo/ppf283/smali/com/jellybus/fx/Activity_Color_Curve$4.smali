.class Lcom/jellybus/fx/Activity_Color_Curve$4;
.super Ljava/lang/Object;
.source "Activity_Color_Curve.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_0
    return v0

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jellybus/fx_sub/CurveView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$0(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 218
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/CurveView;->setFinalPoint()V

    .line 219
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$4(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eq v1, v2, :cond_2

    .line 223
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->toggle:Z
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$15(Lcom/jellybus/fx/Activity_Color_Curve;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->toggle:Z
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$16(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    .line 230
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jellybus/fx_sub/CurveView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->toggle:Z
    invoke-static {v1, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$16(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    goto :goto_1

    .line 234
    :pswitch_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    iget v1, v1, Lcom/jellybus/fx_sub/CurveView;->selectedPoint:I

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/CurveView;->isPointRemoved:Z

    if-nez v1, :cond_5

    .line 235
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$0(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 238
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->setFinalPoint()V

    .line 239
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$4(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$4;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jellybus/fx_sub/CurveView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
