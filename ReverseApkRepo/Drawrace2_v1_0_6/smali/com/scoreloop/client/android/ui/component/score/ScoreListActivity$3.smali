.class Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;
.super Ljava/lang/Object;
.source "ScoreListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->updateScrollPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 322
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$300(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v0

    .line 323
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;>;"
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 325
    .local v1, listView:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 326
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$400(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)I

    move-result v2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getFirstContentPosition()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getVerticalCenterOffset()I
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$500(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v2, v3, :cond_2

    .line 329
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v2, v3, :cond_3

    .line 331
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getFirstContentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$600(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v2, v3, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getLastContentPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
