.class final Lcom/bugsense/trace/BugSense$2;
.super Lcom/bugsense/trace/ActivityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsense/trace/BugSense;->submitError(Landroid/content/Context;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bugsense/trace/ActivityAsyncTask",
        "<",
        "Lcom/bugsense/trace/BugSense$Processor;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$extraData:Ljava/util/Map;

.field final synthetic val$occuredAt:Ljava/util/Date;

.field final synthetic val$sTimeout:I

.field final synthetic val$stacktrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsense/trace/BugSense$Processor;ILjava/util/Date;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput p2, p0, Lcom/bugsense/trace/BugSense$2;->val$sTimeout:I

    iput-object p3, p0, Lcom/bugsense/trace/BugSense$2;->val$occuredAt:Ljava/util/Date;

    iput-object p4, p0, Lcom/bugsense/trace/BugSense$2;->val$stacktrace:Ljava/lang/String;

    iput-object p5, p0, Lcom/bugsense/trace/BugSense$2;->val$extraData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/bugsense/trace/BugSense$2;->val$sTimeout:I

    iget-object v1, p0, Lcom/bugsense/trace/BugSense$2;->val$occuredAt:Ljava/util/Date;

    iget-object v2, p0, Lcom/bugsense/trace/BugSense$2;->val$stacktrace:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcom/bugsense/trace/BugSense$2;->val$extraData:Ljava/util/Map;

    #calls: Lcom/bugsense/trace/BugSense;->sendError(ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bugsense/trace/BugSense;->access$000(ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->onPreExecute()V

    return-void
.end method

.method protected processPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/bugsense/trace/BugSense$2;->mWrapped:Ljava/lang/Object;

    check-cast v0, Lcom/bugsense/trace/BugSense$Processor;

    invoke-interface {v0}, Lcom/bugsense/trace/BugSense$Processor;->submitDone()V

    return-void
.end method
