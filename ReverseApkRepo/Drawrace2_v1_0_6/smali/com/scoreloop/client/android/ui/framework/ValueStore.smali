.class public Lcom/scoreloop/client/android/ui/framework/ValueStore;
.super Ljava/lang/Object;
.source "ValueStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;,
        Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;,
        Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;,
        Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;,
        Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    }
.end annotation


# static fields
.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private final _dates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private _factory:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;

.field private _observerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private _valueSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;",
            ">;"
        }
    .end annotation
.end field

.field private final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    return-void
.end method

.method public static varargs concatenateKeys([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "keys"

    .prologue
    const/4 v4, 0x0

    .line 69
    array-length v2, p0

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 80
    :goto_0
    return-object v2

    .line 71
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 72
    aget-object v2, p0, v4

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, builder:Ljava/lang/StringBuilder;
    aget-object v2, p0, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 77
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private forAllObservers(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 6
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getObserverMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 124
    .local v3, observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    if-nez v3, :cond_1

    .line 136
    :cond_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v0, copiedObservers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 129
    .local v4, weakObserver:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;

    .line 130
    .local v2, observer:Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;
    if-eqz v2, :cond_2

    .line 131
    const/4 v5, 0x0

    invoke-interface {p2, v2, v5}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    .locals 5
    .parameter "key"
    .parameter "doCreate"

    .prologue
    .line 139
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;-><init>(Lcom/scoreloop/client/android/ui/framework/ValueStore$1;)V

    .line 140
    .local v1, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->splitKeyComponents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, components:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->firstKey:Ljava/lang/String;

    .line 142
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    iget-object v3, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->firstKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iput-object v2, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 144
    iget-object v2, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 145
    new-instance v2, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v2, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 146
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    iget-object v3, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->firstKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-object v1
.end method

.method private getObserverMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_observerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_observerMap:Ljava/util/Map;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_observerMap:Ljava/util/Map;

    return-object v0
.end method

.method private getValueSource(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    .locals 6
    .parameter "key"

    .prologue
    .line 179
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValueSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    .line 181
    .local v2, source:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    invoke-interface {v2, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;->supportedKeys(Ljava/util/Set;)V

    .line 182
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    .end local v2           #source:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    :goto_0
    return-object v2

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_factory:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;

    if-nez v4, :cond_2

    .line 189
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_factory:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;

    invoke-interface {v4, p1, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;->getValueSourceForKeyInStore(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    move-result-object v3

    .line 192
    .local v3, valueSource:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    if-eqz v3, :cond_3

    .line 193
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addValueSources([Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;)V

    :cond_3
    move-object v2, v3

    .line 195
    goto :goto_0
.end method

.method private getValueSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_valueSources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_valueSources:Ljava/util/List;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_valueSources:Ljava/util/List;

    return-object v0
.end method

.method private invokeChangedObservers(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 206
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/ValueStore$1;-><init>(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->forAllObservers(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 212
    return-void
.end method

.method private invokeSetDirtyObservers(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 215
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore$2;-><init>(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->forAllObservers(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 221
    return-void
.end method

.method private isClean(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z
    .locals 8
    .parameter "key"
    .parameter "mode"
    .parameter "argument"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 225
    .local v0, date:Ljava/util/Date;
    sget-object v4, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    if-ne p2, v4, :cond_2

    .line 226
    if-eqz v0, :cond_1

    .line 235
    .end local p3
    :cond_0
    :goto_0
    return v2

    .restart local p3
    :cond_1
    move v2, v3

    .line 226
    goto :goto_0

    .line 227
    :cond_2
    sget-object v4, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    if-ne p2, v4, :cond_0

    .line 228
    if-nez v0, :cond_3

    move v2, v3

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 232
    .local v1, reference:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    check-cast p3, Ljava/lang/Long;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private static isPlainKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 85
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static splitKeyComponents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 89
    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V
    .locals 4
    .parameter "key"
    .parameter "observer"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getObserverMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 101
    .local v1, observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v1       #observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_observerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1           #observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 108
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v3, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    goto :goto_0
.end method

.method public varargs addValueSources([Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;)V
    .locals 1
    .parameter "sources"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValueSources()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method copyFromOtherForKeys(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/util/Set;)V
    .locals 3
    .parameter "otherValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, defaultIfNotFound:Ljava/lang/Object;,"TT;"
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 175
    .end local p2           #defaultIfNotFound:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 170
    .restart local p2       #defaultIfNotFound:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 171
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 243
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v2, :cond_0

    .line 244
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isDirty(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 251
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, oldValue:Ljava/lang/Object;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    if-eq v1, p2, :cond_0

    .line 256
    invoke-direct {p0, p1, v1, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->invokeChangedObservers(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .end local v1           #oldValue:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 260
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v3, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V
    .locals 8
    .parameter "key"
    .parameter "anObserver"

    .prologue
    .line 265
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getObserverMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 267
    .local v4, observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    if-eqz v4, :cond_3

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v0, copiedObservers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 270
    .local v5, weakObserver:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;

    .line 271
    .local v3, observer:Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;
    if-eqz v3, :cond_1

    if-ne v3, p2, :cond_0

    .line 272
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v0           #copiedObservers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #observer:Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;
    .end local v4           #observers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;>;"
    .end local v5           #weakObserver:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;>;"
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v2

    .line 278
    .local v2, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v6, v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v6, :cond_3

    .line 279
    iget-object v6, v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v7, v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->removeObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    .line 282
    .end local v2           #node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    :cond_3
    return-void
.end method

.method public retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"
    .parameter "mode"
    .parameter "argument"

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isClean(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/4 v2, 0x1

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValueSource(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    move-result-object v1

    .line 291
    .local v1, source:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;->isRetrieving()Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    invoke-interface {v1, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;->retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V

    goto :goto_0

    .line 296
    .end local v1           #source:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 297
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v3, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v3, :cond_0

    .line 298
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v3, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method runObserverForKeys(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/util/Set;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V
    .locals 9
    .parameter "oldValues"
    .parameter
    .parameter "observer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 305
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    invoke-interface {p3, p0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;->onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 310
    .local v5, oldValue:Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    .local v2, newValue:Ljava/lang/Object;
    if-eq v5, v2, :cond_0

    .line 312
    invoke-interface {p3, p0, v1, v5, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;->onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .end local v2           #newValue:Ljava/lang/Object;
    .end local v5           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v5, v7

    .line 309
    goto :goto_1

    .line 315
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v3

    .line 316
    .local v3, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v6, v3, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v6, :cond_0

    .line 317
    if-eqz p1, :cond_3

    iget-object v6, v3, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->firstKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-object v4, v6

    .line 318
    .local v4, oldRestStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    :goto_2
    iget-object v6, v3, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v8, v3, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v4, v8, p3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->runObserverForKeys(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/util/Set;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    goto :goto_0

    .end local v4           #oldRestStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    :cond_3
    move-object v4, v7

    .line 317
    goto :goto_2

    .line 322
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    :cond_4
    return-void
.end method

.method public setAllDirty()V
    .locals 4

    .prologue
    .line 325
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 326
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 328
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v3, :cond_0

    .line 329
    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setAllDirty()V

    goto :goto_0

    .line 331
    .restart local v2       #value:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->invokeSetDirtyObservers(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setDirty(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 337
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->isPlainKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->invokeSetDirtyObservers(Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getNode(Ljava/lang/String;Z)Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;

    move-result-object v0

    .line 342
    .local v0, node:Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v2, v0, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;->restKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setDirty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValueSourceFactroy(Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_factory:Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;

    .line 350
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const/4 v2, 0x1

    .line 358
    .local v2, isFirst:Z
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 359
    .local v3, key:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 360
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_values:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 365
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/framework/ValueStore;->_dates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 367
    const-string v5, "(*)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_1
    const/4 v2, 0x0

    .line 370
    goto :goto_0

    .line 365
    :cond_2
    const-string v5, "NULL"

    goto :goto_1

    .line 371
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_3
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
