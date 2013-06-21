.class public Lorg/appcelerator/titanium/TiBaseService;
.super Landroid/app/Service;
.source "TiBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiBaseService"

.field public static final TI_SERVICE_INTENT_ID_KEY:Ljava/lang/String; = "$__TITANIUM_SERVICE_INTENT_ID__$"

.field private static final serviceIntentIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private weakBoundContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private weakUnboundContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiBaseService;->serviceIntentIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    .line 32
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    return-void
.end method

.method public static nextServiceBindingIntentId()I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/appcelerator/titanium/TiBaseService;->serviceIntentIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 3
    .parameter "intent"

    .prologue
    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/titanium/TiBaseService;->createTiContext(Landroid/content/Intent;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 79
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    new-instance v1, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, v0, p0, p1, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Service;Landroid/content/Intent;I)V

    .line 80
    .local v1, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentService(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 81
    return-object v1
.end method

.method protected createTiContext(Landroid/content/Intent;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 4
    .parameter "intent"
    .parameter "baseUrl"

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBaseService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiApplication;

    .line 126
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 127
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiContext;->setServiceContext(Z)V

    .line 128
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 45
    new-instance v0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;-><init>(Lorg/appcelerator/titanium/TiBaseService;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    sget-boolean v3, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    if-eqz v3, :cond_0

    .line 89
    const-string v3, "TiBaseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onDestroy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 92
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 94
    .local v2, weakContext:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiContext;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 95
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->dispatchOnServiceDestroy(Landroid/app/Service;)V

    .line 97
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->release()V

    goto :goto_0

    .line 100
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #weakContext:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiContext;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 103
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iput-object v6, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    .line 105
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 106
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    monitor-enter v3

    .line 107
    :try_start_2
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 108
    .restart local v2       #weakContext:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiContext;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 109
    .restart local v0       #context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->dispatchOnServiceDestroy(Landroid/app/Service;)V

    .line 111
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->release()V

    goto :goto_1

    .line 114
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #weakContext:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiContext;>;"
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    iput-object v6, p0, Lorg/appcelerator/titanium/TiBaseService;->weakUnboundContexts:Ljava/util/List;

    .line 118
    return-void
.end method

.method public registerBoundTiContext(ILorg/appcelerator/titanium/TiContext;)I
    .locals 3
    .parameter "serviceIntentId"
    .parameter "tiContext"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 155
    return-void
.end method

.method protected unbindContext(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 160
    return-void
.end method

.method public unregisterBoundTiContext(I)V
    .locals 4
    .parameter "serviceIntentId"

    .prologue
    const-string v3, "TiBaseService"

    .line 50
    sget-boolean v1, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "TiBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBoundTiContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 54
    sget-boolean v1, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "TiBaseService"

    const-string v1, "unregisterBoundTiContext has no weakBoundContexts to work with.  Exiting..."

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    sget-boolean v1, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "TiBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBoundTiContxt found no weakBoundContext for service intent with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBaseService;->weakBoundContexts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 67
    .local v0, context:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiContext;>;"
    if-eqz v0, :cond_1

    .line 68
    sget-boolean v1, Lorg/appcelerator/titanium/TiBaseService;->DBG:Z

    if-eqz v1, :cond_4

    .line 69
    const-string v1, "TiBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering bound context with service intent id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiBaseService;->unbindContext(Lorg/appcelerator/titanium/TiContext;)V

    goto :goto_0
.end method
