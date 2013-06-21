.class public Lcom/google/devtools/simple/runtime/events/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/events/EventDispatcher$1;,
        Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;,
        Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static dispatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;",
            ">;>;"
        }
    .end annotation
.end field

.field private static registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->registry:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method private static varargs delegateDispatchEvent(Ljava/util/Set;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter "dataMember"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;",
            ">;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;

    .line 281
    .local v0, delegateClosure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$200(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    move-result-object v1

    .line 282
    .local v1, dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;
    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$100(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$300(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;->canDispatchEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$100(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$300(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4, p2}, Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    .end local v0           #delegateClosure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    .end local v1           #dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;
    :cond_1
    return-void
.end method

.method public static varargs dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "that"
    .parameter "eventName"
    .parameter "args"

    .prologue
    .line 247
    sget-object v4, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 248
    .local v2, delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 249
    invoke-static {v2, p0, p2}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->delegateDispatchEvent(Ljava/util/Set;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    sget-object v4, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->registry:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 252
    .local v1, closures:Ljava/util/List;,"Ljava/util/List<Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;>;"
    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;

    .line 254
    .local v0, closure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->getDataMemberObject()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 255
    invoke-virtual {v0, p2}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->invokeEvent([Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    .end local v0           #closure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "object"
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 172
    sget-object v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->registry:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    .local v0, closures:Ljava/util/List;,"Ljava/util/List<Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;>;"
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #closures:Ljava/util/List;,"Ljava/util/List<Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v0       #closures:Ljava/util/List;,"Ljava/util/List<Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;>;"
    sget-object v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->registry:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public static registerEventForDelegation(Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "dispatchDelegate"
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 191
    sget-object v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 192
    .local v0, delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    .restart local v0       #delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    sget-object v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    new-instance v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;-><init>(Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;Lcom/google/devtools/simple/runtime/events/EventDispatcher$1;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public static unregisterAllEventsForDelegation()V
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 234
    return-void
.end method

.method public static unregisterEventForDelegation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 211
    sget-object v4, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 212
    .local v1, delegateClosures:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    if-nez v1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 213
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v3, toDelete:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;

    .line 215
    .local v0, delegateClosure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    #getter for: Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->access$100(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v0           #delegateClosure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;

    .line 224
    .restart local v0       #delegateClosure:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
