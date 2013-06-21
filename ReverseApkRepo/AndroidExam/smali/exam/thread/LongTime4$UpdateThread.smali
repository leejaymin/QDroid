.class Lexam/thread/LongTime4$UpdateThread;
.super Ljava/lang/Thread;
.source "LongTime4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/LongTime4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime4;


# direct methods
.method constructor <init>(Lexam/thread/LongTime4;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    :goto_0
    iget-object v1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    iget-boolean v1, v1, Lexam/thread/LongTime4;->mQuit:Z

    if-eqz v1, :cond_0

    .line 75
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    iget v2, v1, Lexam/thread/LongTime4;->mValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lexam/thread/LongTime4;->mValue:I

    .line 70
    iget-object v1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    iget-object v1, v1, Lexam/thread/LongTime4;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    iget v1, v1, Lexam/thread/LongTime4;->mValue:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 72
    iget-object v1, p0, Lexam/thread/LongTime4$UpdateThread;->this$0:Lexam/thread/LongTime4;

    iget-object v1, v1, Lexam/thread/LongTime4;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
