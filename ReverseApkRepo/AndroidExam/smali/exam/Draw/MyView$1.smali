.class Lexam/Draw/MyView$1;
.super Landroid/os/Handler;
.source "Reflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/MyView;


# direct methods
.method constructor <init>(Lexam/Draw/MyView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 115
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    iget-object v2, v2, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 124
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    invoke-virtual {v2}, Lexam/Draw/MyView;->invalidate()V

    .line 125
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    iget-object v2, v2, Lexam/Draw/MyView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    iget-object v2, v2, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexam/Draw/Ball;

    .line 117
    .local v0, B:Lexam/Draw/Ball;
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    invoke-virtual {v2}, Lexam/Draw/MyView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    invoke-virtual {v3}, Lexam/Draw/MyView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lexam/Draw/Ball;->Move(II)V

    .line 118
    iget v2, v0, Lexam/Draw/Ball;->count:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 119
    iget-object v2, p0, Lexam/Draw/MyView$1;->this$0:Lexam/Draw/MyView;

    iget-object v2, v2, Lexam/Draw/MyView;->arBall:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    add-int/lit8 v1, v1, -0x1

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
