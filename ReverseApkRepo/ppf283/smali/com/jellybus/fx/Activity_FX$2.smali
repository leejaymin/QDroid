.class Lcom/jellybus/fx/Activity_FX$2;
.super Ljava/lang/Object;
.source "Activity_FX.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_FX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_FX;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 561
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 562
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$1(Lcom/jellybus/fx/Activity_FX;)V

    .line 564
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 567
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeAdapterBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$3(Lcom/jellybus/fx/Activity_FX;)V

    .line 569
    const/4 v0, 0x0

    .line 571
    .local v0, filterID:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 583
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 584
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jellybus/fx/Activity_Filter;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .local v2, intent_filter:Landroid/content/Intent;
    const-string v3, "filterID"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v3, v2}, Lcom/jellybus/fx/Activity_FX;->startActivity(Landroid/content/Intent;)V

    .line 587
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_FX;->finish()V

    .line 588
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    const/high16 v4, 0x10a

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx/Activity_FX;->overridePendingTransition(II)V

    .line 589
    return-void

    .line 572
    .end local v2           #intent_filter:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX$2;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    add-int v0, v1, p3

    .line 574
    goto :goto_1

    .line 571
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
