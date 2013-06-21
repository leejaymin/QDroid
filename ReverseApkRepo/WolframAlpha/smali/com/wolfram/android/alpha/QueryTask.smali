.class public Lcom/wolfram/android/alpha/QueryTask;
.super Landroid/os/AsyncTask;
.source "QueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/QueryTask$ParamComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/wolfram/alpha/WAQuery;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_ASYNC_DONE:Ljava/lang/Integer;

.field private static final PROGRESS_IMAGES_DONE:Ljava/lang/Integer;

.field private static final PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

.field private static final PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private FadeOut:Landroid/view/animation/Animation;

.field private IsToggleView_OFF:I

.field private IsToggleView_ON:I

.field private volatile OldqueryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private UIhandler:Landroid/os/Handler;

.field private adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

.field private app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

.field private communicating_bar_view:Landroid/view/View;

.field private computing_bar_view:Landroid/view/View;

.field private conn_compu_commu_label:Landroid/widget/TextView;

.field private connecting_bar_view:Landroid/view/View;

.field private cp:Landroid/view/View;

.field private displayWidth:I

.field private input:Ljava/lang/String;

.field private isBannerPodStateChange:Z

.field private isPodStateChange:Z

.field private volatile isProgress_QueryResult_Done:Z

.field private isTryAgain:Z

