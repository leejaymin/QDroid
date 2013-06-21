.class public Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "NewsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "newsFeed"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    check-cast p1, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;->getItem()Lcom/scoreloop/client/android/core/addon/RSSItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/addon/RSSItem;->getLinkUrlString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 60
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onPause()V

    .line 63
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    const-string v4, "newsFeed"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    .local v0, feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 66
    .local v2, item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/addon/RSSItem;->setHasPersistentReadFlag(Z)V

    goto :goto_0

    .line 69
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    const-string v4, "newsNumberUnreadItems"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 75
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 77
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v4

    const-string v5, "newsFeed"

    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 80
    .local v3, item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    new-instance v4, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;

    invoke-direct {v4, p0, v3}, Lcom/scoreloop/client/android/ui/component/news/NewsListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/addon/RSSItem;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    :cond_0
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    const v5, 0x7f0802e6

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 85
    :cond_1
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 4
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 89
    const-string v0, "newsFeed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method
