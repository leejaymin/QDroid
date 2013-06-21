.class Lcom/kt/olleh/inapp/Purchase$5;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->SelectDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 275
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, getTagValue:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "01"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$21(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ud578\ub4dc\ud3f0 \uacb0\uc81c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$22(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$23(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;
    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kt/olleh/inapp/Purchase;->getDIInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ucde8\uc18c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uc815\ubcf4\uc694\uccad\uc911.."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 294
    return-void

    .line 284
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "02"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$21(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uc778\ud130\ub137\uc804\ud654 \uacb0\uc81c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$22(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto :goto_0
.end method
