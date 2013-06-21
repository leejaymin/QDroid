.class Lcom/kt/olleh/inapp/Purchase$10;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->CheckDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 378
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 381
    invoke-static {}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #calls: Lcom/kt/olleh/inapp/Purchase;->setCheckYN()V
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$29(Lcom/kt/olleh/inapp/Purchase;)V

    .line 383
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setCheck(Z)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$28(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->close()V

    .line 386
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x3

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 388
    const/16 v0, 0x3fd

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 389
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 390
    return-void
.end method
