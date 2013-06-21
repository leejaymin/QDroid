.class Lcom/jellybus/fx/Activity_Color_Histogram$5;
.super Ljava/lang/Object;
.source "Activity_Color_Histogram.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Histogram;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 251
    :pswitch_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramGraphView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 252
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    iput-boolean v0, v1, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 257
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v2

    iget v2, v2, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    iput v2, v1, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramGraphView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 260
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->isLine:Z
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$23(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V

    .line 265
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramGraphView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jellybus/fx_sub/HistogramButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->isLine:Z
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$24(Lcom/jellybus/fx/Activity_Color_Histogram;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$5;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->setHistogram()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$25(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
