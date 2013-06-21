.class public Lcom/wareone/tappmt/BudgetReport;
.super Landroid/app/Activity;
.source "BudgetReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/BudgetReport$ReportAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_BALANCE:Ljava/lang/String; = "balance"

.field public static final ITEM_BUDGET:Ljava/lang/String; = "budget"

.field public static final ITEM_CATEGORY:Ljava/lang/String; = "category"

.field public static final ITEM_PERCENT:Ljava/lang/String; = "percent"

.field public static final ITEM_USED:Ljava/lang/String; = "used"

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private curDate:Ljava/util/Calendar;

.field private m_adapter:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

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

.field private m_due:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_due_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_group_index:I

.field private m_nf:Ljava/text/NumberFormat;

.field private m_range:[Ljava/lang/String;

.field private m_type_index:I

.field private m_view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/wareone/tappmt/BudgetReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 409
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    .line 410
    iput v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_type_index:I

    .line 411
    iput v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_group_index:I

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_data:Ljava/util/List;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    .line 46
    return-void
.end method

.method private _getTotalBeglongCategory(J)D
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const-string v10, "use_budget"

    const-string v8, "_id"

    .line 319
    const-wide/16 v2, 0x0

    .line 320
    .local v2, result:D
    iget-object v4, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 321
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    const-string v4, "use_budget"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 323
    iget-object v4, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v7, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 324
    iget-object v4, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 325
    .local v1, child:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    :cond_0
    const-string v4, "use_budget"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 328
    iget-object v4, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v7, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 331
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 326
    if-nez v4, :cond_0

    .line 333
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    .end local v1           #child:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 338
    return-wide v2
.end method

.method private _loadData()V
    .locals 12

    .prologue
    .line 343
    const-wide/16 v0, 0x0

    .line 344
    .local v0, budget:D
    const-wide/16 v6, 0x0

    .line 346
    .local v6, total:D
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, currency:Ljava/lang/String;
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_data:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 351
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v2

    .line 352
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_5

    .line 353
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 355
    :cond_0
    const-string v8, "use_budget"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 356
    const-string v8, "budget"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 357
    sget-object v8, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "category budget"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/wareone/tappmt/BudgetReport;->_getTotalBeglongCategory(J)D

    move-result-wide v6

    .line 359
    sget-object v8, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "category total"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v4, childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_data:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v8, "category"

    const-string v9, "acc_name"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v8, "budget"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v8, "used"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    invoke-virtual {v9, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v8, "percent"

    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v6

    div-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v8, "balance"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    sub-double v10, v0, v6

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v4           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v3

    .line 373
    .local v3, c_child:Landroid/database/Cursor;
    if-eqz v3, :cond_4

    .line 374
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 376
    :cond_2
    const-string v8, "use_budget"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const-string v8, "parent_budget"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_3

    .line 378
    const-string v8, "budget"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 379
    sget-object v8, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "category budget"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v8, "_id"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/wareone/tappmt/BudgetReport;->_getTotalBeglongCategory(J)D

    move-result-wide v6

    .line 381
    sget-object v8, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "category total"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 384
    .restart local v4       #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/wareone/tappmt/BudgetReport;->m_data:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v8, "category"

    const-string v9, "acc_name"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v8, "budget"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    invoke-virtual {v9, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v8, "used"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    invoke-virtual {v9, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v8, "percent"

    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v6

    div-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v8, "balance"

    iget-object v9, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    sub-double v10, v0, v6

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v4           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 375
    if-nez v8, :cond_2

    .line 397
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 354
    if-nez v8, :cond_0

    .line 401
    .end local v3           #c_child:Landroid/database/Cursor;
    :cond_5
    return-void
.end method

.method private _loadDue()V
    .locals 3

    .prologue
    .line 299
    sget-object v1, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    const-string v2, "_loadDue"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getAllMonths()Landroid/database/Cursor;

    move-result-object v0

    .line 303
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 305
    if-nez v1, :cond_0

    .line 310
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_due_adapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/wareone/tappmt/BudgetReport;->m_due_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 315
    :cond_3
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/BudgetReport;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/BudgetReport;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/BudgetReport;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/BudgetReport;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/wareone/tappmt/BudgetReport;->TAG:Ljava/lang/String;

    const-string v1, "_refresh"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/wareone/tappmt/BudgetReport;->_loadData()V

    .line 295
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_adapter:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v11, 0x7f030008

    invoke-virtual {p0, v11}, Lcom/wareone/tappmt/BudgetReport;->setContentView(I)V

    .line 154
    const-string v11, "TapPMTPrefs"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/wareone/tappmt/BudgetReport;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 155
    .local v8, settings:Landroid/content/SharedPreferences;
    const-string v11, "digits"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, digits:I
    const-string v6, "#,###,##0"

    .line 157
    .local v6, pattern:Ljava/lang/String;
    if-lez v3, :cond_0

    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "000000000000"

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    :cond_0
    new-instance v11, Ljava/text/DecimalFormat;

    invoke-direct {v11, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_nf:Ljava/text/NumberFormat;

    .line 162
    const-string v11, "budget_alert"

    const/16 v12, 0x50

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 164
    .local v9, trigger:I
    new-instance v11, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v11, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 165
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v11}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 167
    sget-object v11, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    .line 168
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    invoke-virtual {p0}, Lcom/wareone/tappmt/BudgetReport;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 171
    .local v4, extra:Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 172
    const-string v11, "RANGE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    .line 173
    const-string v11, "GROUPBY"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_group_index:I

    .line 174
    const-string v11, "TYPE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_type_index:I

    .line 176
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 179
    .local v1, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 180
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 181
    const/4 v11, 0x5

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 182
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 183
    const/4 v11, 0x5

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 184
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #d:Ljava/util/Date;
    :goto_0
    invoke-direct {p0}, Lcom/wareone/tappmt/BudgetReport;->_loadDue()V

    .line 202
    invoke-direct {p0}, Lcom/wareone/tappmt/BudgetReport;->_loadData()V

    .line 204
    const v11, 0x7f0c0032

    invoke-virtual {p0, v11}, Lcom/wareone/tappmt/BudgetReport;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 205
    .local v5, lv_report:Landroid/widget/ListView;
    new-instance v11, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

    iget-object v12, p0, Lcom/wareone/tappmt/BudgetReport;->m_data:Ljava/util/List;

    invoke-direct {v11, p0, v12, v9}, Lcom/wareone/tappmt/BudgetReport$ReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_adapter:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

    .line 206
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_adapter:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    const v11, 0x7f090072

    invoke-virtual {p0, v11}, Lcom/wareone/tappmt/BudgetReport;->setTitle(I)V

    .line 212
    const v11, 0x7f0c0031

    invoke-virtual {p0, v11}, Lcom/wareone/tappmt/BudgetReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 213
    .local v7, s1:Landroid/widget/Spinner;
    new-instance v11, Landroid/widget/ArrayAdapter;

    .line 214
    const v12, 0x1090008

    iget-object v13, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    invoke-direct {v11, p0, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 213
    iput-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_due_adapter:Landroid/widget/ArrayAdapter;

    .line 215
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_due_adapter:Landroid/widget/ArrayAdapter;

    const v12, 0x1090009

    invoke-virtual {v11, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 216
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_due_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 218
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, yrmn:Ljava/lang/String;
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_due:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 221
    new-instance v11, Lcom/wareone/tappmt/BudgetReport$1;

    invoke-direct {v11, p0}, Lcom/wareone/tappmt/BudgetReport$1;-><init>(Lcom/wareone/tappmt/BudgetReport;)V

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 254
    return-void

    .line 190
    .end local v2           #df:Ljava/text/SimpleDateFormat;
    .end local v5           #lv_report:Landroid/widget/ListView;
    .end local v7           #s1:Landroid/widget/Spinner;
    .end local v10           #yrmn:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v2, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v2       #df:Ljava/text/SimpleDateFormat;
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 192
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 193
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    iget-object v13, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 194
    iget-object v11, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/wareone/tappmt/BudgetReport;->curDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/wareone/tappmt/BudgetReport;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 266
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/wareone/tappmt/BudgetReport;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 287
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 277
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wareone/tappmt/ReportSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, it:Landroid/content/Intent;
    const-string v1, "RANGE"

    iget-object v2, p0, Lcom/wareone/tappmt/BudgetReport;->m_range:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "TYPE"

    iget v2, p0, Lcom/wareone/tappmt/BudgetReport;->m_type_index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "GROUPBY"

    iget v2, p0, Lcom/wareone/tappmt/BudgetReport;->m_group_index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/BudgetReport;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/wareone/tappmt/BudgetReport;->finish()V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00cc
        :pswitch_0
    .end packed-switch
.end method
