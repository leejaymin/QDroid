.class public Lorg/mozilla/javascript/InterfaceAdapter;
.super Ljava/lang/Object;
.source "InterfaceAdapter.java"


# instance fields
.field private final proxyHelper:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Class;)V
    .locals 3
    .parameter "cf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ContextFactory;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/VMBridge;->getInterfaceProxyHelper(Lorg/mozilla/javascript/ContextFactory;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/InterfaceAdapter;->proxyHelper:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method static create(Lorg/mozilla/javascript/Context;Ljava/lang/Class;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;
    .locals 13
    .parameter "cx"
    .parameter
    .parameter "function"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/mozilla/javascript/Callable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 64
    .local v5, topScope:Lorg/mozilla/javascript/Scriptable;
    invoke-static {v5}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object v7

    .line 66
    .local v7, cache:Lorg/mozilla/javascript/ClassCache;
    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ClassCache;->getInterfaceAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/InterfaceAdapter;

    .line 67
    .local v3, adapter:Lorg/mozilla/javascript/InterfaceAdapter;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v2

    .line 68
    .local v2, cf:Lorg/mozilla/javascript/ContextFactory;
    if-nez v3, :cond_7

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    .line 70
    .local v11, methods:[Ljava/lang/reflect/Method;
    array-length v0, v11

    if-nez v0, :cond_1

    .line 71
    const-string v0, "msg.no.empty.interface.conversion"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 76
    :cond_1
    const/4 v8, 0x0

    .line 78
    .local v8, canCallFunction:Z
    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 80
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .local v9, i:I
    :goto_0
    array-length v0, v11

    if-eq v9, v0, :cond_5

    .line 81
    aget-object v0, v11, v9

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 82
    .local v12, types2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, v12

    array-length v1, v6

    if-eq v0, v1, :cond_3

    .line 93
    .end local v12           #types2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    if-nez v8, :cond_6

    .line 94
    const-string v0, "msg.no.function.interface.conversion"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 85
    .restart local v12       #types2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    array-length v0, v6

    if-eq v10, v0, :cond_4

    .line 86
    aget-object v0, v12, v10

    aget-object v1, v6, v10

    if-ne v0, v1, :cond_2

    .line 85
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 80
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 91
    .end local v10           #j:I
    .end local v12           #types2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .line 99
    :cond_6
    new-instance v3, Lorg/mozilla/javascript/InterfaceAdapter;

    .end local v3           #adapter:Lorg/mozilla/javascript/InterfaceAdapter;
    invoke-direct {v3, v2, p1}, Lorg/mozilla/javascript/InterfaceAdapter;-><init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Class;)V

    .line 100
    .restart local v3       #adapter:Lorg/mozilla/javascript/InterfaceAdapter;
    invoke-virtual {v7, p1, v3}, Lorg/mozilla/javascript/ClassCache;->cacheInterfaceAdapter(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 102
    .end local v6           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v8           #canCallFunction:Z
    .end local v9           #i:I
    .end local v11           #methods:[Ljava/lang/reflect/Method;
    :cond_7
    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    iget-object v1, v3, Lorg/mozilla/javascript/InterfaceAdapter;->proxyHelper:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/VMBridge;->newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "cf"
    .parameter "target"
    .parameter "topScope"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 119
    new-instance v0, Lorg/mozilla/javascript/InterfaceAdapter$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/InterfaceAdapter$1;-><init>(Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 125
    .local v0, action:Lorg/mozilla/javascript/ContextAction;
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method invokeImpl(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "cx"
    .parameter "target"
    .parameter "topScope"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 134
    if-nez p5, :cond_0

    const/4 v9, 0x0

    move v1, v9

    .line 136
    .local v1, N:I
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v2, v0

    .line 137
    .local v2, function:Lorg/mozilla/javascript/Callable;
    move-object v7, p3

    .line 138
    .local v7, thisObj:Lorg/mozilla/javascript/Scriptable;
    add-int/lit8 v9, v1, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    .line 139
    .local v5, jsargs:[Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v8

    .line 142
    .local v8, wf:Lorg/mozilla/javascript/WrapFactory;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v1, :cond_1

    .line 143
    aget-object v9, p5, v3

    const/4 v10, 0x0

    invoke-virtual {v8, p1, p3, v9, v10}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v1           #N:I
    .end local v2           #function:Lorg/mozilla/javascript/Callable;
    .end local v3           #i:I
    .end local v5           #jsargs:[Ljava/lang/Object;
    .end local v7           #thisObj:Lorg/mozilla/javascript/Scriptable;
    .end local v8           #wf:Lorg/mozilla/javascript/WrapFactory;
    :cond_0
    move-object/from16 v0, p5

    array-length v0, v0

    move v9, v0

    move v1, v9

    goto :goto_0

    .line 147
    .restart local v1       #N:I
    .restart local v2       #function:Lorg/mozilla/javascript/Callable;
    .restart local v5       #jsargs:[Ljava/lang/Object;
    .restart local v7       #thisObj:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-interface {v2, p1, p3, v7, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 148
    .local v6, result:Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 149
    .local v4, javaResultType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_2

    .line 150
    const/4 v6, 0x0

    .line 154
    .end local v6           #result:Ljava/lang/Object;
    :goto_2
    return-object v6

    .line 152
    .restart local v6       #result:Ljava/lang/Object;
    :cond_2
    invoke-static {v6, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2
.end method
