.class Lcom/kt/olleh/inapp/Purchase$21;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p2, p0, Lcom/kt/olleh/inapp/Purchase$21;->val$mode:I

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/16 v1, 0x3f1

    .line 739
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 755
    :goto_0
    return-void

    .line 742
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 743
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 744
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 747
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    #setter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$35(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPay;)V

    goto :goto_0

    .line 752
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$21;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
