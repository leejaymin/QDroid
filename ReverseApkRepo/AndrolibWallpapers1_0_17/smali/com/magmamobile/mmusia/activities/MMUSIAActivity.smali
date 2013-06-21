.class public Lcom/magmamobile/mmusia/activities/MMUSIAActivity;
.super Landroid/app/Activity;
.source "MMUSIAActivity.java"


# instance fields
.field private final MENU_MMUSIA_QUIT:I

.field private final MENU_MMUSIA_REFRESH:I

.field private final MENU_MMUSIA_SETTINGS:I

.field private final MSG_CHANGE_MESSAGE:I

.field private final MSG_CLOSE:I

.field private final MSG_LOADJSONFINISH:I

.field private final MSG_OPEN:I

.field private final MSG_TOAST:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mListAppUpdate:Landroid/widget/ListView;

.field private mListNewsList:Landroid/widget/ListView;

.field private mTabs:Landroid/widget/TabHost;

.field messageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MENU_MMUSIA_SETTINGS:I

    .line 35
    iput v2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MENU_MMUSIA_REFRESH:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MENU_MMUSIA_QUIT:I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MSG_OPEN:I

    .line 236
    iput v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MSG_CLOSE:I

    .line 237
    iput v2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MSG_CHANGE_MESSAGE:I

    .line 238
    const/4 v0, 0x4

    iput v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MSG_TOAST:I

    .line 239
    const/4 v0, 0x5

    iput v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->MSG_LOADJSONFINISH:I

    .line 243
    new-instance v0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;

    invoke-direct {v0, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)V

    iput-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListNewsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListAppUpdate:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public displayNews()V
    .locals 5

    .prologue
    .line 176
    :try_start_0
    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v3, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->news:[Lcom/magmamobile/mmusia/parser/data/ItemNews;

    if-nez v3, :cond_0

    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/magmamobile/mmusia/parser/data/ItemNews;

    iput-object v4, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->news:[Lcom/magmamobile/mmusia/parser/data/ItemNews;

    .line 177
    :cond_0
    new-instance v1, Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;

    invoke-direct {v1, p0}, Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;-><init>(Landroid/content/Context;)V

    .line 178
    .local v1, newsAdp:Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;
    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v3, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->news:[Lcom/magmamobile/mmusia/parser/data/ItemNews;

    invoke-virtual {v1, v3}, Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;->setData([Lcom/magmamobile/mmusia/parser/data/ItemNews;)V

    .line 179
    iget-object v3, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListNewsList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #newsAdp:Lcom/magmamobile/mmusia/adapters/NewsListAdapterEx;
    :goto_0
    :try_start_1
    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v3, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->updates:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    if-nez v3, :cond_1

    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    iput-object v4, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->updates:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    .line 187
    :cond_1
    new-instance v2, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;

    invoke-direct {v2, p0}, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;-><init>(Landroid/content/Context;)V

    .line 188
    .local v2, updAdp:Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;
    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v3, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->updates:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    invoke-virtual {v2, v3}, Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;->setData([Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;)V

    .line 189
    iget-object v3, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListAppUpdate:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v2           #updAdp:Lcom/magmamobile/mmusia/adapters/UpdatesListAdapterEx;
    :goto_1
    :try_start_2
    sget-object v3, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v3, v3, Lcom/magmamobile/mmusia/parser/data/ApiBase;->updates:[Lcom/magmamobile/mmusia/parser/data/ItemAppUpdate;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    :cond_2
    :goto_2
    return-void

    .line 180
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 182
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 192
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 202
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public lNews(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "nid"

    .prologue
    .line 151
    new-instance v0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;I)V

    .line 152
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method public lUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "pname"

    .prologue
    .line 156
    new-instance v0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method public loadNews(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    new-instance v0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;)V

    .line 163
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method public loadNewsThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    invoke-static {p1, v2}, Lcom/magmamobile/mmusia/MMUSIA;->getLatestNews(Landroid/content/Context;Z)V

    .line 169
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->messageHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/16 v10, 0x18

    const-string v11, "tab_main_channel"

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->reloadIfNeeded()V

    .line 45
    :try_start_0
    sget v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_DRAWABLE_ICONAPP:I

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "icon"

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_DRAWABLE_ICONAPP:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 56
    .local v2, extras:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->useDpi(Landroid/content/Context;)V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDensity(Landroid/content/Context;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/magmamobile/mmusia/MCommon;->Log_d(Ljava/lang/String;)V

    .line 58
    new-instance v4, Lcom/magmamobile/mmusia/views/MainView;

    invoke-direct {v4, p0}, Lcom/magmamobile/mmusia/views/MainView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->setContentView(Landroid/view/View;)V

    .line 60
    sget v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_APPUPDATE:I

    invoke-virtual {p0, v4}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListAppUpdate:Landroid/widget/ListView;

    .line 61
    sget v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_NEWSLIST:I

    invoke-virtual {p0, v4}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListNewsList:Landroid/widget/ListView;

    .line 63
    sget v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_MAINTAB:I

    invoke-virtual {p0, v4}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    .line 64
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v4, v12}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 65
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 68
    :try_start_1
    sget v4, Lcom/magmamobile/mmusia/MMUSIA;->RES_DRAWABLE_ICONAPP:I

    if-nez v4, :cond_2

    .line 70
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const-string v6, "tab_main_channel"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget-object v6, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_UPDATES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget v6, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_UPDATE:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const-string v6, "tab_main_last"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget-object v6, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_NEWS:Ljava/lang/String;

    const-string v7, "mmusiaicon.png"

    invoke-static {p0, v7}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0x4b

    invoke-static {v8}, Lcom/magmamobile/mmusia/MCommon;->dpiImage(I)I

    move-result v8

    invoke-static {v10}, Lcom/magmamobile/mmusia/MCommon;->dpiImage(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawableResize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget v6, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_NEWS:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 81
    if-eqz v2, :cond_1

    .line 83
    const-string v4, "tab"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, selectedTab:Ljava/lang/String;
    const-string v4, "news"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 92
    .end local v3           #selectedTab:Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v4, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    if-eqz v4, :cond_5

    .line 94
    sget-object v4, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget-object v4, v4, Lcom/magmamobile/mmusia/parser/data/ApiBase;->news:[Lcom/magmamobile/mmusia/parser/data/ItemNews;

    array-length v4, v4

    if-nez v4, :cond_4

    .line 97
    invoke-virtual {p0, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->loadNews(Landroid/content/Context;)V

    .line 125
    :goto_3
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListNewsList:Landroid/widget/ListView;

    new-instance v5, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;

    invoke-direct {v5, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$2;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mListAppUpdate:Landroid/widget/ListView;

    new-instance v5, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;

    invoke-direct {v5, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$3;-><init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void

    .line 49
    .end local v2           #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 50
    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "TRIED TO RELOAD ICON APP ID WITHOUT SUCCESS !!!"

    invoke-static {v4}, Lcom/magmamobile/mmusia/MCommon;->Log_e(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 72
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const-string v6, "tab_main_channel"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget-object v6, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_UPDATES:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/magmamobile/mmusia/MMUSIA;->RES_DRAWABLE_ICONAPP:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0x18

    invoke-static {v8}, Lcom/magmamobile/mmusia/MCommon;->dpiImage(I)I

    move-result v8

    const/16 v9, 0x18

    invoke-static {v9}, Lcom/magmamobile/mmusia/MCommon;->dpiImage(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawableResize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget v6, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_UPDATE:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 74
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 75
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "OULALA ICON INTROUVABLE !!!"

    invoke-static {v4}, Lcom/magmamobile/mmusia/MCommon;->Log_e(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    const-string v6, "tab_main_channel"

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget-object v6, Lcom/magmamobile/mmusia/data/LanguageBase;->TAB_UPDATES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    sget v6, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_UPDATE:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 88
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #selectedTab:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v4, v12}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_2

    .line 99
    .end local v3           #selectedTab:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->displayNews()V

    goto/16 :goto_3

    .line 103
    :cond_5
    invoke-virtual {p0, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->loadNews(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    sget-object v0, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_SETTINGS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "mmusiasettings.png"

    invoke-static {p0, v1}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 209
    const/4 v0, 0x2

    sget-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_REFRESH:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "mmusiarefresh.png"

    invoke-static {p0, v1}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 210
    const/4 v0, 0x3

    sget-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->MENU_QUIT:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "mmusiaexit.png"

    invoke-static {p0, v1}, Lcom/magmamobile/mmusia/MCommon;->getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 211
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 220
    :pswitch_0
    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->showPrefs(Landroid/content/Context;)V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p0, p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->loadNews(Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->finish()V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
