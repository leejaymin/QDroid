.class Lexam/thread/CalcThread$1;
.super Landroid/os/Handler;
.source "LooperTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/CalcThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/CalcThread;


# direct methods
.method constructor <init>(Lexam/thread/CalcThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/CalcThread$1;->this$0:Lexam/thread/CalcThread;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, retmsg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 97
    :goto_0
    iget-object v1, p0, Lexam/thread/CalcThread$1;->this$0:Lexam/thread/CalcThread;

    iget-object v1, v1, Lexam/thread/CalcThread;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void

    .line 87
    :pswitch_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 89
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 92
    :pswitch_1
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    new-instance v1, Ljava/lang/Double;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    goto :goto_2

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
