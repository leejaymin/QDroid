.class public Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
.super Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
.source "PagingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">",
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final _listOffset:I

.field private _nextPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

.field private _pagingFlags:I

.field private _prevPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

.field private _topPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 43
    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "listOffset"

    .prologue
    .line 47
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 48
    iput p2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    .line 49
    return-void
.end method

.method private getNextPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 3

    .prologue
    .line 92
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_nextPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_nextPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_nextPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    return-object v0
.end method

.method private getPrevPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 3

    .prologue
    .line 99
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_prevPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_prevPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_prevPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    return-object v0
.end method

.method private getTopPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 3

    .prologue
    .line 106
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_topPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_topPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_topPagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    return-object v0
.end method


# virtual methods
.method public addPagingItems(ZZZ)V
    .locals 2
    .parameter "showTop"
    .parameter "showPrev"
    .parameter "showNext"

    .prologue
    .line 52
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getTopPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v0

    iget v1, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->insert(Ljava/lang/Object;I)V

    .line 55
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v1, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->combine(I)I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getPrevPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v1

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->insert(Ljava/lang/Object;I)V

    .line 59
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v1, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->combine(I)I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 61
    :cond_1
    if-eqz p3, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getNextPagingItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v1, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->combine(I)I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    .line 65
    :cond_2
    return-void

    .line 58
    :cond_3
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    goto :goto_0
.end method

.method public getContentItem(I)Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getFirstContentPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method public getFirstContentPosition()I
    .locals 3

    .prologue
    .line 73
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listOffset:I

    .line 74
    .local v0, offset:I
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->isPresentIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_0
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->isPresentIn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_1
    return v0
.end method

.method public getLastContentPosition()I
    .locals 3

    .prologue
    .line 84
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 85
    .local v0, offset:I
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    iget v2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_pagingFlags:I

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->isPresentIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    add-int/lit8 v0, v0, -0x1

    .line 88
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 114
    .local p0, this:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<TT;>;"
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {p0, p3}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 117
    .local v0, item:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 118
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;

    .local v2, pagingListener:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener<*>;"
    move-object v1, v0

    .line 119
    check-cast v1, Lcom/scoreloop/client/android/ui/framework/PagingListItem;

    .line 121
    .local v1, pagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/PagingListItem;->getPagingDirection()Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;->onPagingListItemClick(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 126
    .end local v0           #item:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .end local v1           #pagingItem:Lcom/scoreloop/client/android/ui/framework/PagingListItem;
    .end local v2           #pagingListener:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener<*>;"
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v0       #item:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    :cond_1
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->_listItemClickListener:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;

    invoke-interface {v3, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;->onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    goto :goto_0
.end method
