.class Lcom/jellybus/fx/Activity_TimeMatrix$1;
.super Landroid/os/Handler;
.source "Activity_TimeMatrix.java"


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    .line 123
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->bg_top:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$1(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->bg_mid:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$2(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/jellybus/fx_sub/TimeControllView;->setControllViewSize(FF)V

    .line 126
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$3(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$3(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 127
    .local v4, thumb_size:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$4(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$5(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$6(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v3, params2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_first:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$7(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_second:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$8(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_third:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$9(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "filterID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "filterID"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$10(Lcom/jellybus/fx/Activity_TimeMatrix;I)V

    .line 141
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v6

    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$11(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$12(Lcom/jellybus/fx/Activity_TimeMatrix;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget v5, v5, Lcom/jellybus/fx_sub/Filter;->startY:I

    invoke-virtual {v6, v5}, Lcom/jellybus/fx_sub/TimeControllView;->setPointY(I)V

    .line 142
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setSingleProcess()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$13(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 143
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setFilterLayout()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$14(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 156
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jellybus/fx_sub/TimeControllView;->invalidate()V

    .line 159
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->empty_view:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$17(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    const/4 v6, 0x1

    #setter for: Lcom/jellybus/fx/Activity_TimeMatrix;->isViewSet:Z
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$18(Lcom/jellybus/fx/Activity_TimeMatrix;Z)V

    .line 161
    return-void

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 148
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-lt v0, v5, :cond_3

    .line 151
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "line"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    iput v6, v5, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    .line 152
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v7

    iget v7, v7, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    invoke-virtual {v6, v7}, Lcom/jellybus/fx_sub/TimeControllView;->setYear(F)I

    move-result v6

    iput v6, v5, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    .line 153
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setProcess()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$16(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 154
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setFilterLayout()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$14(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    goto/16 :goto_0

    .line 149
    :cond_3
    iget-object v5, p0, Lcom/jellybus/fx/Activity_TimeMatrix$1;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v5

    aget v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
