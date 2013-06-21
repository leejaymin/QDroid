.class Lcom/wareone/tappmt/Transaction$18$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$18;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$18$1;->this$1:Lcom/wareone/tappmt/Transaction$18;

    .line 1744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v6, "currency"

    const-string v5, "account"

    .line 1748
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$18$1;->this$1:Lcom/wareone/tappmt/Transaction$18;

    #getter for: Lcom/wareone/tappmt/Transaction$18;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$18;->access$0(Lcom/wareone/tappmt/Transaction$18;)Lcom/wareone/tappmt/Transaction;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1749
    .local v0, btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$21()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "acc_name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v2, "account"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$21()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "_id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$18$1;->this$1:Lcom/wareone/tappmt/Transaction$18;

    #getter for: Lcom/wareone/tappmt/Transaction$18;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$18;->access$0(Lcom/wareone/tappmt/Transaction$18;)Lcom/wareone/tappmt/Transaction;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v1

    .line 1753
    .local v1, currOfAccount:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "currency"

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$18$1;->this$1:Lcom/wareone/tappmt/Transaction$18;

    #getter for: Lcom/wareone/tappmt/Transaction$18;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$18;->access$0(Lcom/wareone/tappmt/Transaction$18;)Lcom/wareone/tappmt/Transaction;

    move-result-object v2

    #calls: Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$1(Lcom/wareone/tappmt/Transaction;)V

    .line 1758
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$18$1;->this$1:Lcom/wareone/tappmt/Transaction$18;

    #getter for: Lcom/wareone/tappmt/Transaction$18;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction$18;->access$0(Lcom/wareone/tappmt/Transaction$18;)Lcom/wareone/tappmt/Transaction;

    move-result-object v2

    const v3, 0x7f0c0026

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1760
    .restart local v0       #btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "currency"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1766
    return-void
.end method
