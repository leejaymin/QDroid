.class public Lcom/wareone/tappmt/Reports;
.super Landroid/app/Activity;
.source "Reports.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Reports$ReportAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_AMOUNT:Ljava/lang/String; = "amount"

.field public static final ITEM_ID:Ljava/lang/String; = "id"

.field public static final ITEM_LEVEL:Ljava/lang/String; = "level"

.field public static final ITEM_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private curDate:Ljava/util/Calendar;

.field private m_adapter:Lcom/wareone/tappmt/Reports$ReportAdapter;

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
    .line 48
    const-class v0, Lcom/wareone/tappmt/Reports;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1509
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    .line 1510
    iput v1, p0, Lcom/wareone/tappmt/Reports;->m_type_index:I

    .line 1511
    iput v1, p0, Lcom/wareone/tappmt/Reports;->m_group_index:I

    .line 1513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    .line 1519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    .line 47
    return-void
.end method

.method private _ExpenseByAccount()V
    .locals 29

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v22

    .line 607
    .local v22, currency:Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 610
    .local v24, total:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v18

    .line 613
    .local v18, c_acc:Landroid/database/Cursor;
    if-eqz v18, :cond_b

    .line 614
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 616
    :cond_0
    const-string v3, "_id"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 617
    .local v8, acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v8, v9, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByAccount(J[Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 619
    .local v11, acc_amt:D
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 620
    .local v21, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v3, "id"

    const-string v4, "_id"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v3, "name"

    const-string v4, "acc_name"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    invoke-virtual {v5, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-wide/16 v6, 0x0

    cmpl-double v3, v11, v6

    if-lez v3, :cond_9

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v17

    .line 628
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_9

    .line 629
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 631
    :cond_1
    const-string v3, "_id"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 632
    .local v4, category_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v15

    .line 634
    .local v15, amt_parent:D
    new-instance v21, Ljava/util/HashMap;

    .end local v21           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 635
    .restart local v21       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    move-object v0, v7

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-wide/16 v26, 0x0

    .line 642
    .local v26, total_child:D
    const/16 v23, 0x0

    .line 644
    .local v23, hasChild:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v19

    .line 645
    .local v19, c_child:Landroid/database/Cursor;
    if-eqz v19, :cond_5

    .line 646
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 647
    const/16 v23, 0x1

    .line 649
    :cond_2
    const-string v3, "_id"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v13

    .line 652
    .local v13, amt_child:D
    const-wide/16 v6, 0x0

    cmpl-double v3, v13, v6

    if-lez v3, :cond_3

    .line 653
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v20, childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v3, "level"

    const-string v6, "2"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v20           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-double v26, v26, v13

    .line 663
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 648
    if-nez v3, :cond_2

    .line 666
    .end local v13           #amt_child:D
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_5
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #category_id:J
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v15, v26

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    add-double v6, v15, v26

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-nez v3, :cond_6

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 675
    :cond_6
    const-wide/16 v6, 0x0

    cmpl-double v3, v26, v6

    if-lez v3, :cond_7

    const-wide/16 v6, 0x0

    cmpl-double v3, v15, v6

    if-lez v3, :cond_7

    .line 677
    new-instance v21, Ljava/util/HashMap;

    .end local v21           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 678
    .restart local v21       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    const-string v3, "level"

    const-string v4, "2"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v3, "id"

    const-string v4, "_id"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v3, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_7
    add-double v6, v24, v15

    add-double v24, v6, v26

    .line 687
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 630
    if-nez v3, :cond_1

    .line 690
    .end local v15           #amt_parent:D
    .end local v19           #c_child:Landroid/database/Cursor;
    .end local v23           #hasChild:Z
    .end local v26           #total_child:D
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 695
    .end local v17           #c:Landroid/database/Cursor;
    :cond_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 615
    if-nez v3, :cond_0

    .line 697
    const v3, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 698
    .local v28, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    .end local v8           #acc_id:J
    .end local v11           #acc_amt:D
    .end local v21           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28           #tv_total:Landroid/widget/TextView;
    :cond_a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_b
    return-void
.end method

.method private _ExpenseByCategory()V
    .locals 26

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v19

    .line 532
    .local v19, currency:Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 533
    .local v21, total:D
    const-wide/16 v13, 0x0

    .line 534
    .local v13, amt_parent:D
    const-wide/16 v23, 0x0

    .line 537
    .local v23, total_child:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v15

    .line 540
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_7

    .line 541
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 543
    :cond_0
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 544
    .local v4, acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v13

    .line 545
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 546
    .local v18, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v3, "level"

    const-string v6, "0"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v3, "id"

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v3, "name"

    const-string v6, "acc_name"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 554
    .local v20, hasChild:Ljava/lang/Boolean;
    const-wide/16 v23, 0x0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v16

    .line 557
    .local v16, c_child:Landroid/database/Cursor;
    if-eqz v16, :cond_4

    .line 558
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 559
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 562
    :cond_1
    const-string v3, "_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v11

    .line 564
    .local v11, amt_child:D
    const-wide/16 v6, 0x0

    cmpl-double v3, v11, v6

    if-lez v3, :cond_2

    .line 565
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 566
    .local v17, childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    invoke-virtual {v7, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v17           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-double v23, v23, v11

    .line 575
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 560
    if-nez v3, :cond_1

    .line 578
    .end local v11           #amt_child:D
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_4
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #acc_id:J
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v13, v23

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v6, 0x0

    cmpl-double v3, v13, v6

    if-lez v3, :cond_5

    .line 585
    new-instance v18, Ljava/util/HashMap;

    .end local v18           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 586
    .restart local v18       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v3, "level"

    const-string v4, "1"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v3, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_5
    add-double v6, v21, v13

    add-double v21, v6, v23

    .line 595
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 542
    if-nez v3, :cond_0

    .line 597
    const v3, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 598
    .local v25, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    .end local v16           #c_child:Landroid/database/Cursor;
    .end local v18           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20           #hasChild:Ljava/lang/Boolean;
    .end local v25           #tv_total:Landroid/widget/TextView;
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_7
    return-void
.end method

.method private _ExpenseByGroup()V
    .locals 29

    .prologue
    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v20

    .line 707
    .local v20, currency:Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 710
    .local v24, total:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v17

    .line 713
    .local v17, c_group:Landroid/database/Cursor;
    if-eqz v17, :cond_b

    .line 714
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 718
    :cond_0
    const-string v3, "_id"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, group_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v8, v9, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByGroup(J[Ljava/lang/String;)D

    move-result-wide v21

    .line 721
    .local v21, group_amt:D
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 722
    .local v19, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v3, "id"

    const-string v4, "_id"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v3, "name"

    const-string v4, "group_name"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-wide/16 v8, 0x0

    cmpl-double v3, v21, v8

    if-lez v3, :cond_9

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v15

    .line 730
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_9

    .line 731
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 733
    :cond_1
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 734
    .local v4, category_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v13

    .line 736
    .local v13, amt_parent:D
    new-instance v19, Ljava/util/HashMap;

    .end local v19           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 737
    .restart local v19       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v3, "id"

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v3, "name"

    const-string v6, "acc_name"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v8, v0

    invoke-virtual {v8, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-wide/16 v26, 0x0

    .line 744
    .local v26, total_child:D
    const/16 v23, 0x0

    .line 746
    .local v23, hasChild:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v16

    .line 747
    .local v16, c_child:Landroid/database/Cursor;
    if-eqz v16, :cond_5

    .line 748
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 749
    const/16 v23, 0x1

    .line 752
    :cond_2
    const-string v3, "_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v11

    .line 755
    .local v11, amt_child:D
    const-wide/16 v8, 0x0

    cmpl-double v3, v11, v8

    if-lez v3, :cond_3

    .line 756
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 757
    .local v18, childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const-string v3, "level"

    const-string v6, "2"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v8, v0

    invoke-virtual {v8, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .end local v18           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-double v26, v26, v11

    .line 766
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 750
    if-nez v3, :cond_2

    .line 769
    .end local v11           #amt_child:D
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_5
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #category_id:J
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v8, v13, v26

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    add-double v8, v13, v26

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-nez v3, :cond_6

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 777
    :cond_6
    const-wide/16 v8, 0x0

    cmpl-double v3, v26, v8

    if-lez v3, :cond_7

    const-wide/16 v8, 0x0

    cmpl-double v3, v13, v8

    if-lez v3, :cond_7

    .line 779
    new-instance v19, Ljava/util/HashMap;

    .end local v19           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 780
    .restart local v19       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v3, "level"

    const-string v4, "2"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v3, "id"

    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v3, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_7
    add-double v8, v24, v13

    add-double v24, v8, v26

    .line 788
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 732
    if-nez v3, :cond_1

    .line 791
    .end local v13           #amt_parent:D
    .end local v16           #c_child:Landroid/database/Cursor;
    .end local v23           #hasChild:Z
    .end local v26           #total_child:D
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 796
    .end local v15           #c:Landroid/database/Cursor;
    :cond_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 715
    if-nez v3, :cond_0

    .line 798
    const v3, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 799
    .local v28, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    .end local v7           #group_id:Ljava/lang/String;
    .end local v19           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #group_amt:D
    .end local v28           #tv_total:Landroid/widget/TextView;
    :cond_a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_b
    return-void
.end method

.method private _ExpenseByPayee()V
    .locals 36

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v27

    .line 808
    .local v27, currency:Ljava/lang/String;
    const-wide/16 v31, 0x0

    .line 811
    .local v31, total:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayeesByTransaction()Landroid/database/Cursor;

    move-result-object v25

    .line 814
    .local v25, c_payee:Landroid/database/Cursor;
    if-eqz v25, :cond_10

    .line 815
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 819
    :cond_0
    const-string v3, "payee"

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 820
    .local v10, payee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v10, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByPayee(Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide v29

    .line 821
    .local v29, payee_amt:D
    sget-object v3, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_ExpenseByPayee --->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 824
    .local v26, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v3, "id"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v3, "name"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-wide/16 v6, 0x0

    cmpl-double v3, v29, v6

    if-lez v3, :cond_7

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v23

    .line 832
    .local v23, c:Landroid/database/Cursor;
    if-eqz v23, :cond_7

    .line 833
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 835
    :cond_1
    const-string v3, "_id"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 836
    .local v4, category_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v21

    .line 838
    .local v21, amt_parent:D
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 839
    .restart local v26       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-wide/16 v33, 0x0

    .line 846
    .local v33, total_child:D
    const/16 v28, 0x0

    .line 848
    .local v28, hasChild:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v24

    .line 849
    .local v24, c_child:Landroid/database/Cursor;
    if-eqz v24, :cond_4

    .line 850
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 851
    const/16 v28, 0x1

    .line 854
    :cond_2
    const-string v3, "_id"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v19

    .line 857
    .local v19, amt_child:D
    add-double v33, v33, v19

    .line 859
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 852
    if-nez v3, :cond_2

    .line 862
    .end local v19           #amt_child:D
    :cond_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 865
    :cond_4
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #category_id:J
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v21, v33

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    add-double v6, v21, v33

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_5

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 870
    :cond_5
    add-double v6, v31, v21

    add-double v31, v6, v33

    .line 872
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 834
    if-nez v3, :cond_1

    .line 875
    .end local v21           #amt_parent:D
    .end local v24           #c_child:Landroid/database/Cursor;
    .end local v28           #hasChild:Z
    .end local v33           #total_child:D
    :cond_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 880
    .end local v23           #c:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 816
    if-nez v3, :cond_0

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByPayee(Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide v29

    .line 883
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 884
    .restart local v26       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v3, "id"

    const-string v4, ""

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v3, "name"

    const-string v4, "<None>"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-wide/16 v6, 0x0

    cmpl-double v3, v29, v6

    if-lez v3, :cond_e

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v23

    .line 892
    .restart local v23       #c:Landroid/database/Cursor;
    if-eqz v23, :cond_e

    .line 893
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 895
    :cond_8
    const-string v3, "_id"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 896
    .restart local v4       #category_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, ""

    move-wide v12, v4

    invoke-virtual/range {v11 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v21

    .line 898
    .restart local v21       #amt_parent:D
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 899
    .restart local v26       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v3, "id"

    const-string v6, "_id"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v3, "name"

    const-string v6, "acc_name"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-wide/16 v33, 0x0

    .line 906
    .restart local v33       #total_child:D
    const/16 v28, 0x0

    .line 908
    .restart local v28       #hasChild:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v24

    .line 909
    .restart local v24       #c_child:Landroid/database/Cursor;
    if-eqz v24, :cond_b

    .line 910
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 911
    const/16 v28, 0x1

    .line 914
    :cond_9
    const-string v3, "_id"

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-string v18, ""

    move-wide v12, v4

    invoke-virtual/range {v11 .. v18}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v19

    .line 917
    .restart local v19       #amt_child:D
    add-double v33, v33, v19

    .line 919
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 912
    if-nez v3, :cond_9

    .line 922
    .end local v19           #amt_child:D
    :cond_a
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_b
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #category_id:J
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v21, v33

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    add-double v6, v21, v33

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_c

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 930
    :cond_c
    add-double v6, v31, v21

    add-double v31, v6, v33

    .line 932
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 894
    if-nez v3, :cond_8

    .line 935
    .end local v21           #amt_parent:D
    .end local v24           #c_child:Landroid/database/Cursor;
    .end local v28           #hasChild:Z
    .end local v33           #total_child:D
    :cond_d
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 939
    .end local v23           #c:Landroid/database/Cursor;
    :cond_e
    const v3, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 940
    .local v35, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v27, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    .end local v10           #payee:Ljava/lang/String;
    .end local v26           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #payee_amt:D
    .end local v35           #tv_total:Landroid/widget/TextView;
    :cond_f
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_10
    return-void
.end method

.method private _IncomeStatement()V
    .locals 29

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v19

    .line 428
    .local v19, currency:Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 429
    .local v20, total:D
    const-wide/16 v13, 0x0

    .line 430
    .local v13, amt_parent:D
    const-wide/16 v22, 0x0

    .line 433
    .local v22, total_child:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 435
    const-wide/16 v26, 0x0

    .line 436
    .local v26, total_income:D
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v18, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v3, "id"

    const-string v4, "0"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v15

    .line 443
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 444
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 446
    :cond_0
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 447
    .local v4, acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v13

    .line 448
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v17, childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v3, "id"

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v3, "name"

    const-string v6, "acc_name"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-wide/16 v22, 0x0

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v16

    .line 458
    .local v16, c_child:Landroid/database/Cursor;
    if-eqz v16, :cond_3

    .line 459
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    :cond_1
    const-string v3, "_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v11

    .line 464
    .local v11, amt_child:D
    add-double v22, v22, v11

    .line 466
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 460
    if-nez v3, :cond_1

    .line 468
    .end local v11           #amt_child:D
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_3
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #acc_id:J
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v13, v22

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-double v6, v26, v13

    add-double v26, v6, v22

    .line 473
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 445
    if-nez v3, :cond_0

    .line 476
    .end local v16           #c_child:Landroid/database/Cursor;
    .end local v17           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_5
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-wide/16 v24, 0x0

    .line 481
    .local v24, total_expense:D
    new-instance v18, Ljava/util/HashMap;

    .end local v18           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 482
    .restart local v18       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v3, "level"

    const-string v4, "0"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v3, "id"

    const-string v4, "0"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v3, "name"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v15

    .line 488
    if-eqz v15, :cond_b

    .line 489
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 491
    :cond_6
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 492
    .restart local v4       #acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v13

    .line 493
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 494
    .restart local v17       #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v3, "level"

    const-string v6, "1"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v3, "id"

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v3, "name"

    const-string v6, "acc_name"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v3, "amount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v7, v0

    invoke-virtual {v7, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-wide/16 v22, 0x0

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v16

    .line 503
    .restart local v16       #c_child:Landroid/database/Cursor;
    if-eqz v16, :cond_9

    .line 504
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 507
    :cond_7
    const-string v3, "_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v11

    .line 509
    .restart local v11       #amt_child:D
    add-double v22, v22, v11

    .line 511
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 505
    if-nez v3, :cond_7

    .line 513
    .end local v11           #amt_child:D
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_9
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #acc_id:J
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    add-double v6, v13, v22

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-double v6, v24, v13

    add-double v24, v6, v22

    .line 518
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 490
    if-nez v3, :cond_6

    .line 521
    .end local v16           #c_child:Landroid/database/Cursor;
    .end local v17           #childMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_b
    const-string v3, "amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const v3, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 526
    .local v28, tv_total:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    move-object v6, v0

    sub-double v7, v26, v24

    invoke-virtual {v6, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    return-void
.end method

.method private _loadData()V
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    const-string v1, "_loadData"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget v0, p0, Lcom/wareone/tappmt/Reports;->m_type_index:I

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_IncomeStatement()V

    .line 423
    :goto_0
    return-void

    .line 408
    :cond_0
    iget v0, p0, Lcom/wareone/tappmt/Reports;->m_group_index:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 410
    :pswitch_0
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_ExpenseByCategory()V

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_ExpenseByAccount()V

    goto :goto_0

    .line 416
    :pswitch_2
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_ExpenseByGroup()V

    goto :goto_0

    .line 419
    :pswitch_3
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_ExpenseByPayee()V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private _loadDue()V
    .locals 4

    .prologue
    .line 382
    sget-object v1, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    const-string v2, "_loadDue"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getAllMonths()Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 388
    if-nez v1, :cond_0

    .line 393
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Reports;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_due_adapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_due_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 400
    :cond_3
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Reports;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Reports;)I
    .locals 1
    .parameter

    .prologue
    .line 1510
    iget v0, p0, Lcom/wareone/tappmt/Reports;->m_type_index:I

    return v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Reports;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Reports;)I
    .locals 1
    .parameter

    .prologue
    .line 1511
    iget v0, p0, Lcom/wareone/tappmt/Reports;->m_group_index:I

    return v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Reports;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/Reports;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->setBeginDate()V

    return-void
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/Reports;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$8(Lcom/wareone/tappmt/Reports;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/wareone/tappmt/Reports;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->setEndDate()V

    return-void
.end method

.method private setBeginDate()V
    .locals 10

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 302
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 309
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 312
    new-instance v2, Lcom/wareone/tappmt/Reports$3;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reports$3;-><init>(Lcom/wareone/tappmt/Reports;)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 311
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 330
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 331
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 333
    return-void

    .line 306
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 307
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method

.method private setEndDate()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 337
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 340
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 344
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 346
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 347
    new-instance v2, Lcom/wareone/tappmt/Reports$4;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reports$4;-><init>(Lcom/wareone/tappmt/Reports;)V

    .line 362
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 346
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 365
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 366
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 368
    return-void

    .line 341
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 342
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method


# virtual methods
.method protected _refresh()V
    .locals 4

    .prologue
    .line 371
    sget-object v1, Lcom/wareone/tappmt/Reports;->TAG:Ljava/lang/String;

    const-string v2, "_refresh"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_loadData()V

    .line 374
    iget-object v1, p0, Lcom/wareone/tappmt/Reports;->m_adapter:Lcom/wareone/tappmt/Reports$ReportAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/Reports$ReportAdapter;->notifyDataSetChanged()V

    .line 376
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    .local v0, tv_title:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v6, 0x7f030033

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Reports;->setContentView(I)V

    .line 163
    new-instance v6, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v6, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 164
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 165
    new-instance v6, Ljava/text/DecimalFormat;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v8, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->m_nf:Ljava/text/NumberFormat;

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    .line 169
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {p0}, Lcom/wareone/tappmt/Reports;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 172
    .local v1, extra:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 173
    const-string v6, "RANGE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    .line 174
    const-string v6, "GROUPBY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/wareone/tappmt/Reports;->m_group_index:I

    .line 175
    const-string v6, "TYPE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/wareone/tappmt/Reports;->m_type_index:I

    .line 186
    :goto_0
    const v6, 0x7f0c0014

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 187
    .local v4, tv_title:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_loadDue()V

    .line 190
    invoke-direct {p0}, Lcom/wareone/tappmt/Reports;->_loadData()V

    .line 192
    const v6, 0x7f0c0032

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 193
    .local v2, lv_report:Landroid/widget/ListView;
    new-instance v6, Lcom/wareone/tappmt/Reports$ReportAdapter;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->m_data:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/wareone/tappmt/Reports$ReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->m_adapter:Lcom/wareone/tappmt/Reports$ReportAdapter;

    .line 194
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_adapter:Lcom/wareone/tappmt/Reports$ReportAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    const v6, 0x7f090071

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Reports;->setTitle(I)V

    .line 198
    new-instance v6, Lcom/wareone/tappmt/Reports$1;

    invoke-direct {v6, p0}, Lcom/wareone/tappmt/Reports$1;-><init>(Lcom/wareone/tappmt/Reports;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    const v6, 0x7f0c0031

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Reports;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 220
    .local v3, s1:Landroid/widget/Spinner;
    new-instance v6, Landroid/widget/ArrayAdapter;

    .line 221
    const v7, 0x1090008

    iget-object v8, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    invoke-direct {v6, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    iput-object v6, p0, Lcom/wareone/tappmt/Reports;->m_due_adapter:Landroid/widget/ArrayAdapter;

    .line 222
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_due_adapter:Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 223
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_due_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 225
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    aget-object v6, v6, v9

    const/4 v7, 0x7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, yrmn:Ljava/lang/String;
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_due:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    new-instance v6, Lcom/wareone/tappmt/Reports$2;

    invoke-direct {v6, p0}, Lcom/wareone/tappmt/Reports$2;-><init>(Lcom/wareone/tappmt/Reports;)V

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 263
    return-void

    .line 178
    .end local v2           #lv_report:Landroid/widget/ListView;
    .end local v3           #s1:Landroid/widget/Spinner;
    .end local v4           #tv_title:Landroid/widget/TextView;
    .end local v5           #yrmn:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, df:Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    invoke-virtual {v6, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 180
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 181
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 182
    iget-object v6, p0, Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;

    iget-object v7, p0, Lcom/wareone/tappmt/Reports;->curDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/wareone/tappmt/Reports;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
