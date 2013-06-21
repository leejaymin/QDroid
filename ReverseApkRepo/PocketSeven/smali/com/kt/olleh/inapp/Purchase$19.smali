.class Lcom/kt/olleh/inapp/Purchase$19;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->PayDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$19;->val$mode:I

    .line 677
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 682
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    const/16 v0, 0x3f4

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 687
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getPwd()Ljava/lang/String;

    move-result-object v5

    .line 688
    .local v5, pin:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 689
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$23(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DP"

    .line 691
    const-string v4, "1111112222222"

    .line 690
    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/Purchase;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\ucde8\uc18c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\uacb0\uc81c \uc694\uccad \uc911..."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 697
    const/4 v2, 0x0

    .line 696
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 704
    .end local v5           #pin:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;)V

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 707
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    #setter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$35(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPay;)V

    goto :goto_0

    .line 711
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 712
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto/16 :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
