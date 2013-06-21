.class Lcom/kt/olleh/inapp/Purchase$27;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->DialogPwdRet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/16 v1, 0x3f1

    .line 1010
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 1011
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1012
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->close()V

    .line 1014
    return-void
.end method
