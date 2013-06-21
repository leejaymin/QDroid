.class Lexam/Widget/RainbowTest$1;
.super Ljava/lang/Object;
.source "RainbowTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lexam/Widget/RainbowTest$1;->this$0:Lexam/Widget/RainbowTest;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 26
    iget-object v0, p0, Lexam/Widget/RainbowTest$1;->this$0:Lexam/Widget/RainbowTest;

    iget-object v0, v0, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    invoke-virtual {v0}, Lexam/Widget/RainbowProgress;->getPos()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lexam/Widget/RainbowTest$1;->this$0:Lexam/Widget/RainbowTest;

    iget-object v0, v0, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    invoke-virtual {v0, v1}, Lexam/Widget/RainbowProgress;->setPos(I)V

    .line 28
    iget-object v0, p0, Lexam/Widget/RainbowTest$1;->this$0:Lexam/Widget/RainbowTest;

    iget-object v0, v0, Lexam/Widget/RainbowTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    :cond_0
    return-void
.end method
