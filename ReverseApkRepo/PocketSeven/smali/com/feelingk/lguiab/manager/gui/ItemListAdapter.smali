.class public Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/manager/gui/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public addItem(Lcom/feelingk/lguiab/manager/gui/ListItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;

    iget-object v4, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-direct {v1, v4, v3}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;-><init>(Landroid/content/Context;Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    .line 68
    .local v1, pv:Lcom/feelingk/lguiab/manager/gui/PurchaseListView;
    :goto_0
    return-object v1

    .line 48
    .end local v1           #pv:Lcom/feelingk/lguiab/manager/gui/PurchaseListView;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v6}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v6}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v6}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v6}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, regDate:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, endDate:Ljava/lang/String;
    move-object v1, p2

    .line 61
    check-cast v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;

    .line 62
    .restart local v1       #pv:Lcom/feelingk/lguiab/manager/gui/PurchaseListView;
    invoke-virtual {v1, v6, v2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setText(ILjava/lang/String;)V

    .line 63
    invoke-virtual {v1, v7, v0}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setText(ILjava/lang/String;)V

    .line 64
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setText(ILjava/lang/String;)V

    .line 65
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setText(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
