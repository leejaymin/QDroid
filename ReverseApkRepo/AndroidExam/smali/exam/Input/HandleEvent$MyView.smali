.class public Lexam/Input/HandleEvent$MyView;
.super Landroid/view/View;
.source "HandleEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/HandleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/HandleEvent;


# direct methods
.method public constructor <init>(Lexam/Input/HandleEvent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 18
    iput-object p1, p0, Lexam/Input/HandleEvent$MyView;->this$0:Lexam/Input/HandleEvent;

    .line 19
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lexam/Input/HandleEvent$MyView;->this$0:Lexam/Input/HandleEvent;

    const-string v2, "Touch Event Received"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0
.end method
