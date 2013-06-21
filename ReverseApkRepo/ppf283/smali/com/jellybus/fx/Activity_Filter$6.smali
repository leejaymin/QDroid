.class Lcom/jellybus/fx/Activity_Filter$6;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_title_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$23(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$24(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget v0, v0, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_text_title_group:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$25(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$6;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 535
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 531
    return-void
.end method
