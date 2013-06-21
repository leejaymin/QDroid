.class final Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/events/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatcherDelegateClosure"
.end annotation


# instance fields
.field private final dataMemberName:Ljava/lang/String;

.field private final dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

.field private final eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dispatchDelegate"
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;Lcom/google/devtools/simple/runtime/events/EventDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;-><init>(Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 135
    :goto_0
    return v2

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;

    move-object v1, v0

    .line 123
    .local v1, that:Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 125
    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    iget-object v3, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 129
    goto :goto_0

    .line 127
    :cond_7
    iget-object v2, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    if-nez v2, :cond_6

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v4

    .line 132
    goto :goto_0

    .line 131
    :cond_a
    iget-object v2, v1, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    move v2, v5

    .line 135
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 141
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dataMemberName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/events/EventDispatcher$DispatcherDelegateClosure;->dispatchDelegate:Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 143
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 140
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 141
    goto :goto_1

    :cond_2
    move v2, v3

    .line 142
    goto :goto_2
.end method
