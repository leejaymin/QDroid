.class Lcom/jellybus/fx/Activity_FX$4;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 624
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 625
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 626
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeBitmap()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$1(Lcom/jellybus/fx/Activity_FX;)V

    .line 628
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 631
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeAdapterBitmap()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$3(Lcom/jellybus/fx/Activity_FX;)V

    .line 633
    const/4 v0, 0x0

    .line 635
    .local v0, filterID:I
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$18(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 637
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 638
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jellybus/fx/Activity_Filter;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    .local v1, intent_filter:Landroid/content/Intent;
    const-string v2, "filterID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v2, "menu"

    const-string v3, "History"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v2, "list"

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    const/4 v4, 0x0

    #calls: Lcom/jellybus/fx/Activity_FX;->getList(Z)[I
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_FX;->access$17(Lcom/jellybus/fx/Activity_FX;Z)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 642
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v2, v1}, Lcom/jellybus/fx/Activity_FX;->startActivity(Landroid/content/Intent;)V

    .line 643
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_FX;->finish()V

    .line 644
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$4;->this$0:Lcom/jellybus/fx/Activity_FX;

    const/high16 v3, 0x10a

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Lcom/jellybus/fx/Activity_FX;->overridePendingTransition(II)V

    .line 645
    return-void
.end method
