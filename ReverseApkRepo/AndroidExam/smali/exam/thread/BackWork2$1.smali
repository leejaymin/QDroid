.class Lexam/thread/BackWork2$1;
.super Landroid/os/Handler;
.source "BackWork2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/BackWork2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/BackWork2;


# direct methods
.method constructor <init>(Lexam/thread/BackWork2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/BackWork2$1;->this$0:Lexam/thread/BackWork2;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 72
    iget-object v0, p0, Lexam/thread/BackWork2$1;->this$0:Lexam/thread/BackWork2;

    iget-object v0, v0, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lexam/thread/BackWork2$1;->this$0:Lexam/thread/BackWork2;

    iget-object v0, v0, Lexam/thread/BackWork2;->mThread:Lexam/thread/BackWork2$AccumThread;

    iget-boolean v0, v0, Lexam/thread/BackWork2$AccumThread;->mQuit:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lexam/thread/BackWork2$1;->this$0:Lexam/thread/BackWork2;

    iget-object v0, v0, Lexam/thread/BackWork2;->mResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lexam/thread/BackWork2$1;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mThread:Lexam/thread/BackWork2$AccumThread;

    iget v2, v2, Lexam/thread/BackWork2$AccumThread;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    return-void
.end method
