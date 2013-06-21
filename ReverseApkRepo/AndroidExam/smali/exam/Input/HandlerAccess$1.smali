.class Lexam/Input/HandlerAccess$1;
.super Ljava/lang/Object;
.source "HandlerAccess.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Input/HandlerAccess;->SetTouchHandler(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/HandlerAccess;

.field private final synthetic val$fText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lexam/Input/HandlerAccess;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/HandlerAccess$1;->this$0:Lexam/Input/HandlerAccess;

    iput-object p2, p0, Lexam/Input/HandlerAccess$1;->val$fText:Landroid/widget/TextView;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lexam/Input/HandlerAccess$1;->val$fText:Landroid/widget/TextView;

    const-string v1, "Touched"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
