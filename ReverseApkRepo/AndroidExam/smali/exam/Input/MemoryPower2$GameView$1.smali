.class Lexam/Input/MemoryPower2$GameView$1;
.super Landroid/os/Handler;
.source "MemoryPower2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MemoryPower2$GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/Input/MemoryPower2$GameView;


# direct methods
.method constructor <init>(Lexam/Input/MemoryPower2$GameView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 206
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    invoke-virtual {v1}, Lexam/Input/MemoryPower2$GameView;->AddNewShape()V

    .line 207
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    const/4 v2, 0x1

    iput v2, v1, Lexam/Input/MemoryPower2$GameView;->status:I

    .line 208
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    invoke-virtual {v1}, Lexam/Input/MemoryPower2$GameView;->invalidate()V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemoryPower - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    iget-object v2, v2, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \ub2e8\uacc4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lexam/Input/MemoryPower2$GameView$1;->this$1:Lexam/Input/MemoryPower2$GameView;

    iget-object v1, v1, Lexam/Input/MemoryPower2$GameView;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method
