.class Lexam/thread/ANR2$1;
.super Landroid/os/Handler;
.source "ANR2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/thread/ANR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/ANR2;


# direct methods
.method constructor <init>(Lexam/thread/ANR2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/ANR2$1;->this$0:Lexam/thread/ANR2;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lexam/thread/ANR2$1;->this$0:Lexam/thread/ANR2;

    iput-boolean v2, v0, Lexam/thread/ANR2;->bUploading:Z

    .line 39
    iget-object v0, p0, Lexam/thread/ANR2$1;->this$0:Lexam/thread/ANR2;

    const-string v1, "\uc5c5\ub85c\ub4dc\ub97c \uc644\ub8cc\ud588\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method
