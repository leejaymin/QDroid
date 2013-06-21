.class public Lexam/Input/HandlerOrder$MyView;
.super Landroid/view/View;
.source "HandlerOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/HandlerOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/HandlerOrder;


# direct methods
.method public constructor <init>(Lexam/Input/HandlerOrder;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 29
    iput-object p1, p0, Lexam/Input/HandlerOrder$MyView;->this$0:Lexam/Input/HandlerOrder;

    .line 30
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lexam/Input/HandlerOrder$MyView;->this$0:Lexam/Input/HandlerOrder;

    const-string v2, "View : Touch Event Received"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method
