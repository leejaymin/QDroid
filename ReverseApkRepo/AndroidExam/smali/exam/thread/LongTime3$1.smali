.class Lexam/thread/LongTime3$1;
.super Landroid/os/Handler;
.source "LongTime3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/LongTime3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime3;


# direct methods
.method constructor <init>(Lexam/thread/LongTime3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget v1, v0, Lexam/thread/LongTime3;->mValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/LongTime3;->mValue:I

    .line 54
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget-object v0, v0, Lexam/thread/LongTime3;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget v1, v1, Lexam/thread/LongTime3;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget v0, v0, Lexam/thread/LongTime3;->mValue:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget-boolean v0, v0, Lexam/thread/LongTime3;->mQuit:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget-object v0, v0, Lexam/thread/LongTime3;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget v1, v1, Lexam/thread/LongTime3;->mValue:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 58
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    iget-object v0, v0, Lexam/thread/LongTime3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    :goto_1
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lexam/thread/LongTime3$1;->this$0:Lexam/thread/LongTime3;

    invoke-virtual {v0, v2}, Lexam/thread/LongTime3;->dismissDialog(I)V

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
