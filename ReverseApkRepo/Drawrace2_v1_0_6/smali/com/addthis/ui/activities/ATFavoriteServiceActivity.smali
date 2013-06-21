.class public Lcom/addthis/ui/activities/ATFavoriteServiceActivity;
.super Lcom/addthis/ui/activities/ATBaseServiceListActivity;
.source "ATFavoriteServiceActivity.java"

# interfaces
.implements Lcom/addthis/ui/views/ATActionBarListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Favorite listview"


# instance fields
.field private favoriteDbChanged:Landroid/content/BroadcastReceiver;

.field private mInfoText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity$1;-><init>(Lcom/addthis/ui/activities/ATFavoriteServiceActivity;)V

    iput-object v0, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->favoriteDbChanged:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/ui/activities/ATFavoriteServiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->fetchServiceList()V

    return-void
.end method

.method private changeToEditingMode()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    .line 200
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 202
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    const-string v3, "id"

    const-string v4, "actionbar"

    invoke-static {p0, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 201
    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 203
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/addthis/ui/activities/ATActivityGroup;->setOnEditingMode(Z)V

    .line 204
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->showEditView(Landroid/content/Context;)V

    .line 207
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    const-string v4, "string"

    const-string v5, "editview_info_text"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    const-string v4, "color"

    const-string v5, "info_bg_color"

    invoke-static {p0, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 211
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "color"

    const-string v6, "info_text_color"

    invoke-static {p0, v5, v6}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/addthis/core/Config;->getInfoViewFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 216
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const-string v3, "id"

    const-string v4, "favlistplaceholder"

    invoke-static {p0, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 218
    .local v2, vlayout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    .end local v2           #vlayout:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method private changeToSharingMode()V
    .locals 4

    .prologue
    .line 184
    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mInfoText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 189
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    const-string v2, "id"

    const-string v3, "actionbar"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 188
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 190
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->showShareView(Landroid/content/Context;)V

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/addthis/ui/activities/ATActivityGroup;->setOnEditingMode(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method private fetchServiceList()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;

    invoke-direct {v0, p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;-><init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method private showAllServicesView()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 142
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATActivityGroup;->showView(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public actionItemClicked(Lcom/addthis/ui/views/ATActionBar;I)V
    .locals 3
    .parameter "bar"
    .parameter "index"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 148
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    if-nez p2, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->changeToSharingMode()V

    .line 152
    iget-object v1, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->updateListView(Lcom/addthis/models/ATServiceList;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->exit()V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 159
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->showAllServicesView()V

    goto :goto_0

    .line 167
    :cond_3
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->changeToEditingMode()V

    .line 168
    iget-object v1, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, v1}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->updateListView(Lcom/addthis/models/ATServiceList;)V

    goto :goto_0

    .line 171
    :cond_4
    const-string v1, "id"

    const-string v2, "textLabel"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 239
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 244
    .local v2, id:J
    iget-object v7, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    long-to-int v8, v2

    invoke-virtual {v7, v8}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/addthis/models/ATService;

    .line 245
    .local v5, service:Lcom/addthis/models/ATService;
    const-string v7, "Favorite listview"

    invoke-virtual {v5}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 248
    .local v0, dataFetcher:Lcom/addthis/data/ATDataFetcher;
    :try_start_1
    invoke-virtual {v5}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/addthis/data/ATDataFetcher;->removeFavoriteService(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    iget-object v6, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    long-to-int v7, v2

    invoke-virtual {v6, v7}, Lcom/addthis/models/ATServiceList;->remove(I)Ljava/lang/Object;

    .line 255
    iget-object v6, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, v6}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->updateListView(Lcom/addthis/models/ATServiceList;)V

    .line 256
    const/4 v6, 0x1

    .end local v0           #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    .end local v2           #id:J
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    .end local v5           #service:Lcom/addthis/models/ATService;
    :goto_0
    return v6

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 249
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    .restart local v2       #id:J
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    .restart local v5       #service:Lcom/addthis/models/ATService;
    :catch_1
    move-exception v1

    .line 250
    .local v1, e:Lcom/addthis/error/ATDatabaseException;
    invoke-virtual {v1}, Lcom/addthis/error/ATDatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->favoriteDbChanged:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    .line 51
    const-string v4, "com.addthis.favtable.intent"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    const-string v2, "id"

    const-string v3, "actionbar"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 56
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/addthis/ui/views/ATActionBar;->setupActionItems(I)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->setActionBarOnClickListener(Lcom/addthis/ui/views/ATActionBarListener;)V

    .line 62
    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    const-string v2, ""

    .line 66
    const-string v3, "string"

    const-string v4, "loading_please_wait_msg"

    invoke-static {p0, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 65
    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iget-object v2, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 68
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->fetchServiceList()V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 71
    .local v1, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->changeToEditingMode()V

    .line 75
    :cond_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 232
    const-string v0, "string"

    const-string v1, "confirm"

    invoke-static {p0, v0, v1}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "string"

    const-string v2, "delete_msg"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 234
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->favoriteDbChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    invoke-super {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->onDestroy()V

    .line 81
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v1, p3}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/models/ATService;

    .line 129
    .local v0, service:Lcom/addthis/models/ATService;
    invoke-virtual {v0}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "more"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->showAllServicesView()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected updateListView(Lcom/addthis/models/ATServiceList;)V
    .locals 8
    .parameter "serviceList"

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 106
    .local v3, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v3}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/addthis/core/Config;->shouldShowMoreServices()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance p1, Lcom/addthis/models/ATServiceList;

    .end local p1
    invoke-direct {p1}, Lcom/addthis/models/ATServiceList;-><init>()V

    .line 109
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 110
    const-string v5, "drawable"

    const-string v6, "addthis_icon"

    invoke-static {p0, v5, v6}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 109
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/addthis/models/ATService;

    const-string v4, "More"

    const-string v5, "more"

    invoke-direct {v2, v4, v5, v7, v0}, Lcom/addthis/models/ATService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 112
    .local v2, more:Lcom/addthis/models/ATService;
    invoke-virtual {p1, v2}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v2           #more:Lcom/addthis/models/ATService;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/addthis/models/ATServiceList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, v4}, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->refreshList(Lcom/addthis/models/ATServiceList;)V

    .line 119
    iget-object v4, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    iput-object v7, p0, Lcom/addthis/ui/activities/ATFavoriteServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    :cond_2
    return-void

    .line 114
    :cond_3
    invoke-virtual {p1}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 115
    .local v1, lastIndex:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {p1, v1}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addthis/models/ATService;

    invoke-virtual {v4}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "more"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {p1, v1}, Lcom/addthis/models/ATServiceList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
