.class Lexam/thread/LongTime4$1;
.super Landroid/os/Handler;
.source "LongTime4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/LongTime4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime4;


# direct methods
.method constructor <init>(Lexam/thread/LongTime4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 55
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lexam/thread/LongTime4;->mValue:I

    .line 56
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget-object v0, v0, Lexam/thread/LongTime4;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget v1, v1, Lexam/thread/LongTime4;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget v0, v0, Lexam/thread/LongTime4;->mValue:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget-object v0, v0, Lexam/thread/LongTime4;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    iget v1, v1, Lexam/thread/LongTime4;->mValue:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexam/thread/LongTime4;->mQuit:Z

    .line 61
    iget-object v0, p0, Lexam/thread/LongTime4$1;->this$0:Lexam/thread/LongTime4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexam/thread/LongTime4;->dismissDialog(I)V

    goto :goto_0
.end method
