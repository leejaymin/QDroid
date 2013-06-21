.class Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;
.super Ljava/lang/Object;
.source "InAppLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 223
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    #getter for: Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->access$0(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    #getter for: Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->mRecryptPwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->access$1(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    #getter for: Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->access$2(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->finish()V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud558\uc9c0 \uc54a\uc558\uac70\ub098, \ud615\uc2dd\uc774 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    .line 229
    .local v0, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 230
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
