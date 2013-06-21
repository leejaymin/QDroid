.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;
.super Ljava/lang/Thread;

# interfaces
.implements Ljavax/jmdns/JmDNS$Delegate;
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$1;,
        Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;,
        Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;,
        Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    }
.end annotation


# static fields
.field private static final MAX_COMMANDS:I = 0x10

.field private static final TAG_MCLOCK:Ljava/lang/String; = "PSTouchMulticastLock"


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _commandQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;",
            ">;"
        }
    .end annotation
.end field

.field private _discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

.field private _extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

.field private _interruptSentinel:I

.field private _jmdns:Ljavax/jmdns/JmDNS;

.field private _jmdnsInterrupt:Z

.field private _publishedServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _threadState:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;


# direct methods
.method public constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_activity:Landroid/app/Activity;

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NOT_STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_commandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    iput-boolean v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdnsInterrupt:Z

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->CREATED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_threadState:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_publishedServices:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    iput v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_interruptSentinel:I

    return-void
.end method

.method private static createJsonServiceInfo(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;
    .locals 9

    const-string v6, "{"

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getPropertyNames()Ljava/util/Enumeration;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "null"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"qualifiedName\":"

    invoke-static {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->fullyQualifiedName(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"name\":"

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"type\":"

    invoke-static {v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"domain\":"

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"hostName\":"

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"addresses\":"

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getHostAddresses()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"port\":"

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"txt\":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "._"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_1

    :cond_2
    const-string v3, "{"

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v5, 0x1

    if-lez v5, :cond_3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v0, v4

    :goto_5
    move v5, v0

    goto :goto_4

    :cond_4
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    move v0, v5

    goto :goto_5

    :cond_6
    move-object v1, v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v6

    goto :goto_3
.end method

.method private static jsonValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static jsonValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "["

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->jsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_threadState:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onThreadStateChanged(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cannotRecoverFromIOError(Ljavax/jmdns/JmDNS;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/JmDNS;",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdnsInterrupt:Z

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->interrupt()V

    return-void
.end method

.method public getCommandQueue()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_commandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method getDNS()Ljavax/jmdns/JmDNS;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    return-object v0
.end method

.method public getDiscoveredServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public declared-synchronized getExitCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtensionContext()Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    return-object v0
.end method

.method public getPublishedServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_publishedServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public declared-synchronized getThreadState()Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_threadState:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public interrupt()V
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_interruptSentinel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_interruptSentinel:I

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_interruptSentinel:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_activity:Landroid/app/Activity;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->NO_WIFI_MANAGER:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    invoke-direct {v0, p0, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;-><init>(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException;->getExitCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setExitCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    :try_start_2
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_1
    :goto_2
    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STOPPED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    return-void

    :cond_2
    :try_start_3
    const-string v2, "PSTouchMulticastLock"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v3

    :try_start_4
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0, p0}, Ljavax/jmdns/JmDNS;->setDelegate(Ljavax/jmdns/JmDNS$Delegate;)Ljavax/jmdns/JmDNS$Delegate;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_commandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;

    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNDEFINED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->execute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v1

    :try_start_9
    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->setResultCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;)V

    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setExitCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    :try_start_b
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_4
    :goto_5
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_c
    sget-object v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_d
    invoke-virtual {v0, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->setResultCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;)V

    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :catchall_1
    move-exception v0

    :goto_6
    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    :try_start_e
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_6
    throw v0

    :catch_5
    move-exception v1

    :try_start_f
    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNHANDLED_EXCEPTION:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->setResultCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;)V

    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$BonjourThreadException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_3

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_7
    move-exception v0

    :goto_8
    :try_start_11
    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdnsInterrupt:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED_ERROR:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;

    :goto_9
    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setExitCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-direct {p0, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->setThreadState(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    :try_start_12
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :cond_7
    :goto_a
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto/16 :goto_2

    :cond_8
    :try_start_13
    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;->INTERRUPTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_9

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v3, v1

    goto/16 :goto_4

    :catch_c
    move-exception v0

    move-object v1, v3

    goto :goto_8
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->fullyQualifiedName(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_publishedServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onServiceDiscovered(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/JmDNS;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->fullyQualifiedName(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-virtual {v1, v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onServiceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_extensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->createJsonServiceInfo(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onServiceResolved(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setExitCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->_exitCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ExitCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
