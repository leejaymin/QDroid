.class Lexam/Widget/RainbowTest$2;
.super Landroid/os/Handler;
.source "RainbowTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/RainbowTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/RainbowTest;


# direct methods
.method constructor <init>(Lexam/Widget/RainbowTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 36
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    iget-object v1, v1, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    invoke-virtual {v1}, Lexam/Widget/RainbowProgress;->getPos()I

    move-result v0

    .line 37
    .local v0, Pos:I
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    iget-object v1, v1, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    invoke-virtual {v1}, Lexam/Widget/RainbowProgress;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    iget-object v1, v1, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lexam/Widget/RainbowProgress;->setPos(I)V

    .line 39
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    iget-object v1, v1, Lexam/Widget/RainbowTest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    const-string v2, "Completed"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 42
    iget-object v1, p0, Lexam/Widget/RainbowTest$2;->this$0:Lexam/Widget/RainbowTest;

    iget-object v1, v1, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    invoke-virtual {v1, v4}, Lexam/Widget/RainbowProgress;->setPos(I)V

    goto :goto_0
.end method
