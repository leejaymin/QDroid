.class Lcom/jellybus/fx/Activity_Color_Histogram$1;
.super Landroid/os/Handler;
.source "Activity_Color_Histogram.java"


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$0(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$1(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 131
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$0(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$2(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 132
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->setHistogramInfo()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$3(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    .line 134
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->button_layout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$4(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonW:I
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$5(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 135
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->button_layout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$4(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonH:I
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$6(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 136
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonW:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$7(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonH:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$8(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v2, param2:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonW:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$7(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonH:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$8(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/HistogramButtonView;->setControllViewSize(II)V

    .line 138
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jellybus/fx_sub/HistogramButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->button_layout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$4(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/HistogramButtonView;->getButtonSize()I

    move-result v0

    .line 143
    .local v0, button_size:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$10(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$11(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$10(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$11(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/HistogramGraphView;->setControllViewSize(II)V

    .line 146
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jellybus/fx_sub/HistogramGraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jellybus/fx_sub/HistogramGraphView;->setMinSize(I)V

    .line 149
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    .line 150
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    .line 152
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$0(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$13(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram$1;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    const/4 v4, 0x1

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->isViewSet:Z
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$14(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V

    .line 157
    return-void
.end method
