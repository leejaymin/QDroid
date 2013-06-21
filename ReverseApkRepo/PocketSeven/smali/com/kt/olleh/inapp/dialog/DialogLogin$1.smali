.class Lcom/kt/olleh/inapp/dialog/DialogLogin$1;
.super Ljava/lang/Object;
.source "DialogLogin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/dialog/DialogLogin;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/dialog/DialogLogin;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    #getter for: Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->access$0(Lcom/kt/olleh/inapp/dialog/DialogLogin;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    #getter for: Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->access$1(Lcom/kt/olleh/inapp/dialog/DialogLogin;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    #getter for: Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->access$1(Lcom/kt/olleh/inapp/dialog/DialogLogin;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    :cond_0
    return v2
.end method
