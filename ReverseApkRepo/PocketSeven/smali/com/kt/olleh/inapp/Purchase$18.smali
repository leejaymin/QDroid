.class Lcom/kt/olleh/inapp/Purchase$18;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p2, p0, Lcom/kt/olleh/inapp/Purchase$18;->val$mode:I

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/16 v1, 0x3f1

    .line 597
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 613
    :goto_0
    return-void

    .line 600
    :pswitch_0
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 601
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 602
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    #setter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$34(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;)V

    goto :goto_0

    .line 610
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$18;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
