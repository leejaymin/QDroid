.class Lexam/thread/ThreadTest$1;
.super Ljava/lang/Object;
.source "ThreadTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/ThreadTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/ThreadTest;


# direct methods
.method constructor <init>(Lexam/thread/ThreadTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 25
    iget-object v0, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    iget v1, v0, Lexam/thread/ThreadTest;->mMainValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/ThreadTest;->mMainValue:I

    .line 26
    iget-object v0, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    iget-object v0, v0, Lexam/thread/ThreadTest;->mMainText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainValue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    iget v2, v2, Lexam/thread/ThreadTest;->mMainValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    iget-object v0, v0, Lexam/thread/ThreadTest;->mBackText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackValue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/thread/ThreadTest$1;->this$0:Lexam/thread/ThreadTest;

    iget v2, v2, Lexam/thread/ThreadTest;->mBackValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