.field private oldDownloadsToDelete:[Ljava/io/File;

.field private volatile ping_thread:Ljava/lang/Thread;

.field private podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

.field private query:Lcom/wolfram/alpha/WAQuery;

.field private queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

.field private volatile queryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private queryResultsView:Landroid/widget/ListView;

.field private runnable_communicating:Ljava/lang/Runnable;

.field private runnable_computing:Ljava/lang/Runnable;

.field private runnable_connecting:Ljava/lang/Runnable;

.field private runnable_fadeout:Ljava/lang/Runnable;

.field private runnable_ping:Ljava/lang/Runnable;

.field private volatile wasCancelled:Z

.field private volatile wasStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    .line 94
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_IMAGES_DONE:Ljava/lang/Integer;

    .line 95
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

    .line 96
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_ASYNC_DONE:Ljava/lang/Integer;

    .line 98
    const-string v0, "com.wolfram.android.alpha.QueryTask"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/QueryTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wolfram/android/alpha/view/QueryInputView;Landroid/widget/ListView;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
    .locals 4
    .parameter "input"
    .parameter "queryInputView"
    .parameter "queryResultsView"
    .parameter "podStateButtonData"
    .parameter "isTryAgain"

    .prologue
    const/16 v0, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput v0, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_OFF:I

    .line 69
    iput v0, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_ON:I

    .line 78
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/QueryTask;->isProgress_QueryResult_Done:Z

    .line 88
    new-array v0, v2, [Ljava/io/File;

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->oldDownloadsToDelete:[Ljava/io/File;

    .line 90
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    .line 91
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/QueryTask;->wasStopped:Z

    .line 102
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    .line 103
    iput-object p2, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 104
    iput-object p3, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    .line 105
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->input:Ljava/lang/String;

    .line 106
    invoke-virtual {p3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    .line 107
    invoke-virtual {p3}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wolfram/android/alpha/QueryTask;->displayWidth:I

    .line 108
    iput-object p4, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    .line 109
    if-eqz p4, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    .line 110
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setPodStateChange(Z)V

    .line 111
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/wolfram/android/alpha/PodStateButtonData;->podID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isBannerPodStateChange:Z

    .line 112
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->OldqueryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 113
    iput-boolean p5, p0, Lcom/wolfram/android/alpha/QueryTask;->isTryAgain:Z

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->FadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->FadeOut:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/wolfram/android/alpha/QueryTask;->stop_Thread_Safe()V

    return-void
.end method

.method static synthetic access$1200(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_computing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_communicating:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wolfram/android/alpha/QueryTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/wolfram/android/alpha/QueryTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/wolfram/android/alpha/QueryTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/wolfram/android/alpha/QueryTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isBannerPodStateChange:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/wolfram/android/alpha/QueryTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/alpha/WAQueryResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->OldqueryResult:Lcom/wolfram/alpha/WAQueryResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->cp:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wolfram/android/alpha/QueryTask;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wolfram/android/alpha/QueryTask;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->conn_compu_commu_label:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/wolfram/android/alpha/QueryTask;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->conn_compu_commu_label:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/wolfram/android/alpha/QueryTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->isProgress_QueryResult_Done:Z

    return v0
.end method

.method private createPing_Thread()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/wolfram/android/alpha/QueryTask$5;

    invoke-direct {v0, p0}, Lcom/wolfram/android/alpha/QueryTask$5;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->ping_thread:Ljava/lang/Thread;

    .line 352
    return-void
.end method

.method private finishAsyncBanner()V
    .locals 7

    .prologue
    .line 515
    iget-object v6, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->getBanners()[Lcom/wolfram/alpha/WABanner;

    move-result-object v1

    .line 517
    .local v1, banners:[Lcom/wolfram/alpha/WABanner;
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 518
    .local v4, runningThreads:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 519
    aget-object v0, v1, v2

    .line 520
    .local v0, banner:Lcom/wolfram/alpha/WABanner;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wolfram/android/alpha/QueryTask$7;

    invoke-direct {v6, p0, v0}, Lcom/wolfram/android/alpha/QueryTask$7;-><init>(Lcom/wolfram/android/alpha/QueryTask;Lcom/wolfram/alpha/WABanner;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 531
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 532
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v0           #banner:Lcom/wolfram/alpha/WABanner;
    .end local v5           #t:Ljava/lang/Thread;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 537
    .restart local v5       #t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v6

    goto :goto_1

    .line 542
    .end local v5           #t:Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method private finishAsyncPod(Lcom/wolfram/alpha/WAQuery;)V
    .locals 7
    .parameter "query"

    .prologue
    .line 476
    iget-object v6, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v3

    .line 478
    .local v3, pods:[Lcom/wolfram/alpha/WAPod;
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    .local v4, runningThreads:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 480
    aget-object v2, v3, v0

    .line 481
    .local v2, pod:Lcom/wolfram/alpha/WAPod;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wolfram/android/alpha/QueryTask$6;

    invoke-direct {v6, p0, v2}, Lcom/wolfram/android/alpha/QueryTask$6;-><init>(Lcom/wolfram/android/alpha/QueryTask;Lcom/wolfram/alpha/WAPod;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 497
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .end local v2           #pod:Lcom/wolfram/alpha/WAPod;
    .end local v5           #t:Ljava/lang/Thread;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 506
    .restart local v5       #t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 507
    :catch_0
    move-exception v6

    goto :goto_1

    .line 511
    .end local v5           #t:Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method private getMd5Digest(Lcom/wolfram/alpha/WAQueryParameters;)Ljava/lang/String;
    .locals 11
    .parameter "queryParams"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 748
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getParameters()Ljava/util/List;

    move-result-object v6

    .line 751
    .local v6, params:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    .line 752
    .local v0, appidParam:[Ljava/lang/String;
    const-string v8, "appid"

    aput-object v8, v0, v10

    .line 753
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getAppid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    .line 754
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v8, Lcom/wolfram/android/alpha/QueryTask$ParamComparator;

    invoke-direct {v8, p0}, Lcom/wolfram/android/alpha/QueryTask$ParamComparator;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 758
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x258

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 760
    .local v7, s:Ljava/lang/StringBuilder;
    const-string v8, "vFdeaRwBTVqdc5CL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 762
    .local v5, param:[Ljava/lang/String;
    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 767
    .end local v5           #param:[Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 768
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 769
    new-instance v3, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 770
    .local v3, hash:Ljava/math/BigInteger;
    const-string v8, "%1$032X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 773
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #hash:Ljava/math/BigInteger;
    :goto_1
    return-object v8

    .line 771
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 773
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, ""

    goto :goto_1
.end method

.method private query_parameters_set(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/alpha/WAEngine;)V
    .locals 10
    .parameter "query"
    .parameter "alphaEngine"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v9, 0x3f80

    const-wide/high16 v7, 0x3ff8

    .line 358
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getAsync()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getAsync()F

    move-result v3

    float-to-double v3, v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setAsync(D)V

    .line 361
    :cond_0
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v3, :cond_1

    .line 362
    const-wide/high16 v3, 0x4014

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setScanTimeout(D)V

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v1

    .line 365
    .local v1, screenDensity:F
    iget v3, p0, Lcom/wolfram/android/alpha/QueryTask;->displayWidth:I

    mul-float v4, v5, v1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    const/16 v4, 0x1e

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Lcom/wolfram/alpha/WAQuery;->setWidth(I)V

    .line 367
    iget v3, p0, Lcom/wolfram/android/alpha/QueryTask;->displayWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v7

    mul-float/2addr v5, v1

    float-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {p1, v3}, Lcom/wolfram/alpha/WAQuery;->setMaxWidth(I)V

    .line 371
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFontsize()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 391
    :goto_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 392
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setLatitude(D)V

    .line 394
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setLongitude(D)V

    .line 397
    :cond_2
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->getMd5Digest(Lcom/wolfram/alpha/WAQueryParameters;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, sig:Ljava/lang/String;
    invoke-interface {p1, v2}, Lcom/wolfram/alpha/WAQuery;->setSignature(Ljava/lang/String;)V

    .line 405
    return-void

    .line 373
    .end local v0           #loc:Landroid/location/Location;
    .end local v2           #sig:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    cmpl-float v3, v3, v9

    if-nez v3, :cond_3

    const-wide/high16 v3, 0x3ff4

    iget-object v5, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    mul-float/2addr v3, v9

    float-to-double v3, v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v7

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 379
    :pswitch_2
    const/high16 v3, 0x4000

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 381
    :pswitch_3
    const-wide/high16 v3, 0x4004

    iget-object v5, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 383
    :pswitch_4
    const/high16 v3, 0x4040

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto :goto_0

    .line 385
    :pswitch_5
    const-wide/high16 v3, 0x400c

    iget-object v5, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto/16 :goto_0

    .line 387
    :pswitch_6
    const/high16 v3, 0x4080

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-interface {p1, v3, v4}, Lcom/wolfram/alpha/WAQuery;->setMagnification(D)V

    goto/16 :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setAllRunnables()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 167
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    .local v0, contentView:Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    new-instance v2, Lcom/wolfram/android/alpha/QueryTask$1;

    invoke-direct {v2, p0}, Lcom/wolfram/android/alpha/QueryTask$1;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    iput-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_fadeout:Ljava/lang/Runnable;

    .line 180
    new-instance v2, Lcom/wolfram/android/alpha/QueryTask$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/wolfram/android/alpha/QueryTask$2;-><init>(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    iput-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_computing:Ljava/lang/Runnable;

    .line 212
    new-instance v2, Lcom/wolfram/android/alpha/QueryTask$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/wolfram/android/alpha/QueryTask$3;-><init>(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    iput-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;

    .line 240
    new-instance v2, Lcom/wolfram/android/alpha/QueryTask$4;

    invoke-direct {v2, p0}, Lcom/wolfram/android/alpha/QueryTask$4;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    iput-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_communicating:Ljava/lang/Runnable;

    .line 258
    return-void
.end method

.method private stop_Thread_Safe()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask;->ping_thread:Ljava/lang/Thread;

    .line 548
    .local v0, tmpThread:Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->ping_thread:Ljava/lang/Thread;

    .line 549
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    .line 119
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    sget-object v2, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/QueryTask;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 120
    return-void
.end method

.method protected varargs doInBackground([Lcom/wolfram/alpha/WAQuery;)Ljava/lang/Object;
    .locals 9
    .parameter "querySequence"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 409
    aget-object v3, p1, v7

    iput-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    .line 410
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v0

    .line 412
    .local v0, alphaEngine:Lcom/wolfram/alpha/WAEngine;
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-direct {p0, v3, v0}, Lcom/wolfram/android/alpha/QueryTask;->query_parameters_set(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/alpha/WAEngine;)V

    .line 414
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-eqz v3, :cond_0

    move-object v3, v6

    .line 470
    :goto_0
    return-object v3

    .line 417
    :cond_0
    const/4 v2, 0x0

    .line 421
    .local v2, exc:Lcom/wolfram/alpha/WAException;
    :try_start_0
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-nez v3, :cond_2

    .line 422
    sget-object v3, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_fadeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->ping_thread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->ping_thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 427
    :cond_2
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual {v0, v3}, Lcom/wolfram/alpha/WAEngine;->performQuery(Lcom/wolfram/alpha/WAQuery;)Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 429
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-eqz v3, :cond_3

    move-object v3, v6

    .line 430
    goto :goto_0

    .line 435
    :cond_3
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v3, :cond_4

    .line 436
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQuery;->clearIncludePodIDs()V

    .line 437
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQuery;->clearPodTitles()V

    .line 439
    :cond_4
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 441
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v3, :cond_6

    .line 442
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->isBannerPodStateChange:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->mergeBannerStateResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 453
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    sget-object v5, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V

    .line 456
    iget-boolean v3, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-eqz v3, :cond_7

    move-object v3, v6

    .line 457
    goto :goto_0

    .line 443
    :cond_5
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->mergePodStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 462
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 463
    .local v1, e:Lcom/wolfram/alpha/WAException;
    const-string v3, "Wolfram|Alpha"

    const-string v4, "QueryTask: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    move-object v2, v1

    .line 466
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setDebugQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 467
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3, v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setDebugQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 468
    new-array v3, v8, [Ljava/lang/Integer;

    sget-object v4, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/QueryTask;->publishProgress([Ljava/lang/Object;)V

    .line 470
    .end local v1           #e:Lcom/wolfram/alpha/WAException;
    :goto_2
    if-nez v2, :cond_8

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    goto/16 :goto_0

    .line 446
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    goto :goto_1

    .line 459
    :cond_7
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-direct {p0, v3}, Lcom/wolfram/android/alpha/QueryTask;->finishAsyncPod(Lcom/wolfram/alpha/WAQuery;)V

    .line 460
    invoke-direct {p0}, Lcom/wolfram/android/alpha/QueryTask;->finishAsyncBanner()V
    :try_end_1
    .catch Lcom/wolfram/alpha/WAException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move-object v3, v2

    .line 470
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, [Lcom/wolfram/alpha/WAQuery;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->doInBackground([Lcom/wolfram/alpha/WAQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 12
    .parameter "queryResultOrException"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 660
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v8, :cond_1

    .line 661
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v8, v8, Lcom/wolfram/android/alpha/PodStateButtonData;->activityMeter:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v8, v8, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v8, v8, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    iget v9, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_OFF:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    :cond_0
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v8, v8, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v8, v8, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    iget v9, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_ON:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-eqz v8, :cond_3

    .line 743
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 670
    .restart local p1
    :cond_3
    instance-of v8, p1, Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v8, :cond_9

    .line 671
    move-object v0, p1

    check-cast v0, Lcom/wolfram/alpha/WAQueryResult;

    move-object v8, v0

    invoke-interface {v8}, Lcom/wolfram/alpha/WAQueryResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 673
    check-cast p1, Lcom/wolfram/alpha/WAQueryResult;

    .end local p1
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 675
    :cond_4
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 676
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "OK"

    new-instance v10, Lcom/wolfram/android/alpha/QueryTask$8;

    invoke-direct {v10, p0}, Lcom/wolfram/android/alpha/QueryTask$8;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 704
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #msg:Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getHistory()Lcom/wolfram/android/alpha/History;

    move-result-object v8

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual {v8, v9, v10}, Lcom/wolfram/android/alpha/History;->add(Lcom/wolfram/alpha/WAQueryResult;Lcom/wolfram/alpha/WAQuery;)V

    .line 705
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 685
    .restart local p1
    :cond_7
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v8, :cond_6

    .line 686
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryTask;->isBannerPodStateChange:Z

    if-eqz v8, :cond_8

    .line 687
    check-cast p1, Lcom/wolfram/alpha/WAQueryResult;

    .end local p1
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getBanners()[Lcom/wolfram/alpha/WABanner;

    move-result-object v1

    .line 689
    .local v1, banners:[Lcom/wolfram/alpha/WABanner;
    array-length v8, v1

    if-ne v8, v11, :cond_6

    .line 690
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    aget-object v9, v1, v10

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/QueryResultAdapter;->swapBanner(Lcom/wolfram/alpha/WABanner;)V

    goto :goto_1

    .line 695
    .end local v1           #banners:[Lcom/wolfram/alpha/WABanner;
    .restart local p1
    :cond_8
    check-cast p1, Lcom/wolfram/alpha/WAQueryResult;

    .end local p1
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v5

    .line 697
    .local v5, pods:[Lcom/wolfram/alpha/WAPod;
    array-length v8, v5

    if-ne v8, v11, :cond_6

    aget-object v8, v5, v10

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getNumSubpods()I

    move-result v8

    if-eqz v8, :cond_6

    .line 698
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget v9, v9, Lcom/wolfram/android/alpha/PodStateButtonData;->positionInAdapter:I

    aget-object v10, v5, v10

    invoke-virtual {v8, v9, v10}, Lcom/wolfram/android/alpha/QueryResultAdapter;->swapPod(ILcom/wolfram/alpha/WAPod;)V

    goto :goto_1

    .line 721
    .end local v5           #pods:[Lcom/wolfram/alpha/WAPod;
    .restart local p1
    :cond_9
    const v4, 0x7f0c001a

    .line 722
    .local v4, msgID:I
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 724
    .local v7, wrappedException:Ljava/lang/Throwable;
    const-string v8, "Wolfram|Alpha"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    instance-of v8, v7, Lcom/wolfram/alpha/net/WAHttpException;

    if-eqz v8, :cond_b

    .line 727
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 728
    instance-of v8, v7, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_a

    .line 729
    const v4, 0x7f0c001b

    .line 733
    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, text:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 735
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v9, "OK"

    new-instance v10, Lcom/wolfram/android/alpha/QueryTask$9;

    invoke-direct {v10, p0}, Lcom/wolfram/android/alpha/QueryTask$9;-><init>(Lcom/wolfram/android/alpha/QueryTask;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 730
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #text:Ljava/lang/String;
    :cond_b
    instance-of v8, v7, Lorg/xml/sax/SAXException;

    if-eqz v8, :cond_a

    .line 731
    const v4, 0x7f0c001d

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 131
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1, p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQueryTask(Lcom/wolfram/android/alpha/QueryTask;)V

    .line 133
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->activityMeter:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_OFF:I

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    iput v1, p0, Lcom/wolfram/android/alpha/QueryTask;->IsToggleView_ON:I

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->podStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    iget-object v1, v1, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_1
    sget-object v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDownloadDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->oldDownloadsToDelete:[Ljava/io/File;

    .line 163
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v1

    if-nez v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v1, v2, v4, v4}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, firstRow:Landroid/view/View;
    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/view/QueryInputView;

    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 152
    .end local v0           #firstRow:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->input:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->input:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->queryInputView:Lcom/wolfram/android/alpha/view/QueryInputView;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    .line 157
    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    .line 158
    invoke-direct {p0}, Lcom/wolfram/android/alpha/QueryTask;->setAllRunnables()V

    .line 159
    invoke-direct {p0}, Lcom/wolfram/android/alpha/QueryTask;->createPing_Thread()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 14
    .parameter "progress"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 582
    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryTask;->wasStopped:Z

    if-nez v9, :cond_0

    .line 583
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->OldqueryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v9, v10, v13}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 584
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v9}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 589
    :cond_0
    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryTask;->isPodStateChange:Z

    if-eqz v9, :cond_2

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    aget-object v9, p1, v12

    sget-object v10, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 605
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/QueryTask;->stopAllRunnables()V

    .line 607
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    const v10, 0x7f0e007f

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 608
    .local v4, queryInputView:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 609
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->input:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    check-cast v4, Lcom/wolfram/android/alpha/view/QueryInputView;

    .end local v4           #queryInputView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    .line 614
    :cond_3
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    .local v0, contentView:Landroid/view/ViewGroup;
    const v9, 0x7f0e000a

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 616
    .local v3, progressView:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 617
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 619
    :cond_4
    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-nez v9, :cond_8

    .line 620
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v9, v10}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 623
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v9, :cond_8

    .line 625
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getTimedoutScanners()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v9, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setComputationTimedOutResultsAvailable(Z)V

    .line 628
    :goto_1
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getRecalculateURL()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, recalc:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v9}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 630
    new-instance v6, Lcom/wolfram/android/alpha/RecalculateTask;

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-boolean v11, p0, Lcom/wolfram/android/alpha/QueryTask;->isTryAgain:Z

    invoke-direct {v6, v9, v10, v11}, Lcom/wolfram/android/alpha/RecalculateTask;-><init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 631
    .local v6, recalcTask:Lcom/wolfram/android/alpha/RecalculateTask;
    new-array v9, v13, [Ljava/lang/String;

    aput-object v5, v9, v12

    invoke-virtual {v6, v9}, Lcom/wolfram/android/alpha/RecalculateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 635
    .end local v6           #recalcTask:Lcom/wolfram/android/alpha/RecalculateTask;
    :cond_5
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 636
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v9

    invoke-interface {v9}, Lcom/wolfram/alpha/WAGeneralization;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, generaliz:Ljava/lang/String;
    new-instance v2, Lcom/wolfram/android/alpha/GeneralizationTask;

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-direct {v2, v9, v10}, Lcom/wolfram/android/alpha/GeneralizationTask;-><init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;)V

    .line 638
    .local v2, generalizTask:Lcom/wolfram/android/alpha/GeneralizationTask;
    new-array v9, v13, [Ljava/lang/String;

    aput-object v1, v9, v12

    invoke-virtual {v2, v9}, Lcom/wolfram/android/alpha/GeneralizationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    .end local v1           #generaliz:Ljava/lang/String;
    .end local v2           #generalizTask:Lcom/wolfram/android/alpha/GeneralizationTask;
    :cond_6
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v9}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v9

    if-nez v9, :cond_8

    .line 644
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueriesURL()Ljava/lang/String;

    move-result-object v7

    .line 645
    .local v7, relatedQueries:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 646
    new-instance v8, Lcom/wolfram/android/alpha/RelatedQueriesTask;

    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-direct {v8, v9, v10}, Lcom/wolfram/android/alpha/RelatedQueriesTask;-><init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;)V

    .line 647
    .local v8, relatedQueriesTask:Lcom/wolfram/android/alpha/RelatedQueriesTask;
    new-array v9, v13, [Ljava/lang/String;

    aput-object v7, v9, v12

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 653
    .end local v0           #contentView:Landroid/view/ViewGroup;
    .end local v3           #progressView:Landroid/view/View;
    .end local v5           #recalc:Ljava/lang/String;
    .end local v7           #relatedQueries:Ljava/lang/String;
    .end local v8           #relatedQueriesTask:Lcom/wolfram/android/alpha/RelatedQueriesTask;
    :cond_8
    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    if-nez v9, :cond_1

    .line 654
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v9}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 626
    .restart local v0       #contentView:Landroid/view/ViewGroup;
    .restart local v3       #progressView:Landroid/view/View;
    :cond_9
    iget-object v9, p0, Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v9, v12}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setComputationTimedOutResultsAvailable(Z)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->wasStopped:Z

    .line 125
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask;->wasCancelled:Z

    .line 126
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    sget-object v2, Lcom/wolfram/android/alpha/QueryTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/QueryTask;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 127
    return-void
.end method

.method public stopAllRunnables()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 558
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wolfram/android/alpha/QueryTask;->isProgress_QueryResult_Done:Z

    .line 561
    invoke-direct {p0}, Lcom/wolfram/android/alpha/QueryTask;->stop_Thread_Safe()V

    .line 563
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_computing:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_communicating:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->queryResultsView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 569
    .local v0, contentView:Landroid/view/ViewGroup;
    const v2, 0x7f0e000a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 570
    .local v1, progressView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->computing_bar_view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->connecting_bar_view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask;->communicating_bar_view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_4
    return-void
.end method
