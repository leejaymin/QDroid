.class Lcom/kt/olleh/inapp/Purchase$13;
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$13;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 439
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x3f1

    .line 441
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$13;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    .line 447
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 448
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$13;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 449
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$13;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    .line 451
    return-void
.end method
