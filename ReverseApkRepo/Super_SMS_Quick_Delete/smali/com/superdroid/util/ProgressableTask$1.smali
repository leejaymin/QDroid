.class Lcom/superdroid/util/ProgressableTask$1;
.super Ljava/lang/Thread;
.source "ProgressableTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/util/ProgressableTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/util/ProgressableTask;


# direct methods
.method constructor <init>(Lcom/superdroid/util/ProgressableTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/util/ProgressableTask$1;->this$0:Lcom/superdroid/util/ProgressableTask;

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/superdroid/util/ProgressableTask$1;->this$0:Lcom/superdroid/util/ProgressableTask;

    #getter for: Lcom/superdroid/util/ProgressableTask;->_task:Lcom/superdroid/util/ProgressableRunnable;
    invoke-static {v0}, Lcom/superdroid/util/ProgressableTask;->access$1(Lcom/superdroid/util/ProgressableTask;)Lcom/superdroid/util/ProgressableRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/superdroid/util/ProgressableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/superdroid/util/ProgressableTask$1;->this$0:Lcom/superdroid/util/ProgressableTask;

    #calls: Lcom/superdroid/util/ProgressableTask;->dismiss()V
    invoke-static {v0}, Lcom/superdroid/util/ProgressableTask;->access$0(Lcom/superdroid/util/ProgressableTask;)V

    .line 49
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/superdroid/util/ProgressableTask$1;->this$0:Lcom/superdroid/util/ProgressableTask;

    #calls: Lcom/superdroid/util/ProgressableTask;->dismiss()V
    invoke-static {v1}, Lcom/superdroid/util/ProgressableTask;->access$0(Lcom/superdroid/util/ProgressableTask;)V

    .line 48
    throw v0
.end method
