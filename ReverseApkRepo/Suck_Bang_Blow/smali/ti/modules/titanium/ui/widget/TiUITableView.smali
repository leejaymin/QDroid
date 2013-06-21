.class public Lti/modules/titanium/ui/widget/TiUITableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TitaniumTableView"


# instance fields
.field protected tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUITableView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 41
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 42
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUITableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    return-object v0
.end method

.method public onClick(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "click"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 49
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 155
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 154
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 150
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 153
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 152
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .parameter "d"

    .prologue
    const/16 v13, 0xb

    const/16 v12, 0x9

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string v11, "filterAttribute"

    .line 84
    new-instance v7, Lti/modules/titanium/ui/widget/tableview/TiTableView;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v8

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v6, Lti/modules/titanium/ui/TableViewProxy;

    invoke-direct {v7, v8, v6}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 85
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 87
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v6, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V

    .line 89
    const-string v6, "search"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 92
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 94
    const-string v6, "search"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 95
    .local v5, searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    .line 96
    .local v4, searchBar:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v4, v6}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    .line 97
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getNativeView()Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 99
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    const-string v6, "height"

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    const-string v6, "height"

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    .line 112
    .local v3, rawHeight:Lorg/appcelerator/titanium/TiDimension;
    :goto_0
    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 114
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .restart local v2       #p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    const/4 v6, 0x3

    const/16 v7, 0x66

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    .line 129
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v4           #searchBar:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .end local v5           #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_1
    const-string v6, "filterAttribute"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v7, "filterAttribute"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    .line 137
    :goto_2
    const/4 v0, 0x1

    .line 138
    .local v0, filterCaseInsensitive:Z
    const-string v6, "filterCaseInsensitive"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    const-string v6, "filterCaseInsensitive"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    .line 141
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v6, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterCaseInsensitive(Z)V

    .line 142
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 143
    return-void

    .line 110
    .end local v0           #filterCaseInsensitive:Z
    .restart local v1       #layout:Landroid/widget/RelativeLayout;
    .restart local v2       #p:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #searchBar:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .restart local v5       #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    const-string v6, "52dp"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v3

    .restart local v3       #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    goto :goto_0

    .line 126
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #rawHeight:Lorg/appcelerator/titanium/TiDimension;
    .end local v4           #searchBar:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;
    .end local v5           #searchView:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiUITableView;->setNativeView(Landroid/view/View;)V

    goto :goto_1

    .line 133
    :cond_3
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "filterAttribute"

    const-string v7, "title"

    invoke-virtual {v6, v11, v7, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 134
    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setFilterAttribute(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 174
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUITableView;->DBG:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "TitaniumTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const-string v0, "separatorColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->release()V

    .line 162
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .line 164
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 167
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUITableView;->nativeView:Landroid/view/View;

    .line 168
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 169
    return-void
.end method

.method public scrollToIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 69
    return-void
.end method

.method public setModelDirty()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->setDirty()V

    .line 54
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITableView;->tableView:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->dataSetChanged()V

    .line 64
    return-void
.end method
