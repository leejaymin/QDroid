.class public Lorg/appcelerator/kroll/KrollEventManager;
.super Ljava/lang/Object;
.source "KrollEventManager.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
.implements Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "KrollEventManager"

.field private static final TRACE:Z


# instance fields
.field protected eventChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/bridge/OnEventListenerChange;",
            ">;>;"
        }
    .end annotation
.end field

.field protected eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/kroll/KrollEventManager$KrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/kroll/KrollEventManager;->DBG:Z

    .line 34
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGV:Z

    sput-boolean v0, Lorg/appcelerator/kroll/KrollEventManager;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 43
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 45
    .local v0, tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isServiceContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->addOnServiceLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;)V

    .line 51
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollEventManager;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    .line 54
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/kroll/KrollEventManager;->DBG:Z

    return v0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 93
    const/4 v1, -0x1

    .line 94
    .local v1, listenerId:I
    const/4 v0, 0x0

    .line 96
    .local v0, listenerCount:I
    if-eqz p1, :cond_4

    .line 97
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v3, :cond_3

    .line 98
    if-eqz p2, :cond_2

    .line 99
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 101
    .local v2, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    if-nez v2, :cond_0

    .line 102
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    .restart local v2       #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollEventManager;->listenerIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;

    iget-object v6, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-direct {v5, v6, p2}, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;-><init>(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-boolean v4, Lorg/appcelerator/kroll/KrollEventManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "KrollEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added for eventName \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 113
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {p0, v3, p1, v0, v4}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchOnEventChange(ZLjava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 125
    return v1

    .line 113
    .end local v2           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 116
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "addEventListener expects a non-null listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "addEventListener expects a non-null KrollProxy"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "addEventListener expects a non-null eventName"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addOnEventChangeListener(Lorg/appcelerator/titanium/bridge/OnEventListenerChange;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z
    .locals 12
    .parameter "eventName"
    .parameter "data"
    .parameter "asyncCallback"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, dispatched:Z
    if-eqz p1, :cond_b

    .line 247
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 248
    .local v7, listeners:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    if-nez v7, :cond_1

    .line 249
    sget-boolean v8, Lorg/appcelerator/kroll/KrollEventManager;->TRACE:Z

    if-eqz v8, :cond_0

    .line 250
    const-string v8, "KrollEventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No listeners for eventName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    const/4 v8, 0x0

    .line 285
    :goto_0
    return v8

    .line 255
    :cond_1
    if-nez p2, :cond_2

    .line 256
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 258
    .restart local p2
    :cond_2
    const-string v8, "type"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 259
    const-string v8, "type"

    invoke-virtual {p2, v8, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 263
    .local v6, listenerSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;>;"
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    monitor-enter v8

    .line 264
    :try_start_0
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;

    .line 266
    .local v5, listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    iget-object v9, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/appcelerator/kroll/KrollEventManager;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v5, v9}, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->isSameProxy(Lorg/appcelerator/kroll/KrollProxy;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 267
    :cond_5
    const/4 v4, 0x0

    .line 269
    .local v4, invoked:Z
    :try_start_1
    iget-object v9, v5, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 270
    const-string v9, "source"

    invoke-virtual {p2, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 271
    const-string v9, "source"

    iget-object v10, v5, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_6
    invoke-virtual {v5, p1, p2, p3}, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->invoke(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 278
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    const/4 v9, 0x1

    move v0, v9

    :goto_3
    goto :goto_1

    .line 275
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 276
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "KrollEventManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error invoking listener with id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on eventName \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 281
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #invoked:Z
    .end local v5           #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 278
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #invoked:Z
    .restart local v5       #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    :cond_9
    const/4 v9, 0x0

    move v0, v9

    goto :goto_3

    .line 281
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    .end local v4           #invoked:Z
    .end local v5           #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    :cond_a
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v8, v0

    .line 285
    goto/16 :goto_0

    .line 283
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listenerSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;>;"
    .end local v7           #listeners:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    :cond_b
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "dispatchEvent expects a non-null eventName"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected dispatchOnEventChange(ZLjava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .parameter "added"
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 75
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 76
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/bridge/OnEventListenerChange;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/bridge/OnEventListenerChange;

    .line 77
    .local v1, l:Lorg/appcelerator/titanium/bridge/OnEventListenerChange;
    if-eqz v1, :cond_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    :try_start_0
    invoke-interface {v1, p2, p3, p4}, Lorg/appcelerator/titanium/bridge/OnEventListenerChange;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 85
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "KrollEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error invoking OnEventChangeListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-interface {v1, p2, p3, p4}, Lorg/appcelerator/titanium/bridge/OnEventListenerChange;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    .end local v1           #l:Lorg/appcelerator/titanium/bridge/OnEventListenerChange;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/bridge/OnEventListenerChange;>;"
    :cond_2
    return-void
.end method

.method public hasAnyEventListener(Ljava/lang/String;)Z
    .locals 4
    .parameter "eventName"

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, result:Z
    if-eqz p1, :cond_2

    .line 227
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 228
    .local v0, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 232
    .end local v0           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "removeEventListener expects a non-null eventName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollEventManager;->release()V

    .line 290
    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollEventManager;->release()V

    .line 310
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 292
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 293
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 294
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 295
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 304
    :cond_1
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 6
    .parameter "eventName"
    .parameter "listenerId"

    .prologue
    const-string v5, "KrollEventManager"

    .line 162
    if-eqz p1, :cond_2

    .line 163
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 164
    .local v1, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    if-eqz v1, :cond_0

    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;

    .line 166
    .local v0, listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 167
    sget-boolean v2, Lorg/appcelerator/kroll/KrollEventManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "KrollEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listenerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not for eventName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0           #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v0       #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    iget-object v2, v0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {p0, v3, p1, v4, v2}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchOnEventChange(ZLjava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 172
    sget-boolean v2, Lorg/appcelerator/kroll/KrollEventManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "KrollEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with eventName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0           #listener:Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
    .end local v1           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "removeEventListener expects a non-null eventName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 184
    instance-of v7, p2, Ljava/lang/Number;

    if-eqz v7, :cond_1

    .line 185
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lorg/appcelerator/kroll/KrollEventManager;->removeEventListener(Ljava/lang/String;I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p2
    :cond_1
    const/4 v6, 0x0

    .line 190
    .local v6, removed:Z
    const/4 v4, 0x0

    .line 191
    .local v4, newCount:I
    const/4 v5, 0x0

    .line 193
    .local v5, proxyOfListener:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    if-eqz p1, :cond_5

    .line 194
    iget-object v8, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    monitor-enter v8

    .line 195
    :try_start_0
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventListeners:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 196
    .local v3, listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    if-eqz v3, :cond_4

    .line 197
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;

    iget-object v2, v7, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->listener:Ljava/lang/Object;

    .line 200
    .local v2, l:Ljava/lang/Object;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v6, 0x1

    .line 204
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;

    iget-object v5, v7, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    .line 209
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    .end local v2           #l:Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_4

    .line 210
    const-string v7, "KrollEventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listener not found for eventName \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v6, :cond_0

    .line 215
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {p0, v8, p1, v4, v7}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchOnEventChange(ZLjava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 213
    .end local v3           #listeners:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/appcelerator/kroll/KrollEventManager$KrollListener;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 218
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "removeEventListener expects a non-null eventName"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public removeOnEventChangeListener(Lorg/appcelerator/titanium/bridge/OnEventListenerChange;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 62
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 63
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/bridge/OnEventListenerChange;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/bridge/OnEventListenerChange;

    .line 64
    .local v1, l:Lorg/appcelerator/titanium/bridge/OnEventListenerChange;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollEventManager;->eventChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .end local v1           #l:Lorg/appcelerator/titanium/bridge/OnEventListenerChange;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/bridge/OnEventListenerChange;>;"
    :cond_1
    return-void
.end method
