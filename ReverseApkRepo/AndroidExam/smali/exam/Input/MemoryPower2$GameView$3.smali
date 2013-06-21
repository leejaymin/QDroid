.class Lexam/Input/MemoryPower2$GameView$3;
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
    iput-object p1, p0, Lexam/Input/MemoryPower2$GameView$3;->this$1:Lexam/Input/MemoryPower2$GameView;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 118
    iget-object v0, p0, Lexam/Input/MemoryPower2$GameView$3;->this$1:Lexam/Input/MemoryPower2$GameView;

    iget-object v0, v0, Lexam/Input/MemoryPower2$GameView;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    return-void
.end method
