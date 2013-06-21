.class public Lcom/wareone/tappmt/ViewItems;
.super Landroid/app/Activity;
.source "ViewItems.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private curDate:Ljava/util/Calendar;

.field private m_account:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_group_index:I

.field private m_key:Ljava/lang/String;

.field private m_nf:Ljava/text/NumberFormat;

.field private m_range:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/wareone/tappmt/ViewItems;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ViewItems;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_key:Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/wareone/tappmt/ViewItems;->m_group_index:I

    .line 43
    return-void
.end method

.method private _getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 319
    return-object v1

    .line 317
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _loadAccount()V
    .locals 6

    .prologue
    const-string v5, "acc_name"

    const-string v4, "_id"

    .line 269
    sget-object v2, Lcom/wareone/tappmt/ViewItems;->TAG:Ljava/lang/String;

    const-string v3, "_loadAccount"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 273
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccounts()Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 276
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v2, "acc_name"

    const-string v2, "acc_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 277
    if-nez v2, :cond_0

    .line 286
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return-void
.end method

.method private _loadData()V
    .locals 12

    .prologue
    .line 197
    sget-object v7, Lcom/wareone/tappmt/ViewItems;->TAG:Ljava/lang/String;

    const-string v8, "_loadData"

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/wareone/tappmt/ViewItems;->m_key:Ljava/lang/String;

    iget v11, p0, Lcom/wareone/tappmt/ViewItems;->m_group_index:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionByRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 202
    .local v1, c:Landroid/database/Cursor;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, df:Ljava/text/SimpleDateFormat;
    if-eqz v1, :cond_2

    .line 205
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    .end local v3           #df:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v7, Ljava/text/DecimalFormat;

    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v9, "currency"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_nf:Ljava/text/NumberFormat;

    .line 208
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_nf:Ljava/text/NumberFormat;

    const-string v8, "amount"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, amount:Ljava/lang/String;
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v8, "currency"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getSymbolByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, symbol:Ljava/lang/String;
    const-string v7, "mode"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_b

    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v2, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v4, v7, :cond_3

    .line 218
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "category"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 219
    .local v5, index:I
    const-string v7, "category"

    if-gez v5, :cond_4

    const-string v8, ""

    :goto_1
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "account"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 221
    const-string v7, "account"

    if-gez v5, :cond_5

    const-string v8, ""

    :goto_2
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "group_name"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 223
    const-string v7, "group_name"

    if-gez v5, :cond_6

    const-string v8, ""

    :goto_3
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v7, "amount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 227
    .restart local v2       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v4, 0x0

    :goto_4
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v4, v7, :cond_7

    .line 231
    const-string v7, "amount"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v7, "category"

    const-string v8, "account"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v7, "account"

    const-string v8, "category"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "category"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 236
    const-string v7, "category"

    if-gez v5, :cond_8

    const-string v8, ""

    .end local v0           #amount:Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "account"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 238
    const-string v7, "account"

    if-gez v5, :cond_9

    const-string v8, ""

    :goto_6
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "group_name"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 240
    const-string v7, "group_name"

    if-gez v5, :cond_a

    const-string v8, ""

    :goto_7
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 206
    if-nez v7, :cond_0

    .line 263
    .end local v2           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v6           #symbol:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_2
    return-void

    .line 215
    .restart local v0       #amount:Ljava/lang/String;
    .restart local v2       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #i:I
    .restart local v6       #symbol:Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v7, v7, v4

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 219
    .restart local v5       #index:I
    :cond_4
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto/16 :goto_1

    .line 221
    :cond_5
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto/16 :goto_2

    .line 223
    :cond_6
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v8, "group_name"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto/16 :goto_3

    .line 229
    :cond_7
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v7, v7, v4

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 236
    :cond_8
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #amount:Ljava/lang/String;
    check-cast v0, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto/16 :goto_5

    .line 238
    :cond_9
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto/16 :goto_6

    .line 240
    :cond_a
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v8, "group_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto/16 :goto_7

    .line 243
    .end local v2           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v5           #index:I
    .restart local v0       #amount:Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    .restart local v2       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_9
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v4, v7, :cond_d

    .line 248
    const-string v7, "amount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v7, "mode"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    .line 250
    const-string v7, "amount"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_c
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "category"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 254
    .restart local v5       #index:I
    const-string v7, "category"

    if-gez v5, :cond_e

    const-string v8, ""

    .end local v0           #amount:Ljava/lang/String;
    :goto_a
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "account"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 256
    const-string v7, "account"

    if-gez v5, :cond_f

    const-string v8, ""

    :goto_b
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    const-string v8, "_id"

    invoke-direct {p0, v7, v8}, Lcom/wareone/tappmt/ViewItems;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "group_name"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 258
    const-string v7, "group_name"

    if-gez v5, :cond_10

    const-string v8, ""

    :goto_c
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 246
    .end local v5           #index:I
    .restart local v0       #amount:Ljava/lang/String;
    :cond_d
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v7, v7, v4

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 254
    .restart local v5       #index:I
    :cond_e
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #amount:Ljava/lang/String;
    check-cast v0, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_a

    .line 256
    :cond_f
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_account:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v8, "acc_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_b

    .line 258
    :cond_10
    iget-object v8, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v8, "group_name"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_c
