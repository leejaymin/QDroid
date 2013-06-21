.class public Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;
.super Landroid/os/AsyncTask;
.source "ATBaseServiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/activities/ATBaseServiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ATLocalFavServiceListFetch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/addthis/ui/activities/ATBaseServiceListActivity;",
        "Ljava/lang/Void;",
        "Lcom/addthis/models/ATServiceList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/activities/ATBaseServiceListActivity;


# direct methods
.method protected constructor <init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->this$0:Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/addthis/ui/activities/ATBaseServiceListActivity;)Lcom/addthis/models/ATServiceList;
    .locals 6
    .parameter "params"

    .prologue
    .line 158
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    .line 159
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 158
    invoke-direct {v0, v4, v5}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 160
    .local v0, dataFetcher:Lcom/addthis/data/ATDataFetcher;
    iget-object v4, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->this$0:Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    invoke-virtual {v4}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATActivityGroup;

    .line 161
    .local v2, parent:Lcom/addthis/ui/activities/ATActivityGroup;
    const/4 v3, 0x0

    .line 163
    .local v3, serviceList:Lcom/addthis/models/ATServiceList;
    :try_start_0
    invoke-virtual {v2}, Lcom/addthis/ui/activities/ATActivityGroup;->getItem()Lcom/addthis/models/ATShareItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/addthis/data/ATDataFetcher;->getFavoriteServices(Z)Lcom/addthis/models/ATServiceList;
    :try_end_0
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 167
    :goto_0
    return-object v3

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Lcom/addthis/error/ATDatabaseException;
    invoke-virtual {v1}, Lcom/addthis/error/ATDatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->doInBackground([Lcom/addthis/ui/activities/ATBaseServiceListActivity;)Lcom/addthis/models/ATServiceList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/addthis/models/ATServiceList;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->this$0:Lcom/addthis/ui/activities/ATBaseServiceListActivity;

    invoke-virtual {v0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity;->updateListView(Lcom/addthis/models/ATServiceList;)V

    .line 173
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ATLocalFavServiceListFetch;->onPostExecute(Lcom/addthis/models/ATServiceList;)V

    return-void
.end method
