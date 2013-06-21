.class Lexam/thread/BackWork2$AccumThread;
.super Ljava/lang/Thread;
.source "BackWork2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/BackWork2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccumThread"
.end annotation


# instance fields
.field mAfter:Landroid/os/Handler;

.field mEnd:I

.field mQuit:Z

.field mResult:I

.field mStart:I

.field final synthetic this$0:Lexam/thread/BackWork2;


# direct methods
.method constructor <init>(Lexam/thread/BackWork2;IILandroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "after"

    .prologue
    .line 50
    iput-object p1, p0, Lexam/thread/BackWork2$AccumThread;->this$0:Lexam/thread/BackWork2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    iput p2, p0, Lexam/thread/BackWork2$AccumThread;->mStart:I

    .line 52
    iput p3, p0, Lexam/thread/BackWork2$AccumThread;->mEnd:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexam/thread/BackWork2$AccumThread;->mQuit:Z

    .line 54
    iput-object p4, p0, Lexam/thread/BackWork2$AccumThread;->mAfter:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    iput v3, p0, Lexam/thread/BackWork2$AccumThread;->mResult:I

    .line 59
    iget v0, p0, Lexam/thread/BackWork2$AccumThread;->mStart:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lexam/thread/BackWork2$AccumThread;->mEnd:I

    if-le v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lexam/thread/BackWork2$AccumThread;->mAfter:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    :cond_0
    return-void

    .line 60
    :cond_1
    iget v1, p0, Lexam/thread/BackWork2$AccumThread;->mResult:I

    add-int/2addr v1, v0

    iput v1, p0, Lexam/thread/BackWork2$AccumThread;->mResult:I

    .line 61
    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    iget-boolean v1, p0, Lexam/thread/BackWork2$AccumThread;->mQuit:Z

    if-nez v1, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_1
.end method