.end method

.method private _loadGroup()V
    .locals 6

    .prologue
    const-string v5, "group_name"

    const-string v4, "_id"

    .line 292
    sget-object v2, Lcom/wareone/tappmt/ViewItems;->TAG:Ljava/lang/String;

    const-string v3, "_loadGroup"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 296
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v0

    .line 298
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/ViewItems;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "group_name"

    const-string v2, "group_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 300
    if-nez v2, :cond_0

    .line 309
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_2
    return-void
.end method


# virtual methods
.method public exportCSV()V
    .locals 10

    .prologue
    const-string v7, ","

    const-string v7, ",\""

    const-string v7, "\""

    .line 149
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Expense"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "Transfer"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "Income"

    aput-object v8, v4, v7

    .line 152
    .local v4, mode:[Ljava/lang/String;
    const-string v7, "mounted"

    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/sdcard/tappmt/export.csv"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, myFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 165
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    .local v2, fOut:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 181
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 182
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 183
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 185
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v5           #myFile:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 187
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #i:I
    .restart local v5       #myFile:Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "mode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v4, v7

    .line 170
    .local v6, record:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "trans_date"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "category"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "account"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "amount"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "currency"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "group_name"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "note"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 189
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v5           #myFile:Ljava/io/File;
    .end local v6           #record:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 191
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v6, 0x7f030044

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/ViewItems;->setContentView(I)V

    .line 54
    const-string v6, "TapPMTPrefs"

    invoke-virtual {p0, v6, v8}, Lcom/wareone/tappmt/ViewItems;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 55
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v6, "digits"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, digits:I
    const-string v3, "#,###,##0"

    .line 57
    .local v3, pattern:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000000000000"

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    :cond_0
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_nf:Ljava/text/NumberFormat;

    .line 62
    new-instance v6, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v6, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 63
    iget-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->curDate:Ljava/util/Calendar;

    .line 67
    iget-object v6, p0, Lcom/wareone/tappmt/ViewItems;->curDate:Ljava/util/Calendar;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    invoke-virtual {p0}, Lcom/wareone/tappmt/ViewItems;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, extra:Landroid/os/Bundle;
    const-string v6, "RANGE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    .line 71
    const-string v6, "GROUPBY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/wareone/tappmt/ViewItems;->m_group_index:I

    .line 72
    const-string v6, "KEY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_key:Ljava/lang/String;

    .line 75
    const v6, 0x7f090071

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/ViewItems;->setTitle(I)V

    .line 77
    const v6, 0x7f0c0014

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/ViewItems;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 78
    .local v5, tv_title:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_range:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lcom/wareone/tappmt/ViewItems;->_loadAccount()V

    .line 81
    invoke-direct {p0}, Lcom/wareone/tappmt/ViewItems;->_loadGroup()V

    .line 82
    invoke-direct {p0}, Lcom/wareone/tappmt/ViewItems;->_loadData()V

    .line 84
    const v6, 0x7f0c0032

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/ViewItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 85
    .local v2, lv:Landroid/widget/ListView;
    new-instance v6, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    iget-object v7, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    .line 86
    iget-object v6, p0, Lcom/wareone/tappmt/ViewItems;->m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/wareone/tappmt/ViewItems;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 100
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wareone/tappmt/ViewItems;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v1, "TapPMTPrefs"

    invoke-virtual {p0, v1, v2}, Lcom/wareone/tappmt/ViewItems;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 113
    :pswitch_0
    const-string v1, "authorized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/wareone/tappmt/ViewItems;->m_data:Ljava/util/List;

    invoke-static {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->exportCSV(Ljava/util/List;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    const v2, 0x7f090053

    .line 120
    new-instance v3, Lcom/wareone/tappmt/ViewItems$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/ViewItems$1;-><init>(Lcom/wareone/tappmt/ViewItems;)V

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 130
    const v2, 0x7f090051

    .line 131
    new-instance v3, Lcom/wareone/tappmt/ViewItems$2;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/ViewItems$2;-><init>(Lcom/wareone/tappmt/ViewItems;)V

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x7f0c00c7
        :pswitch_0
    .end packed-switch
.end method
