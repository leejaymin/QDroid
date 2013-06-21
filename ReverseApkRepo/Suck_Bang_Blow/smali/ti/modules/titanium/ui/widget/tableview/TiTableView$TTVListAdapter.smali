.class Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TiTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TTVListAdapter"
.end annotation


# instance fields
.field private filtered:Z

.field index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

.field viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V
    .locals 2
    .parameter
    .parameter "viewModel"

    .prologue
    .line 78
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getRowCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 82
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 141
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 156
    .local v0, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, -0x1

    const-string v11, "__normal__"

    const-string v10, "__header__"

    const-string v8, "__default__"

    .line 161
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 162
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v4, 0x0

    .line 164
    .local v4, v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    if-eqz p2, :cond_1

    .line 165
    move-object v0, p2

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    move-object v4, v0

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, sameView:Z
    iget-object v5, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v5, v5, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v5, :cond_0

    .line 169
    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 170
    .local v2, row:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 174
    .end local v2           #row:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    if-nez v3, :cond_1

    .line 175
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__default__"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v5

    if-eq v5, v1, :cond_1

    .line 177
    const/4 v4, 0x0

    .line 188
    .end local v3           #sameView:Z
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 189
    iget-object v5, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v6, "__header__"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewHeaderItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 191
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v5, "__header__"

    invoke-virtual {v4, v10}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    .line 202
    :goto_1
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_2
    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 206
    return-object v4

    .line 181
    .restart local v3       #sameView:Z
    :cond_3
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    const-string v5, "TiTableView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handed a view to convert with className "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v4, 0x0

    goto :goto_0

    .line 192
    .end local v3           #sameView:Z
    :cond_4
    iget-object v5, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v6, "__normal__"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 194
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v5, "__normal__"

    invoke-virtual {v4, v11}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_5
    iget-object v5, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v6, "__default__"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 196
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 197
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    const-string v5, "__default__"

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_6
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .end local v4           #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 200
    .restart local v4       #v:Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    iget-object v5, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->setClassName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x20

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 217
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    const/4 v0, 0x1

    .line 218
    .local v0, enabled:Z
    if-eqz v1, :cond_0

    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    const-string v3, "__header__"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :cond_0
    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->reIndexItems()V

    .line 232
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 233
    return-void
.end method

.method public reIndexItems()V
    .locals 9

    .prologue
    .line 94
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v4

    .line 95
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, count:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v7, 0x0

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 99
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 100
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->filtered:Z

    .line 101
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, filter:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 106
    const/4 v5, 0x1

    .line 107
    .local v5, keep:Z
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 108
    .local v3, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 109
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;
    invoke-static {v8}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, t:Ljava/lang/String;
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z
    invoke-static {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 114
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    .line 115
    const/4 v5, 0x0

    .line 118
    .end local v6           #t:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 119
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v5           #keep:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 124
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 125
    .restart local v3       #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    iget-object v7, v3, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->className:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->registerClassName(Ljava/lang/String;)V

    .line 126
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v3           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    :cond_5
    return-void
.end method

.method protected registerClassName(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "TiTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registering new className "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    #getter for: Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    return-void
.end method
