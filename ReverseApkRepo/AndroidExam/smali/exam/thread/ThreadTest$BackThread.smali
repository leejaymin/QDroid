.class Lexam/thread/ThreadTest$BackThread;
.super Ljava/lang/Thread;
.source "ThreadTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/ThreadTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/ThreadTest;


# direct methods
.method constructor <init>(Lexam/thread/ThreadTest;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lexam/thread/ThreadTest$BackThread;->this$0:Lexam/thread/ThreadTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    :goto_0
    iget-object v0, p0, Lexam/thread/ThreadTest$BackThread;->this$0:Lexam/thread/ThreadTest;

    iget v1, v0, Lexam/thread/ThreadTest;->mBackValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/ThreadTest;->mBackValue:I

    .line 41
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
