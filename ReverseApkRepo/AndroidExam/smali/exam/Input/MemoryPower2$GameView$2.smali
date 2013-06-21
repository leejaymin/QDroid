.class Lexam/Input/MemoryPower2$GameView$2;
.super Ljava/lang/Object;
.source "MemoryPower2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Input/MemoryPower2$GameView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lexam/Input/MemoryPower2$GameView$2;->this$1:Lexam/Input/MemoryPower2$GameView;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView$2;->this$1:Lexam/Input/MemoryPower2$GameView;

    iget-object v0, v0, Lexam/Input/MemoryPower2$GameView;->arShape:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView$2;->this$1:Lexam/Input/MemoryPower2$GameView;

    iput v3, v0, Lexam/Input/MemoryPower2$GameView;->status:I

    .line 112
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView$2;->this$1:Lexam/Input/MemoryPower2$GameView;

    invoke-virtual {v0}, Lexam/Input/MemoryPower2$GameView;->invalidate()V

    .line 113
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView$2;->this$1:Lexam/Input/MemoryPower2$GameView;

    iget-object v0, v0, Lexam/Input/MemoryPower2$GameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method
