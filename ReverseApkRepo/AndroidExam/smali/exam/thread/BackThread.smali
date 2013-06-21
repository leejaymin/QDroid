.class Lexam/thread/BackThread;
.super Ljava/lang/Thread;
.source "HandlerTest.java"


# instance fields
.field mBackValue:I

.field mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lexam/thread/BackThread;->mBackValue:I

    .line 193
    iput-object p1, p0, Lexam/thread/BackThread;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    :goto_0
    iget v1, p0, Lexam/thread/BackThread;->mBackValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lexam/thread/BackThread;->mBackValue:I

    .line 199
    iget-object v1, p0, Lexam/thread/BackThread;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lexam/thread/BackThread;->mBackValue:I

    invoke-static {v1, v3, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lexam/thread/BackThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
