.class Lexam/thread/BackWork$1;
.super Ljava/lang/Object;
.source "BackWork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/BackWork;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/BackWork;


# direct methods
.method constructor <init>(Lexam/thread/BackWork;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/BackWork$1;->this$0:Lexam/thread/BackWork;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 21
    const/4 v2, 0x0

    .local v2, start:I
    const/16 v0, 0x64

    .line 23
    .local v0, end:I
    iget-object v3, p0, Lexam/thread/BackWork$1;->this$0:Lexam/thread/BackWork;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lexam/thread/BackWork;->setProgressBarIndeterminateVisibility(Z)V

    .line 24
    iget-object v3, p0, Lexam/thread/BackWork$1;->this$0:Lexam/thread/BackWork;

    invoke-virtual {v3, v2, v0}, Lexam/thread/BackWork;->Accumulate(II)I

    move-result v1

    .line 25
    .local v1, result:I
    iget-object v3, p0, Lexam/thread/BackWork$1;->this$0:Lexam/thread/BackWork;

    iget-object v3, v3, Lexam/thread/BackWork;->mResult:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v3, p0, Lexam/thread/BackWork$1;->this$0:Lexam/thread/BackWork;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lexam/thread/BackWork;->setProgressBarIndeterminateVisibility(Z)V

    .line 27
    return-void
.end method
