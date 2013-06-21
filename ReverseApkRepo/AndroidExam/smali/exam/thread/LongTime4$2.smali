.class Lexam/thread/LongTime4$2;
.super Ljava/lang/Object;
.source "LongTime4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime4;


# direct methods
.method constructor <init>(Lexam/thread/LongTime4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    iput v1, v0, Lexam/thread/LongTime4;->mValue:I

    .line 26
    iget-object v0, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    invoke-virtual {v0, v1}, Lexam/thread/LongTime4;->showDialog(I)V

    .line 27
    iget-object v0, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    iput-boolean v1, v0, Lexam/thread/LongTime4;->mQuit:Z

    .line 28
    iget-object v0, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    new-instance v1, Lexam/thread/LongTime4$UpdateThread;

    iget-object v2, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    invoke-direct {v1, v2}, Lexam/thread/LongTime4$UpdateThread;-><init>(Lexam/thread/LongTime4;)V

    iput-object v1, v0, Lexam/thread/LongTime4;->mThread:Lexam/thread/LongTime4$UpdateThread;

    .line 29
    iget-object v0, p0, Lexam/thread/LongTime4$2;->this$0:Lexam/thread/LongTime4;

    iget-object v0, v0, Lexam/thread/LongTime4;->mThread:Lexam/thread/LongTime4$UpdateThread;

    invoke-virtual {v0}, Lexam/thread/LongTime4$UpdateThread;->start()V

    .line 30
    return-void
.end method
