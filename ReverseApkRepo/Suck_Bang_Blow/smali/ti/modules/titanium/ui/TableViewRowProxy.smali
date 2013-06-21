.class public Lti/modules/titanium/ui/TableViewRowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewRowProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TableViewRowProxy"

.field private static final MSG_SET_DATA:I = 0x1b58


# instance fields
.field protected controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 39
    return-void
.end method

.method public static fillClickEvent(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 2
    .parameter "data"
    .parameter "model"
    .parameter "item"

    .prologue
    .line 147
    const-string v0, "rowData"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->rowData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "section"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->sectionIndex:I

    invoke-virtual {p1, v1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getSection(I)Lti/modules/titanium/ui/TableViewSectionProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "row"

    iget-object v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "index"

    iget v1, p2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "detail"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "control"

    .prologue
    .line 73
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    .line 76
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 78
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 80
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 82
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 3
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 156
    const-string v2, "click"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v1

    .line 159
    .local v1, table:Lti/modules/titanium/ui/TableViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v0

    .line 160
    .local v0, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUITableView;->getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 164
    .end local v0           #item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .end local v1           #table:Lti/modules/titanium/ui/TableViewProxy;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v2

    return v2
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object p0
.end method

.method public getControls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTable()Lti/modules/titanium/ui/TableViewProxy;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 102
    .local v0, parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    instance-of v1, v0, Lti/modules/titanium/ui/TableViewProxy;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/TableViewProxy;

    .end local v0           #parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    return-object v0
.end method

.method public getTableViewRowProxyItem()Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "options"

    .prologue
    const-string v4, "selectedBackgroundImage"

    const-string v3, "selectedBackgroundColor"

    const-string v2, "TableViewRowProxy"

    .line 43
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 44
    const-string v0, "selectedBackgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "TableViewRowProxy"

    const-string v0, "selectedBackgroundColor is deprecated, use backgroundSelectedColor instead"

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "backgroundSelectedColor"

    const-string v1, "selectedBackgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    const-string v0, "selectedBackgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "TableViewRowProxy"

    const-string v0, "selectedBackgroundImage is deprecated, use backgroundSelectedImage instead"

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "backgroundSelectedImage"

    const-string v1, "selectedBackgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1b58

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasControls()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 180
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->release()V

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 184
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 186
    .local v0, control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 189
    .end local v0           #control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "control"

    .prologue
    .line 86
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "scope"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const-string v1, "TableViewRowProxy"

    .line 111
    const-string v0, "selectedBackgroundColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "TableViewRowProxy"

    const-string v0, "selectedBackgroundColor is deprecated, use backgroundSelectedColor instead"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "backgroundSelectedColor"

    invoke-super {p0, p1, v0, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "selectedBackgroundImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "TableViewRowProxy"

    const-string v0, "selectedBackgroundImage is deprecated, use backgroundSelectedImage instead"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "backgroundSelectedImage"

    invoke-super {p0, p1, v0, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLabelsClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 168
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewRowProxy;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 170
    .local v0, control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/LabelProxy;

    if-eqz v2, :cond_0

    .line 171
    check-cast v0, Lti/modules/titanium/ui/LabelProxy;

    .end local v0           #control:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/LabelProxy;->setClickable(Z)V

    goto :goto_0

    .line 175
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .parameter "fireChange"

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 125
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TableViewRowProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 97
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewRowProxy;->tableViewItem:Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;

    .line 98
    return-void
.end method
