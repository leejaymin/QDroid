.class Lcom/kt/olleh/inapp/Purchase$11;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$11;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x3f1

    .line 396
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 397
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$11;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 398
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$11;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$28(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->dismiss()V

    .line 400
    return-void
.end method
