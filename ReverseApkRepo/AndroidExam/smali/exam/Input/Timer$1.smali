.class Lexam/Input/Timer$1;
.super Landroid/os/Handler;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Input/Timer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/Timer;


# direct methods
.method constructor <init>(Lexam/Input/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 45
    iget-object v0, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    iget v1, v0, Lexam/Input/Timer;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/Input/Timer;->value:I

    .line 46
    iget-object v0, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    iget-object v0, v0, Lexam/Input/Timer;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    iget v2, v2, Lexam/Input/Timer;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    iget v0, v0, Lexam/Input/Timer;->value:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lexam/Input/Timer$1;->this$0:Lexam/Input/Timer;

    iget-object v0, v0, Lexam/Input/Timer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    :cond_0
    return-void
.end method
