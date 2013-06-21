.class Lexam/thread/LooperTest$3;
.super Ljava/lang/Object;
.source "LooperTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LooperTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LooperTest;


# direct methods
.method constructor <init>(Lexam/thread/LooperTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LooperTest$3;->this$0:Lexam/thread/LooperTest;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 36
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 37
    iget-object v1, p0, Lexam/thread/LooperTest$3;->this$0:Lexam/thread/LooperTest;

    iget-object v1, v1, Lexam/thread/LooperTest;->mNumEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 38
    iget-object v1, p0, Lexam/thread/LooperTest$3;->this$0:Lexam/thread/LooperTest;

    iget-object v1, v1, Lexam/thread/LooperTest;->mThread:Lexam/thread/CalcThread;

    iget-object v1, v1, Lexam/thread/CalcThread;->mBackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void
.end method
