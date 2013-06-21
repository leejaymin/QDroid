.class Lcom/kt/olleh/inapp/Purchase$15;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->PayDialogNoPwd(I)V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$15;->val$mode:I

    .line 534
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 536
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 538
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 540
    :pswitch_0
    const/16 v0, 0x3fe

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 542
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$23(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DP"

    .line 543
    const-string v4, "1111112222222"

    const-string v5, "none"

    .line 542
    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/Purchase;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\ucde8\uc18c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\uacb0\uc81c \uc694\uccad \uc911..."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 547
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    goto :goto_0

    .line 551
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 554
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    #setter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$34(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;)V

    goto :goto_0

    .line 558
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 559
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
