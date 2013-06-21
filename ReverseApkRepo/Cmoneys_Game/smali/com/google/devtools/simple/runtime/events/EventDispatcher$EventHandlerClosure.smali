.class final Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/events/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventHandlerClosure"
.end annotation


# instance fields
.field private dataMember:Ljava/lang/reflect/Field;

.field private eventHandler:Ljava/lang/reflect/Method;

.field private final object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "object"
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->object:Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 56
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->eventHandler:Ljava/lang/reflect/Method;

    .line 64
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->dataMember:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    return-void

    .line 55
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v4           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method getDataMemberObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->dataMember:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, ignored:Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method varargs invokeEvent([Ljava/lang/Object;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->eventHandler:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$EventHandlerClosure;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, t:Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;
    throw v0

    .line 94
    .end local v0           #t:Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, t:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;->convertToRuntimeError(Ljava/lang/Throwable;)Lcom/google/devtools/simple/runtime/errors/RuntimeError;

    goto :goto_0
.end method
