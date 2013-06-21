.class Lcom/jellybus/fx/Activity_TimeMatrix$4;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    .line 281
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    const/4 v2, 0x1

    #setter for: Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$23(Lcom/jellybus/fx/Activity_TimeMatrix;Z)V

    .line 285
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$11(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 293
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setProcess()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$16(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 294
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #setter for: Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$23(Lcom/jellybus/fx/Activity_TimeMatrix;Z)V

    .line 296
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->setFilterLayout()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$14(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 299
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$5(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$5(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$6(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$11(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->startY:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v2

    iget v2, v2, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v1

    iget v2, v1, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$11(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->endY:I

    if-gt v2, v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$4;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
