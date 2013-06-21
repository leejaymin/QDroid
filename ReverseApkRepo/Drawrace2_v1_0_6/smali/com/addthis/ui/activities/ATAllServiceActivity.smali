.class public Lcom/addthis/ui/activities/ATAllServiceActivity;
.super Lcom/addthis/ui/activities/ATBaseServiceListActivity;
.source "ATAllServiceActivity.java"

# interfaces
.implements Lcom/addthis/ui/views/ATActionBarListener;
.implements Lcom/addthis/webservices/ATWebserviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "All Service listview"


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionItemClicked(Lcom/addthis/ui/views/ATActionBar;I)V
    .locals 3
    .parameter "bar"
    .parameter "index"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATAllServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 138
    .local v0, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    if-nez p2, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->exit()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v1, "id"

    const-string v2, "textLabel"

    invoke-static {p0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    goto :goto_0
.end method

.method public didFinishWebserviceCall()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "All Service listview"

    const-string v1, "Webservice finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;

    invoke-direct {v0, p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;-><init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method public didStartWebserviceCall()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "All Service listview"

    const-string v1, "Webservice started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v2, "id"

    const-string v3, "actionbar"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 48
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATAllServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/views/ATActionBar;

    .line 50
    .local v0, bar:Lcom/addthis/ui/views/ATActionBar;
    invoke-virtual {v0, v5}, Lcom/addthis/ui/views/ATActionBar;->setupActionItems(I)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/addthis/ui/views/ATActionBar;->setActionBarOnClickListener(Lcom/addthis/ui/views/ATActionBarListener;)V

    .line 55
    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v2}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 56
    :cond_0
    new-instance v2, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;

    invoke-direct {v2, p0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;-><init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity;)V

    new-array v3, v5, [Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalServiceListFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    const-string v2, ""

    .line 59
    const-string v3, "string"

    const-string v4, "loading_please_wait_msg"

    invoke-static {p0, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATAllServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 60
    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 64
    :cond_1
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterText:Landroid/widget/EditText;

    .line 66
    const-string v2, "id"

    const-string v3, "favlistplaceholder"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/addthis/ui/activities/ATAllServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 67
    .local v1, vlayout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterText:Landroid/widget/EditText;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 68
    const/4 v4, -0x1

    .line 69
    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 115
    const-string v3, "All Service listview"

    const-string v4, "Item selected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATAllServiceActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 117
    .local v2, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->onEditingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 122
    .local v0, dataFetcher:Lcom/addthis/data/ATDataFetcher;
    :try_start_0
    iget-object v3, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mServiceList:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v3, p3}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/addthis/models/ATService;

    invoke-virtual {v3}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/addthis/data/ATDataFetcher;->insertToFavoriteService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.addthis.favtable.intent"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/addthis/ui/activities/ATAllServiceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V
    :try_end_0
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0           #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0       #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Lcom/addthis/error/ATDatabaseException;
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    .line 128
    invoke-virtual {v1}, Lcom/addthis/error/ATDatabaseException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0           #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    .end local v1           #e:Lcom/addthis/error/ATDatabaseException;
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected updateListView(Lcom/addthis/models/ATServiceList;)V
    .locals 3
    .parameter "serviceList"

    .prologue
    .line 78
    const-string v1, "All Service listview"

    const-string v2, "Updating the list view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    invoke-direct {v0, p0, p0}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 81
    .local v0, dataFetcher:Lcom/addthis/data/ATDataFetcher;
    invoke-virtual {v0}, Lcom/addthis/data/ATDataFetcher;->startAsyncServiceFetch()V

    .line 112
    .end local v0           #dataFetcher:Lcom/addthis/data/ATDataFetcher;
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATAllServiceActivity;->refreshList(Lcom/addthis/models/ATServiceList;)V

    .line 86
    iget-object v1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    :cond_1
    new-instance v1, Lcom/addthis/ui/activities/ATAllServiceActivity$1;

    invoke-direct {v1, p0}, Lcom/addthis/ui/activities/ATAllServiceActivity$1;-><init>(Lcom/addthis/ui/activities/ATAllServiceActivity;)V

    iput-object v1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 109
    iget-object v1, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/addthis/ui/activities/ATAllServiceActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
