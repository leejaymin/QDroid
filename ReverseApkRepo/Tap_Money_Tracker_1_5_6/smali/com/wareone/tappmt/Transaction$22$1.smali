.class Lcom/wareone/tappmt/Transaction$22$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$22;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$22;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$22$1;->this$1:Lcom/wareone/tappmt/Transaction$22;

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v3, "currency"

    .line 1894
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v2

    const-string v1, "currency"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$25()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$22$1;->this$1:Lcom/wareone/tappmt/Transaction$22;

    #getter for: Lcom/wareone/tappmt/Transaction$22;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction$22;->access$0(Lcom/wareone/tappmt/Transaction$22;)Lcom/wareone/tappmt/Transaction;

    move-result-object v1

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1896
    .local v0, btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "currency"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$22$1;->this$1:Lcom/wareone/tappmt/Transaction$22;

    #getter for: Lcom/wareone/tappmt/Transaction$22;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction$22;->access$0(Lcom/wareone/tappmt/Transaction$22;)Lcom/wareone/tappmt/Transaction;

    move-result-object v1

    #calls: Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V
    invoke-static {v1}, Lcom/wareone/tappmt/Transaction;->access$1(Lcom/wareone/tappmt/Transaction;)V

    .line 1899
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1900
    return-void
.end method
