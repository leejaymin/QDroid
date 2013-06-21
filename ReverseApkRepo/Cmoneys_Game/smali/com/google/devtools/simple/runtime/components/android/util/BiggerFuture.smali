.class public Lcom/google/devtools/simple/runtime/components/android/util/BiggerFuture;
.super Ljava/lang/Thread;
.source "BiggerFuture.java"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V
    .locals 7
    .parameter "action"
    .parameter "penvironment"
    .parameter "in"
    .parameter "out"
    .parameter "err"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 15
    new-instance v6, Ljava/lang/ThreadGroup;

    const-string v0, "biggerthreads"

    invoke-direct {v6, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v0, Lgnu/mapping/RunnableClosure;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    move-object v1, p0

    move-object v2, v6

    move-object v3, v0

    move-object v4, p6

    move-wide v5, p7

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "#<future "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/util/BiggerFuture;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
