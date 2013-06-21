.class public Lorg/mozilla/javascript/ClassCache;
.super Ljava/lang/Object;
.source "ClassCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AKEY:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = -0x7b0b3bcb6923e0d7L


# instance fields
.field private associatedScope:Lorg/mozilla/javascript/Scriptable;

.field private volatile cachingIsEnabled:Z

.field private transient classAdapterCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private transient classTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/mozilla/javascript/JavaMembers;",
            ">;"
        }
    .end annotation
.end field

.field private generatedClassSerial:I

.field private transient interfaceAdapterCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ClassCache"

    sput-object v0, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    return-void
.end method

.method public static get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;
    .locals 3
    .parameter "scope"

    .prologue
    .line 80
    sget-object v1, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ClassCache;

    .line 82
    .local v0, cache:Lorg/mozilla/javascript/ClassCache;
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t find top level scope for ClassCache.get"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public associate(Lorg/mozilla/javascript/ScriptableObject;)Z
    .locals 1
    .parameter "topScope"

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 107
    iput-object p1, p0, Lorg/mozilla/javascript/ClassCache;->associatedScope:Lorg/mozilla/javascript/Scriptable;

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized cacheInterfaceAdapter(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "iadapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCaches()V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/HashMap;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/HashMap;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAssociatedScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->associatedScope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method getClassCacheMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/mozilla/javascript/JavaMembers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/HashMap;

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/HashMap;

    return-object v0
.end method

.method getInterfaceAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getInterfaceAdapterCacheMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/HashMap;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public final isCachingEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    return v0
.end method

.method public isInvokerOptimizationEnabled()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized newClassSerialNumber()I
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/javascript/ClassCache;->generatedClassSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ClassCache;->generatedClassSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCachingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->clearCaches()V

    .line 156
    :cond_1
    iput-boolean p1, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInvokerOptimizationEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 198
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
