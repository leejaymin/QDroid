.class Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;
.super Ljava/lang/Object;
.source "GameListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onGames(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

.field final synthetic val$adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;Landroid/widget/ListView;Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getFirstContentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getLastContentPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method
