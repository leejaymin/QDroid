.class Lexam/thread/LooperTest$2;
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
    iput-object p1, p0, Lexam/thread/LooperTest$2;->this$0:Lexam/thread/LooperTest;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 27
    iget-object v0, p0, Lexam/thread/LooperTest$2;->this$0:Lexam/thread/LooperTest;

    iget v1, v0, Lexam/thread/LooperTest;->mMainValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lexam/thread/LooperTest;->mMainValue:I

    .line 28
    iget-object v0, p0, Lexam/thread/LooperTest$2;->this$0:Lexam/thread/LooperTest;

    iget-object v0, v0, Lexam/thread/LooperTest;->mMainText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainValue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/thread/LooperTest$2;->this$0:Lexam/thread/LooperTest;

    iget v2, v2, Lexam/thread/LooperTest;->mMainValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
