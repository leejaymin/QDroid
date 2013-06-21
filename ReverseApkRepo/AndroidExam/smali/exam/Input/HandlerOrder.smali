.class public Lexam/Input/HandlerOrder;
.super Landroid/app/Activity;
.source "HandlerOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/HandlerOrder$MyView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Lexam/Input/HandlerOrder$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Input/HandlerOrder$MyView;-><init>(Lexam/Input/HandlerOrder;Landroid/content/Context;)V

    .line 14
    .local v0, vw:Landroid/view/View;
    new-instance v1, Lexam/Input/HandlerOrder$1;

    invoke-direct {v1, p0}, Lexam/Input/HandlerOrder$1;-><init>(Lexam/Input/HandlerOrder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    invoke-virtual {p0, v0}, Lexam/Input/HandlerOrder;->setContentView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, "Activity : Touch Event Received"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :cond_0
    return v0
.end method
