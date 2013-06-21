.class Lexam/thread/BackWork3$1;
.super Ljava/lang/Object;
.source "BackWork3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/BackWork3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/BackWork3;


# direct methods
.method constructor <init>(Lexam/thread/BackWork3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/BackWork3$1;->this$0:Lexam/thread/BackWork3;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 21
    const/4 v3, 0x0

    .local v3, start:I
    const/16 v1, 0x64

    .line 24
    .local v1, end:I
    new-instance v0, Lexam/thread/WaitDlg;

    iget-object v4, p0, Lexam/thread/BackWork3$1;->this$0:Lexam/thread/BackWork3;

    const-string v5, "WaitTest"

    const-string v6, "Now calculating"

    invoke-direct {v0, v4, v5, v6}, Lexam/thread/WaitDlg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v0, dlg:Lexam/thread/WaitDlg;
    invoke-virtual {v0}, Lexam/thread/WaitDlg;->start()V

    .line 27
    iget-object v4, p0, Lexam/thread/BackWork3$1;->this$0:Lexam/thread/BackWork3;

    invoke-virtual {v4, v3, v1}, Lexam/thread/BackWork3;->Accumulate(II)I

    move-result v2

    .line 28
    .local v2, result:I
    iget-object v4, p0, Lexam/thread/BackWork3$1;->this$0:Lexam/thread/BackWork3;

    iget-object v4, v4, Lexam/thread/BackWork3;->mResult:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {v0}, Lexam/thread/WaitDlg;->stop(Lexam/thread/WaitDlg;)V

    .line 31
    return-void
.end method
