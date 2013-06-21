.class Lcom/kt/olleh/inapp/Purchase$24;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->CancelDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 944
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$36(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCancel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->dismiss()V

    .line 947
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    .line 948
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 949
    return-void
.end method
