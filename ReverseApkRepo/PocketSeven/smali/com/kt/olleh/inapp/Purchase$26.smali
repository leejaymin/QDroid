.class Lcom/kt/olleh/inapp/Purchase$26;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->DialogPwdRet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 971
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 973
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 974
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$11(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    const/16 v1, 0x3f3

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 981
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v2, 0x2

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 982
    const-string v0, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    .line 983
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 985
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$26;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->close()V

    .line 999
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method
