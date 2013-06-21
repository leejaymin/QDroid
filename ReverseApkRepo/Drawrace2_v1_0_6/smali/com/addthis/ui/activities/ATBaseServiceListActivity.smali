.class public abstract Lcom/addthis/ui/activities/ATBaseServiceListActivity;
.super Landroid/app/ListActivity;
.source "ATBaseServiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;,
        Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;,
        Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field protected filterText:Landroid/widget/EditText;

.field protected filterTextWatcher:Landroid/text/TextWatcher;

.field protected mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

.field protected mServiceList:Lcom/addthis/models/ATServiceList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/addthis/models/ATServiceList;

    invoke-direct {v0}, Lcom/addthis/models/ATServiceList;-><init>()V

    iput-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    .line 49
    iput-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->filterText:Landroid/widget/EditText;

    .line 50
    iput-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    .line 44
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 116
    const-string v1, "BaseActivity"

    const-string v2, "Back button pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 118
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v1, "layout"

    const-string v2, "atservicelistview"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->setContentView(I)V

    .line 59
    new-instance v1, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    .line 60
    const-string v2, "layout"

    const-string v3, "atlistitem_image_text"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-direct {v1, p0, v2, v3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;-><init>(Landroid/content/Context;ILcom/addthis/models/ATServiceList;)V

    .line 59
    iput-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    .line 61
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 65
    check-cast v0, Lcom/addthis/models/ATServiceList;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->refreshList(Lcom/addthis/models/ATServiceList;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 99
    const-string v2, "BaseActivity"

    const-string v3, "On clicked list item"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 103
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2, p3}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/models/ATService;

    .line 106
    .local v1, service:Lcom/addthis/models/ATService;
    const-string v2, "BaseActivity"

    invoke-virtual {v1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATActivityGroup;->setService(Lcom/addthis/models/ATService;)V

    .line 108
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/addthis/ui/activities/ATActivityGroup;->showView(I)V

    .line 111
    .end local v1           #service:Lcom/addthis/models/ATService;
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    return-object v0
.end method

.method protected refreshList(Lcom/addthis/models/ATServiceList;)V
    .locals 3
    .parameter "serviceList"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v1}, Lcom/addthis/models/ATServiceList;->clear()V

    .line 87
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->notifyDataSetChanged()V

    .line 88
    invoke-virtual {p1}, Lcom/addthis/models/ATServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    iget-object v2, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v1, v2}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->cloneItems(Lcom/addthis/models/ATServiceList;)V

    .line 92
    iget-object v1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mAdapater:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->notifyDataSetChanged()V

    .line 95
    return-void

    .line 88
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/models/ATService;

    .line 89
    .local v0, gi:Lcom/addthis/models/ATService;
    iget-object v2, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2, v0}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract updateListView(Lcom/addthis/models/ATServiceList;)V
.end method
