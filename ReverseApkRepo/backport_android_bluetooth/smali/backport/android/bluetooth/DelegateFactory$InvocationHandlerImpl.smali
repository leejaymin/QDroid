.class final Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/DelegateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvocationHandlerImpl"
.end annotation


# instance fields
.field final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final mDelegate:Ljava/lang/Object;

.field final mMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter "delegateInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, receiver:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, delegateClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p3, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mDelegate:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mClass:Ljava/lang/Class;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;>;"
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mMethodCache:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private getMethodFromCache(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mMethodCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mMethodCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .local v0, delegate:Ljava/lang/reflect/Method;
    move-object v1, v0

    .line 65
    .end local v0           #delegate:Ljava/lang/reflect/Method;
    .local v1, delegate:Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 62
    .end local v1           #delegate:Ljava/lang/reflect/Method;
    :cond_0
    iget-object v2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mClass:Ljava/lang/Class;

    invoke-static {p1, v2}, Lbackport/android/bluetooth/DelegateFactory;->getDelegateMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    .restart local v0       #delegate:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lbackport/android/bluetooth/DelegateFactory;->makeAccessible(Ljava/lang/reflect/Method;)V

    .line 64
    iget-object v2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mMethodCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 65
    .end local v0           #delegate:Ljava/lang/reflect/Method;
    .restart local v1       #delegate:Ljava/lang/reflect/Method;
    goto :goto_0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "target"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 30
    invoke-direct {p0, p2}, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->getMethodFromCache(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 32
    .local v0, delegateMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lbackport/android/bluetooth/DelegateFactory;->hasDelegateMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 50
    :goto_0
    return-object v5

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    .local v2, receiver:Ljava/lang/Object;
    invoke-static {v0}, Lbackport/android/bluetooth/DelegateFactory;->isMethodStatic(Ljava/lang/reflect/Method;)Z

    move-result v4

    .line 39
    .local v4, staticMethod:Z
    if-nez v4, :cond_1

    .line 40
    iget-object v2, p0, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;->mDelegate:Ljava/lang/Object;

    .line 43
    .end local v2           #receiver:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v2}, Lbackport/android/bluetooth/DelegateFactory;->canInvoke(ZLjava/lang/Object;)Z

    move-result v1

    .line 45
    .local v1, invoke:Z
    if-nez v1, :cond_2

    move-object v5, v6

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, res:Ljava/lang/Object;
    move-object v5, v3

    .line 50
    goto :goto_0
.end method
