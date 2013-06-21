.class Lexam/thread/LongTime3$2;
.super Ljava/lang/Object;
.source "LongTime3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime3;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lexam/thread/LongTime3$2;->this$0:Lexam/thread/LongTime3;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lexam/thread/LongTime3$2;->this$0:Lexam/thread/LongTime3;

    iput v1, v0, Lexam/thread/LongTime3;->mValue:I

    .line 25
    iget-object v0, p0, Lexam/thread/LongTime3$2;->this$0:Lexam/thread/LongTime3;

    invoke-virtual {v0, v1}, Lexam/thread/LongTime3;->showDialog(I)V

    .line 26
    iget-object v0, p0, Lexam/thread/LongTime3$2;->this$0:Lexam/thread/LongTime3;

    iput-boolean v1, v0, Lexam/thread/LongTime3;->mQuit:Z

    .line 27
    iget-object v0, p0, Lexam/thread/LongTime3$2;->this$0:Lexam/thread/LongTime3;

    iget-object v0, v0, Lexam/thread/LongTime3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    return-void
.end method
