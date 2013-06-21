.class Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;
.super Landroid/os/AsyncTask;
.source "AsyncProgressableTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/util/AsyncProgressableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/util/AsyncProgressableTask;


# direct methods
.method constructor <init>(Lcom/superdroid/util/AsyncProgressableTask;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    #getter for: Lcom/superdroid/util/AsyncProgressableTask;->_task:Lcom/superdroid/util/ProgressableRunnable;
    invoke-static {v0}, Lcom/superdroid/util/AsyncProgressableTask;->access$1(Lcom/superdroid/util/AsyncProgressableTask;)Lcom/superdroid/util/ProgressableRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/superdroid/util/ProgressableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    #calls: Lcom/superdroid/util/AsyncProgressableTask;->dismiss()V
    invoke-static {v0}, Lcom/superdroid/util/AsyncProgressableTask;->access$0(Lcom/superdroid/util/AsyncProgressableTask;)V

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    #calls: Lcom/superdroid/util/AsyncProgressableTask;->dismiss()V
    invoke-static {v1}, Lcom/superdroid/util/AsyncProgressableTask;->access$0(Lcom/superdroid/util/AsyncProgressableTask;)V

    .line 49
    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/superdroid/util/AsyncProgressableTask$AsyncLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
