.class public Lnet/robotmedia/billing/model/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addTransaction(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V
    .locals 3
    .parameter "context"
    .parameter "transaction"

    .prologue
    .line 28
    const-class v2, Lnet/robotmedia/billing/model/TransactionManager;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lnet/robotmedia/billing/model/BillingDB;

    invoke-direct {v0, p0}, Lnet/robotmedia/billing/model/BillingDB;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, db:Lnet/robotmedia/billing/model/BillingDB;
    invoke-virtual {v0, p1}, Lnet/robotmedia/billing/model/BillingDB;->insert(Lnet/robotmedia/billing/model/Transaction;)V

    .line 30
    invoke-virtual {v0}, Lnet/robotmedia/billing/model/BillingDB;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v2

    return-void

    .line 28
    .end local v0           #db:Lnet/robotmedia/billing/model/BillingDB;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized countPurchases(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 38
    const-class v4, Lnet/robotmedia/billing/model/TransactionManager;

    monitor-enter v4

    :try_start_0
    new-instance v2, Lnet/robotmedia/billing/model/BillingDB;

    invoke-direct {v2, p0}, Lnet/robotmedia/billing/model/BillingDB;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, db:Lnet/robotmedia/billing/model/BillingDB;
    sget-object v3, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-virtual {v2, p1, v3}, Lnet/robotmedia/billing/model/BillingDB;->queryTransactions(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 41
    .local v1, count:I
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_0
    invoke-virtual {v2}, Lnet/robotmedia/billing/model/BillingDB;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v4

    return v1

    .line 38
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #count:I
    .end local v2           #db:Lnet/robotmedia/billing/model/BillingDB;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static cursorToList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    if-eqz p0, :cond_0

    .line 60
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_0
    return-object v1

    .line 61
    :cond_1
    invoke-static {p0}, Lnet/robotmedia/billing/model/BillingDB;->createTransaction(Landroid/database/Cursor;)Lnet/robotmedia/billing/model/Transaction;

    move-result-object v0

    .line 62
    .local v0, purchase:Lnet/robotmedia/billing/model/Transaction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized getTransactions(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v4, Lnet/robotmedia/billing/model/TransactionManager;

    monitor-enter v4

    :try_start_0
    new-instance v1, Lnet/robotmedia/billing/model/BillingDB;

    invoke-direct {v1, p0}, Lnet/robotmedia/billing/model/BillingDB;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, db:Lnet/robotmedia/billing/model/BillingDB;
    invoke-virtual {v1}, Lnet/robotmedia/billing/model/BillingDB;->queryTransactions()Landroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0}, Lnet/robotmedia/billing/model/TransactionManager;->cursorToList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    invoke-virtual {v1}, Lnet/robotmedia/billing/model/BillingDB;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v4

    return-object v2

    .line 50
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #db:Lnet/robotmedia/billing/model/BillingDB;
    .end local v2           #transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getTransactions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v4, Lnet/robotmedia/billing/model/TransactionManager;

    monitor-enter v4

    :try_start_0
    new-instance v1, Lnet/robotmedia/billing/model/BillingDB;

    invoke-direct {v1, p0}, Lnet/robotmedia/billing/model/BillingDB;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, db:Lnet/robotmedia/billing/model/BillingDB;
    invoke-virtual {v1, p1}, Lnet/robotmedia/billing/model/BillingDB;->queryTransactions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0}, Lnet/robotmedia/billing/model/TransactionManager;->cursorToList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    invoke-virtual {v1}, Lnet/robotmedia/billing/model/BillingDB;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v4

    return-object v2

    .line 70
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #db:Lnet/robotmedia/billing/model/BillingDB;
    .end local v2           #transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized isPurchased(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 34
    const-class v1, Lnet/robotmedia/billing/model/TransactionManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lnet/robotmedia/billing/model/TransactionManager;->countPurchases(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
