.class public Lcom/rookiestudio/perfectviewer/LongRunning;
.super Ljava/lang/Object;
.source "LongRunning.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private finishedHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunning;,"Lcom/rookiestudio/perfectviewer/LongRunning<TResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunning;->finishedHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/LongRunning;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/LongRunning;->finishedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunning;,"Lcom/rookiestudio/perfectviewer/LongRunning<TResultType;>;"
    .local p1, result:Ljava/lang/Object;,"TResultType;"
    return-void
.end method

.method public startLongRunningAction(Ljava/util/concurrent/Callable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/rookiestudio/perfectviewer/LongRunning;,"Lcom/rookiestudio/perfectviewer/LongRunning<TResultType;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResultType;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rookiestudio/perfectviewer/LongRunning$1;

    invoke-direct {v1, p0, p1}, Lcom/rookiestudio/perfectviewer/LongRunning$1;-><init>(Lcom/rookiestudio/perfectviewer/LongRunning;Ljava/util/concurrent/Callable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method
