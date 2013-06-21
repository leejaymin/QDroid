.class Lexam/thread/HandlerTest$1;
.super Landroid/os/Handler;
.source "HandlerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/HandlerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/HandlerTest;


# direct methods
.method constructor <init>(Lexam/thread/HandlerTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/HandlerTest$1;->this$0:Lexam/thread/HandlerTest;

    .line 179
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lexam/thread/HandlerTest$1;->this$0:Lexam/thread/HandlerTest;

    iget-object v0, v0, Lexam/thread/HandlerTest;->mBackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackValue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method
