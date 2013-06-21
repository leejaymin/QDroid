.class Lcom/kt/olleh/inapp/Purchase$8;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->AlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;

.field private final synthetic val$prevMode:I


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p2, p0, Lcom/kt/olleh/inapp/Purchase$8;->val$prevMode:I

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->close()V

    .line 342
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->val$prevMode:I

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 343
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    sget v1, Lcom/kt/olleh/inapp/Purchase;->config:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->changeConfig(I)V

    .line 345
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 347
    :cond_0
    const-string v0, "B011"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ud578\ub4dc\ud3f0 \ubcf4\uc548\ubc88\ud638\uac00 \ud2c0\ub838\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624(\uc624\ub958\ud69f\uc218:5\uc774\uc0c1)"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    #setter for: Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$19(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 352
    :cond_2
    return-void
.end method
