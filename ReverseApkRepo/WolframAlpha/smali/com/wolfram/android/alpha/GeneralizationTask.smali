.class public Lcom/wolfram/android/alpha/GeneralizationTask;
.super Landroid/os/AsyncTask;
.source "GeneralizationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

.field private static final PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;


# instance fields
.field private adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

.field private origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private volatile queryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    .line 32
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResultsView"
    .parameter "origQueryResult"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    iput-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    .line 37
    iput-object p2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 38
    check-cast p1, Lcom/wolfram/android/alpha/view/QueryResultView;

    .end local p1
    iput-object p1, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wolfram/android/alpha/GeneralizationTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wolfram/android/alpha/GeneralizationTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/GeneralizationTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "generalizationURLSequence"

    .prologue
    .line 44
    const/4 v10, 0x0

    aget-object v3, p1, v10

    .line 45
    .local v3, generalizationURL:Ljava/lang/String;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v0

    .line 46
    .local v0, alphaEngine:Lcom/wolfram/alpha/WAEngine;
    const/4 v2, 0x0

    .line 48
    .local v2, exc:Lcom/wolfram/alpha/WAException;
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/wolfram/alpha/WAEngine;->performGeneralization(Ljava/lang/String;)Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v10

    iput-object v10, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 50
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v10

    iget-object v11, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v10, v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->mergeGeneralizationResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 52
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    sget-object v12, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V

    .line 54
    iget-object v10, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v10}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v7

    .line 55
    .local v7, pods:[Lcom/wolfram/alpha/WAPod;
    new-instance v8, Ljava/util/ArrayList;

    array-length v10, v7

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v8, runningThreads:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v7

    if-ge v4, v10, :cond_0

    .line 57
    aget-object v6, v7, v4

    .line 58
    .local v6, pod:Lcom/wolfram/alpha/WAPod;
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/wolfram/android/alpha/GeneralizationTask$1;

    invoke-direct {v10, p0, v6}, Lcom/wolfram/android/alpha/GeneralizationTask$1;-><init>(Lcom/wolfram/android/alpha/GeneralizationTask;Lcom/wolfram/alpha/WAPod;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v6           #pod:Lcom/wolfram/alpha/WAPod;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .restart local v9       #t:Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v10

    goto :goto_1

    .line 83
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #pods:[Lcom/wolfram/alpha/WAPod;
    .end local v8           #runningThreads:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Thread;>;"
    .end local v9           #t:Ljava/lang/Thread;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 84
    .local v1, e:Lcom/wolfram/alpha/WAException;
    const-string v10, "Wolfram|Alpha"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generalizationResultTask: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-object v2, v1

    .line 86
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    sget-object v12, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/wolfram/android/alpha/GeneralizationTask;->publishProgress([Ljava/lang/Object;)V

    .line 88
    .end local v1           #e:Lcom/wolfram/alpha/WAException;
    :cond_1
    if-nez v2, :cond_2

    iget-object v10, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    :goto_2
    return-object v10

    :cond_2
    move-object v10, v2

    goto :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "queryResultOrException"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-object v3, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAQueryResult;->getRecalculateURL()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueriesURL()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, relatedQueries:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    new-instance v1, Lcom/wolfram/android/alpha/RelatedQueriesTask;

    iget-object v2, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;

    iget-object v3, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-direct {v1, v2, v3}, Lcom/wolfram/android/alpha/RelatedQueriesTask;-><init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;)V

    .line 130
    .local v1, relatedQueriesTask:Lcom/wolfram/android/alpha/RelatedQueriesTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    .end local v0           #relatedQueries:Ljava/lang/String;
    .end local v1           #relatedQueriesTask:Lcom/wolfram/android/alpha/RelatedQueriesTask;
    :cond_2
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    aget-object v0, p1, v2

    sget-object v1, Lcom/wolfram/android/alpha/GeneralizationTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v1, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->appendgeneralizationPods([Lcom/wolfram/alpha/WAPod;)V

    .line 111
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/GeneralizationTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    new-array v1, v2, [Lcom/wolfram/alpha/WAPod;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->appendgeneralizationPods([Lcom/wolfram/alpha/WAPod;)V

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/GeneralizationTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
