.class public Lgnu/mapping/Future;
.super Ljava/lang/Thread;
.source "Future.java"


# instance fields
.field public closure:Lgnu/mapping/RunnableClosure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 28
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "action"
    .parameter "parentContext"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 10
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;Lgnu/mapping/Environment;)V
    .locals 2
    .parameter "action"
    .parameter "parentContext"
    .parameter "penvironment"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2, p3}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;Lgnu/mapping/Environment;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 16
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v0, Lgnu/mapping/RunnableClosure;->environment:Lgnu/mapping/Environment;

    invoke-virtual {p0}, Lgnu/mapping/Future;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .locals 6
    .parameter "action"
    .parameter "penvironment"
    .parameter "in"
    .parameter "out"
    .parameter "err"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    new-instance v0, Lgnu/mapping/RunnableClosure;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 23
    return-void
.end method


# virtual methods
.method public final getCallContext()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->getCallContext()Lgnu/mapping/CallContext;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v0, Lgnu/mapping/RunnableClosure;->environment:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->run()V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "#<future "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lgnu/mapping/Future;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public waitForResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/Future;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v1, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v1, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 54
    .local v0, ex:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 55
    throw v0

    .line 49
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 51
    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "thread join [force] was interrupted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .local v0, ex:Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v1, v1, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v1
.end method
