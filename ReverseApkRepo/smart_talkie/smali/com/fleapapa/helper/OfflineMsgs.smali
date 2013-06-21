.class public Lcom/fleapapa/helper/OfflineMsgs;
.super Landroid/app/Activity;
.source "OfflineMsgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;,
        Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;
    }
.end annotation


# instance fields
.field private final WHO:Ljava/lang/String;

.field adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter",
            "<",
            "Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;",
            ">;"
        }
    .end annotation
.end field

.field lview:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/OfflineMsgs;->WHO:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 33
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fleapapa/helper/OfflineMsgs;->WHO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".onCreate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/OfflineMsgs;->setContentView(I)V

    .line 35
    const v2, 0x7f080111

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/OfflineMsgs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->lview:Landroid/widget/ListView;

    .line 36
    iget-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->lview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;-><init>(Lcom/fleapapa/helper/OfflineMsgs;)V

    iput-object v3, p0, Lcom/fleapapa/helper/OfflineMsgs;->adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 40
    :try_start_0
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 41
    .local v1, omsgs:[Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    new-instance v3, Lcom/fleapapa/helper/OfflineMsgs$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/OfflineMsgs$1;-><init>(Lcom/fleapapa/helper/OfflineMsgs;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 46
    array-length v3, v1

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_0

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->lview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/OfflineMsgs$2;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/OfflineMsgs$2;-><init>(Lcom/fleapapa/helper/OfflineMsgs;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    const v2, 0x7f080110

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/OfflineMsgs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/OfflineMsgs;->adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void

    .line 46
    :cond_0
    :try_start_1
    aget-object v0, v1, v4

    .line 47
    .local v0, om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    invoke-virtual {v0}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    iget-object v5, p0, Lcom/fleapapa/helper/OfflineMsgs;->adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-virtual {v5, v0}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->add(Ljava/lang/Object;)V

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    .end local v0           #om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    .end local v1           #omsgs:[Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 63
    .restart local v1       #omsgs:[Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/OfflineMsgs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method
