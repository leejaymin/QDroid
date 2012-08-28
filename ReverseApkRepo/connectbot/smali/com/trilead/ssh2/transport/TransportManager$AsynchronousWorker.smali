.class Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;
.super Ljava/lang/Thread;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsynchronousWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 75
    :goto_0
    move-object v2, v3

    check-cast v2, [B

    .line 77
    .local v2, msg:[B
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    #getter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;
    invoke-static {v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    .line 79
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    #getter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;
    invoke-static {v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 85
    :try_start_1
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    #getter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;
    invoke-static {v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    #getter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;
    invoke-static {v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 94
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v4, 0x0

    #setter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$1(Lcom/trilead/ssh2/transport/TransportManager;Ljava/lang/Thread;)V

    .line 95
    monitor-exit v5

    .line 120
    :goto_2
    return-void

    .line 99
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    #getter for: Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;
    invoke-static {v4}, Lcom/trilead/ssh2/transport/TransportManager;->access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 77
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/IOException;
    goto :goto_2

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 87
    :catch_1
    move-exception v4

    goto :goto_1
.end method
