.class Lexam/thread/LongTime2$1;
.super Landroid/os/Handler;
.source "LongTime2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/LongTime2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime2;


# direct methods
.method constructor <init>(Lexam/thread/LongTime2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 30
    iget-object v0, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    iget v1, v0, Lexam/thread/LongTime2;->mValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/LongTime2;->mValue:I

    .line 31
    iget-object v0, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    iget-object v0, v0, Lexam/thread/LongTime2;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    iget v1, v1, Lexam/thread/LongTime2;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    iget-object v0, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    iget v0, v0, Lexam/thread/LongTime2;->mValue:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lexam/thread/LongTime2$1;->this$0:Lexam/thread/LongTime2;

    iget-object v0, v0, Lexam/thread/LongTime2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    :cond_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method
