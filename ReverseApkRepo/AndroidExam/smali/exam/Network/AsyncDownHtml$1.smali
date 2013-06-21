.class Lexam/Network/AsyncDownHtml$1;
.super Landroid/os/Handler;
.source "AsyncDownHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Network/AsyncDownHtml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/AsyncDownHtml;


# direct methods
.method constructor <init>(Lexam/Network/AsyncDownHtml;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/AsyncDownHtml$1;->this$0:Lexam/Network/AsyncDownHtml;

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 69
    iget-object v1, p0, Lexam/Network/AsyncDownHtml$1;->this$0:Lexam/Network/AsyncDownHtml;

    iget-object v1, v1, Lexam/Network/AsyncDownHtml;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    iget-object v1, p0, Lexam/Network/AsyncDownHtml$1;->this$0:Lexam/Network/AsyncDownHtml;

    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Lexam/Network/AsyncDownHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 71
    .local v0, result:Landroid/widget/EditText;
    iget-object v1, p0, Lexam/Network/AsyncDownHtml$1;->this$0:Lexam/Network/AsyncDownHtml;

    iget-object v1, v1, Lexam/Network/AsyncDownHtml;->mThread:Lexam/Network/AsyncDownHtml$DownThread;

    iget-object v1, v1, Lexam/Network/AsyncDownHtml$DownThread;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
