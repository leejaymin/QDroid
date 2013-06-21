.class public Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;
.super Ljava/lang/Object;
.source "AsynchUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "androidUIHandler"
    .parameter "call"
    .parameter "callback"

    .prologue
    .line 33
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 45
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    return-void
.end method
