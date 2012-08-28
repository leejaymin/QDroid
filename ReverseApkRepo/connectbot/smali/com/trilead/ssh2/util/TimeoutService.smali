.class public Lcom/trilead/ssh2/util/TimeoutService;
.super Ljava/lang/Object;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;,
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    }
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;

.field private static timeoutThread:Ljava/lang/Thread;

.field private static final todolist:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/trilead/ssh2/util/TimeoutService;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->log:Lcom/trilead/ssh2/log/Logger;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    sput-object p0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$2()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    .locals 4
    .parameter "runTime"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;-><init>(JLjava/lang/Runnable;Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 120
    .local v0, token:Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    sget-object v2, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v2

    .line 122
    :try_start_0
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 120
    :goto_0
    monitor-exit v2

    .line 135
    return-object v0

    .line 129
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;-><init>(Lcom/trilead/ssh2/util/TimeoutService$TimeoutThread;)V

    sput-object v1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    .line 130
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 131
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 140
    sget-object v1, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->todolist:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/trilead/ssh2/util/TimeoutService;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 140
    :cond_0
    monitor-exit v1

    .line 147
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
