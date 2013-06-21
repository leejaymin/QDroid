.class public Lcom/wolfram/android/alpha/RelatedQueriesTask;
.super Landroid/os/AsyncTask;
.source "RelatedQueriesTask.java"


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

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

.field private origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private volatile queryResult:Lcom/wolfram/alpha/WAQueryResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    .line 23
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->PROGRESS_IMAGES_PARTIAL:Ljava/lang/Integer;

    .line 25
    const-string v0, "com.wolfram.android.alpha.RelatedQueriesTask"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResultsView"
    .parameter "origQueryResult"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    iput-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    .line 30
    iput-object p2, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "relatedQueriesURLSequence"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    aget-object v3, p1, v7

    .line 37
    .local v3, relatedQueriesURL:Ljava/lang/String;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v0

    .line 38
    .local v0, alphaEngine:Lcom/wolfram/alpha/WAEngine;
    const/4 v2, 0x0

    .line 40
    .local v2, exc:Lcom/wolfram/alpha/WAException;
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/wolfram/alpha/WAEngine;->performRecalculate(Ljava/lang/String;)Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 42
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->mergeRelatedQueriesResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 44
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    sget-object v6, Lcom/wolfram/android/alpha/RelatedQueriesTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    :goto_1
    return-object v4

    .line 46
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 47
    .local v1, e:Lcom/wolfram/alpha/WAException;
    const-string v4, "Wolfram|Alpha"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RelatedQueriesTask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    move-object v2, v1

    .line 49
    new-array v4, v8, [Ljava/lang/Integer;

    sget-object v5, Lcom/wolfram/android/alpha/RelatedQueriesTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .end local v1           #e:Lcom/wolfram/alpha/WAException;
    :cond_0
    move-object v4, v2

    .line 51
    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "queryResultOrException"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-object v1, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 84
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->origQueryResult:Lcom/wolfram/alpha/WAQueryResult;

    iget-object v1, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    aget-object v0, p1, v2

    sget-object v1, Lcom/wolfram/android/alpha/RelatedQueriesTask;->PROGRESS_QUERYRESULT_DONE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v1, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v1}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->appendRelatedQueries([Ljava/lang/String;)V

    .line 74
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/RelatedQueriesTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->appendRelatedQueries([Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/RelatedQueriesTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
