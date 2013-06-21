.class public Lcom/fleapapa/helper/CallLogs;
.super Landroid/app/Activity;
.source "CallLogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallLogs$Clog;,
        Lcom/fleapapa/helper/CallLogs$LogAdapter;
    }
.end annotation


# static fields
.field static dirty:Z


# instance fields
.field private final WHO:Ljava/lang/String;

.field adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/CallLogs$LogAdapter",
            "<",
            "Lcom/fleapapa/helper/CallLogs$Clog;",
            ">;"
        }
    .end annotation
.end field

.field clist:Landroid/widget/ListView;

.field clogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fleapapa/helper/CallLogs$Clog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallLogs;->WHO:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method getCallLogs()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-boolean v0, Lcom/fleapapa/helper/CallLogs;->dirty:Z

    .line 93
    invoke-static {v0}, Lcom/fleapapa/helper/CallPapa;->myCallLogPath(Z)Ljava/io/File;

    move-result-object v7

    .line 94
    .local v7, logPath:Ljava/io/File;
    if-nez v7, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 96
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallLogs;->layoutCallLogs()V

    .line 97
    :cond_2
    if-eqz v3, :cond_0

    .line 99
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 100
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 101
    .local v4, handler:Landroid/os/Handler;
    new-instance v6, Lcom/fleapapa/helper/CallLogs$3;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/CallLogs$3;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    .line 107
    .local v6, last:Ljava/lang/Runnable;
    new-instance v5, Lcom/fleapapa/helper/CallLogs$4;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/CallLogs$4;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    .line 114
    .local v5, each:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/CallLogs$5;

    const-string v2, "CallLogs.getCallLogs"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fleapapa/helper/CallLogs$5;-><init>(Lcom/fleapapa/helper/CallLogs;Ljava/lang/String;[Ljava/io/File;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallLogs$5;->start()V

    goto :goto_0
.end method

.method layoutCallLogs()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v5, [Lcom/fleapapa/helper/CallLogs$Clog;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fleapapa/helper/CallLogs$Clog;

    .line 134
    .local v1, logs:[Lcom/fleapapa/helper/CallLogs$Clog;
    new-instance v2, Lcom/fleapapa/helper/CallLogs$6;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallLogs$6;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 139
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->clear()V

    .line 140
    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    .line 143
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallLogs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void

    .line 140
    :cond_0
    aget-object v0, v1, v3

    .line 141
    .local v0, c:Lcom/fleapapa/helper/CallLogs$Clog;
    iget-object v4, p0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v4, v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->add(Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0           #c:Lcom/fleapapa/helper/CallLogs$Clog;
    :cond_1
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallLogs;->requestWindowFeature(I)Z

    .line 41
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallLogs;->setContentView(I)V

    .line 42
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fleapapa/helper/CallLogs;->clist:Landroid/widget/ListView;

    .line 43
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs;->clist:Landroid/widget/ListView;

    new-instance v1, Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    iput-object v1, p0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/helper/CallLogs;->dirty:Z

    .line 47
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs;->clist:Landroid/widget/ListView;

    new-instance v1, Lcom/fleapapa/helper/CallLogs$1;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallLogs$1;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/fleapapa/helper/CallLogs$2;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallLogs$2;-><init>(Lcom/fleapapa/helper/CallLogs;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 86
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallLogs;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".onDestroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallLogs$Clog;

    .line 88
    .local v0, log:Lcom/fleapapa/helper/CallLogs$Clog;
    iget-object v2, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 68
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fleapapa/helper/CallLogs;->WHO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".onResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    sget-object v2, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/app/TabActivity;->setTitle(I)V

    .line 73
    sget-boolean v2, Lcom/fleapapa/helper/CallLogs;->dirty:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallLogs;->getCallLogs()V

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallLogs;->layoutCallLogs()V

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    .local v0, hasOffMsg:Z
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallLogs;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    return-void

    .line 79
    .restart local p0
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 80
    .local v1, om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    invoke-virtual {v1}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-boolean v3, v1, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->shown:Z

    if-nez v3, :cond_2

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1           #om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    .end local p0
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method
