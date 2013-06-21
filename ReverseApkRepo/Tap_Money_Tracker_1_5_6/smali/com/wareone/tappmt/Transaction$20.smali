.class Lcom/wareone/tappmt/Transaction$20;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction;->_initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$20;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-string v5, "currency"

    .line 1808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1809
    .local v1, currency:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$20;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "currency"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->isDefaultCurrency(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1810
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "currency"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$20;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v0

    .line 1813
    .local v0, currOfAccount:Ljava/lang/String;
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$20;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v2}, Lcom/wareone/tappmt/Transaction;->access$2(Lcom/wareone/tappmt/Transaction;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wareone/tappmt/PmtDbAdapter;->isDefaultCurrency(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1814
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 1815
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1818
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$20;->this$0:Lcom/wareone/tappmt/Transaction;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    #calls: Lcom/wareone/tappmt/Transaction;->_queryExchangeRate([Ljava/lang/String;)V
    invoke-static {v2, p0}, Lcom/wareone/tappmt/Transaction;->access$24(Lcom/wareone/tappmt/Transaction;[Ljava/lang/String;)V

    .line 1821
    :cond_2
    return-void
.end method
