.class Lcom/superdroid/sqd/util/SqdProgressableTask$1;
.super Ljava/lang/Thread;
.source "SqdProgressableTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/util/SqdProgressableTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/util/SqdProgressableTask;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/util/SqdProgressableTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/util/SqdProgressableTask$1;->this$0:Lcom/superdroid/sqd/util/SqdProgressableTask;

    .line 29
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask$1;->this$0:Lcom/superdroid/sqd/util/SqdProgressableTask;

    #getter for: Lcom/superdroid/sqd/util/SqdProgressableTask;->_task:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->access$1(Lcom/superdroid/sqd/util/SqdProgressableTask;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, p0, Lcom/superdroid/sqd/util/SqdProgressableTask$1;->this$0:Lcom/superdroid/sqd/util/SqdProgressableTask;

    #calls: Lcom/superdroid/sqd/util/SqdProgressableTask;->dismiss()V
    invoke-static {v0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->access$0(Lcom/superdroid/sqd/util/SqdProgressableTask;)V

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/superdroid/sqd/util/SqdProgressableTask$1;->this$0:Lcom/superdroid/sqd/util/SqdProgressableTask;

    #calls: Lcom/superdroid/sqd/util/SqdProgressableTask;->dismiss()V
    invoke-static {v1}, Lcom/superdroid/sqd/util/SqdProgressableTask;->access$0(Lcom/superdroid/sqd/util/SqdProgressableTask;)V

    .line 35
    throw v0
.end method
