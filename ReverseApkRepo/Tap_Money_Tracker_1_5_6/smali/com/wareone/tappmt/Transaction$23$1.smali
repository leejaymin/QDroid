.class Lcom/wareone/tappmt/Transaction$23$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$23;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$23;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$23$1;->this$1:Lcom/wareone/tappmt/Transaction$23;

    .line 1932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 1936
    if-nez p2, :cond_0

    .line 1937
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1938
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$23$1;->this$1:Lcom/wareone/tappmt/Transaction$23;

    #getter for: Lcom/wareone/tappmt/Transaction$23;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction$23;->access$0(Lcom/wareone/tappmt/Transaction$23;)Lcom/wareone/tappmt/Transaction;

    move-result-object v1

    #calls: Lcom/wareone/tappmt/Transaction;->_newPayee()V
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction;->access$27(Lcom/wareone/tappmt/Transaction;)V

    .line 1952
    .end local p0
    :goto_0
    return-void

    .line 1941
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$23$1;->this$1:Lcom/wareone/tappmt/Transaction$23;

    #getter for: Lcom/wareone/tappmt/Transaction$23;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction$23;->access$0(Lcom/wareone/tappmt/Transaction$23;)Lcom/wareone/tappmt/Transaction;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1947
    .local v0, edt:Landroid/widget/EditText;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$26()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "payee"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$26()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
