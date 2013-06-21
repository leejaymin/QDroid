.class public Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;
.super Ljava/lang/ThreadGroup;


# static fields
.field private static final COMMAND_QUEUE_SIZE_MAX:I = 0x2000

.field private static final NUM_THREADS:I = 0x2

.field private static final THREAD_PREFIX:Ljava/lang/String; = "CameraRollThread-"


# instance fields
.field private iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;",
            ">;"
        }
    .end annotation
.end field

.field private iCommandOutputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;",
            ">;"
        }
    .end annotation
.end field

.field private iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->commonInit()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->commonInit()V

    return-void
.end method


# virtual methods
.method public clearCommandQueue()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method protected commonInit()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;

    const-string v2, "CameraRollThread-"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCommandInputQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public releaseCommandOutput(Ljava/lang/String;)Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method retainCommandOutput(Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandOutputMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public scheduleCommand(Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->iCommandInputQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method
