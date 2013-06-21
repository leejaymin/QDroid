.class Lcom/jellybus/fx/Activity_Filter$4;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 406
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v1, v1, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v1, :cond_0

    .line 408
    new-instance v0, Lcom/jellybus/fx_sub/SQLlite;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-virtual {v0, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 410
    invoke-virtual {v0}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 411
    invoke-virtual {v0}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 412
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 413
    invoke-virtual {v0}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 414
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v1, v1, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 415
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$6(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    .end local v0           #sql:Lcom/jellybus/fx_sub/SQLlite;
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->insertFavorite()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$7(Lcom/jellybus/fx/Activity_Filter;)V

    .line 420
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v1, v1, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v3, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 421
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$6(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$6(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$4;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
