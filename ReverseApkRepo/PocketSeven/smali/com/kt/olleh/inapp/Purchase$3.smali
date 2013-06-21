.class Lcom/kt/olleh/inapp/Purchase$3;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->LoginDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 248
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;
    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$20(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getID()Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$20(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogLogin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/Purchase;->requestCheckShowId(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\ucde8\uc18c"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\ub85c\uadf8\uc778 \uc911..."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$3;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 258
    return-void
.end method
