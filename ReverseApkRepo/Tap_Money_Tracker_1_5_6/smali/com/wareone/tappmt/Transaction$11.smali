.class Lcom/wareone/tappmt/Transaction$11;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_setNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$11;->this$0:Lcom/wareone/tappmt/Transaction;

    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$11;->val$input:Landroid/widget/EditText;

    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$11;->this$0:Lcom/wareone/tappmt/Transaction;

    const v2, 0x7f0c00bf

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1480
    .local v0, edt_note:Landroid/widget/EditText;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "note"

    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$11;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$11;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1483
    return-void
.end method
