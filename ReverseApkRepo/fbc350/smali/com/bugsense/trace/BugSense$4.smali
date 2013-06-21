.class final Lcom/bugsense/trace/BugSense$4;
.super Lcom/bugsense/trace/ActivityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsense/trace/BugSense;->submitTick(Landroid/content/Context;)V
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
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bugsense/trace/BugSense$Processor;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/bugsense/trace/BugSense$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bugsense/trace/BugSense$4;->val$ctx:Landroid/content/Context;

    #calls: Lcom/bugsense/trace/BugSense;->sendTick(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/bugsense/trace/BugSense;->access$100(Landroid/content/Context;)V

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

    iget-object v0, p0, Lcom/bugsense/trace/BugSense$4;->mWrapped:Ljava/lang/Object;

    check-cast v0, Lcom/bugsense/trace/BugSense$Processor;

    invoke-interface {v0}, Lcom/bugsense/trace/BugSense$Processor;->submitDone()V

    return-void
.end method
