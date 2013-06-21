.class Lcom/kt/olleh/inapp/Purchase$12;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->NewPwdDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 416
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 418
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getPwdEditText1()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 419
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, pwd1:Ljava/lang/String;
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getPwdEditText2()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 421
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, pwd2:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 423
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    .line 424
    const-string v3, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 423
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 426
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    .line 427
    const-string v3, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \ud655\uc778\uc744 \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 426
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\uc640 \ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638 \ud655\uc778\uc774 \ub2e4\ub985\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v2, v0}, Lcom/kt/olleh/inapp/Purchase;->SetPin(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v3, "\ucc98\ub9ac\uc911"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 434
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    goto :goto_0
.end method
