.class public abstract Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
.source "ComponentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">",
        "Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private _footerItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

.field protected _isVisibleOptionsMenuAccountSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_isVisibleOptionsMenuAccountSettings:Z

    return-void
.end method


# virtual methods
.method public getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public hideFooter()V
    .locals 2

    .prologue
    .line 66
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    const v1, 0x7f0c0078

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_footerItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_footerItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_footerItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    const/4 v1, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030032

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->setContentView(IZ)V

    .line 85
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 128
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 129
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "footerItem"

    .prologue
    .line 91
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 95
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 96
    .local v0, baseListAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<TT;>;"
    invoke-virtual {v0, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 97
    .local v6, item:Lcom/scoreloop/client/android/ui/framework/BaseListItem;,"TT;"
    invoke-virtual {v6}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 100
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    .local p1, item:Lcom/scoreloop/client/android/ui/framework/BaseListItem;,"TT;"
    return-void
.end method

.method public onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 144
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c0090

    if-ne v1, v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v1

    const-string v2, "navigation"

    const-string v3, "optionsmenu.account-settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 148
    .local v0, profileSettingsScreenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 149
    const/4 v1, 0x1

    .line 151
    .end local v0           #profileSettingsScreenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 135
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    const v1, 0x7f0c0090

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 137
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_isVisibleOptionsMenuAccountSettings:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 108
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->setOnListItemClickListener(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;)V

    .line 110
    return-void
.end method

.method public setVisibleOptionsMenuAccountSettings(Z)V
    .locals 0
    .parameter "isVisibleOptionsMenuProfileSettings"

    .prologue
    .line 49
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_isVisibleOptionsMenuAccountSettings:Z

    .line 50
    return-void
.end method

.method public showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 4
    .parameter "footerItem"

    .prologue
    .local p0, this:Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;,"Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity<TT;>;"
    const/4 v3, 0x0

    .line 113
    const v2, 0x7f0c0078

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p1, v3, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, footerView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 117
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->_footerItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 118
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .end local v0           #footerView:Landroid/view/View;
    :cond_0
    return-void
.end method
