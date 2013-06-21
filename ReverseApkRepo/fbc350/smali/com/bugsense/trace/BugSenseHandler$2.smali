.class final Lcom/bugsense/trace/BugSenseHandler$2;
.super Lcom/bugsense/trace/ActivityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsense/trace/BugSenseHandler;->submit(Lcom/bugsense/trace/BugSenseHandler$Processor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bugsense/trace/ActivityAsyncTask",
        "<",
        "Lcom/bugsense/trace/BugSenseHandler$Processor;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mTimeStarted:J

.field final synthetic val$tracesNowSubmitting:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lcom/bugsense/trace/BugSenseHandler$2;->val$tracesNowSubmitting:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$2;->val$tracesNowSubmitting:Ljava/util/ArrayList;

    #calls: Lcom/bugsense/trace/BugSenseHandler;->submitStackTraces(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->access$000(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->access$100()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bugsense/trace/BugSenseHandler$2;->mTimeStarted:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->onPreExecute()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bugsense/trace/BugSenseHandler$2;->mTimeStarted:J

    return-void
.end method

.method protected processPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$2;->mWrapped:Ljava/lang/Object;

    check-cast v0, Lcom/bugsense/trace/BugSenseHandler$Processor;

    invoke-interface {v0}, Lcom/bugsense/trace/BugSenseHandler$Processor;->submitDone()V

    return-void
.end method
