.class public Lcom/trafficStats/test/ApplicationList;
.super Landroid/app/Activity;
.source "ApplicationList.java"


# instance fields
.field listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/trafficStats/test/ApplicationList;->setContentView(I)V

    .line 23
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/trafficStats/test/ApplicationList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 24
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 25
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 26
    const v3, 0x109000f

    .line 25
    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    .local v1, adaptedAppList:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Lcom/trafficStats/test/ApplicationList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/trafficStats/test/ApplicationList;->listView:Landroid/widget/ListView;

    .line 30
    iget-object v3, p0, Lcom/trafficStats/test/ApplicationList;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    iget-object v3, p0, Lcom/trafficStats/test/ApplicationList;->listView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 32
    iget-object v3, p0, Lcom/trafficStats/test/ApplicationList;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/trafficStats/test/ApplicationList$1;

    invoke-direct {v4, p0, v1}, Lcom/trafficStats/test/ApplicationList$1;-><init>(Lcom/trafficStats/test/ApplicationList;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method
