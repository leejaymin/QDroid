.class public Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;
.super Lorg/mozilla/javascript/VMBridge;
.source "VMBridge_jdk13.java"


# instance fields
.field private contextLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/mozilla/javascript/VMBridge;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;->contextLocal:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method protected getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;
    .locals 3
    .parameter "contextHelper"

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 78
    .local v1, storage:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object p0, v1, v2

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Context;

    return-object p0
.end method

.method protected getCurrentThreadClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getInterfaceProxyHelper(Lorg/mozilla/javascript/ContextFactory;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .parameter "cf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ContextFactory;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 117
    aget-object v4, p2, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 118
    .local v3, loader:Ljava/lang/ClassLoader;
    invoke-static {v3, p2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 121
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/reflect/InvocationHandler;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    .local v0, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    return-object v0

    .line 122
    .end local v0           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 124
    .local v2, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v4, v2}, Lorg/mozilla/javascript/Kit;->initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method protected getThreadContextHelper()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 67
    .local v0, storage:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method protected isVarArgs(Ljava/lang/reflect/Member;)Z
    .locals 1
    .parameter "member"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 10
    .parameter "proxyHelper"
    .parameter "cf"
    .parameter "adapter"
    .parameter "target"
    .parameter "topScope"

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v7, v0

    .line 138
    .local v7, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    new-instance v1, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;-><init>(Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;Lorg/mozilla/javascript/InterfaceAdapter;Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)V

    .line 148
    .local v1, handler:Ljava/lang/reflect/InvocationHandler;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 158
    .local v9, proxy:Ljava/lang/Object;
    return-object v9

    .line 149
    .end local v9           #proxy:Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 150
    .local v8, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v8}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 151
    .end local v8           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    move-object v8, v2

    .line 153
    .local v8, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v8}, Lorg/mozilla/javascript/Kit;->initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 154
    .end local v8           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v8, v2

    .line 156
    .local v8, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v8}, Lorg/mozilla/javascript/Kit;->initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method protected setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V
    .locals 3
    .parameter "contextHelper"
    .parameter "cx"

    .prologue
    .line 84
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 85
    .local v1, storage:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 86
    return-void
.end method

.method protected tryToMakeAccessible(Ljava/lang/Object;)Z
    .locals 4
    .parameter "accessibleObject"

    .prologue
    const/4 v3, 0x1

    .line 97
    instance-of v2, p1, Ljava/lang/reflect/AccessibleObject;

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    .line 108
    :goto_0
    return v2

    .line 100
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    move-object v1, v0

    .line 101
    .local v1, accessible:Ljava/lang/reflect/AccessibleObject;
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    goto :goto_1
.end method
