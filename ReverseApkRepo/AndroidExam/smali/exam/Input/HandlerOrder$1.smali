.class Lexam/Input/HandlerOrder$1;
.super Ljava/lang/Object;
.source "HandlerOrder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Input/HandlerOrder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/HandlerOrder;


# direct methods
.method constructor <init>(Lexam/Input/HandlerOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/HandlerOrder$1;->this$0:Lexam/Input/HandlerOrder;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lexam/Input/HandlerOrder$1;->this$0:Lexam/Input/HandlerOrder;

    const-string v2, "Listener : Touch Event Received"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    const/4 v0, 0x1

    .line 21
    :cond_0
    return v0
.end method
