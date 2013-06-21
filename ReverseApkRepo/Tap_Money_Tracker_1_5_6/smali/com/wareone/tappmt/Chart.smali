.class public Lcom/wareone/tappmt/Chart;
.super Landroid/app/Activity;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Chart$PieChartView;
    }
.end annotation


# static fields
.field public static final ITEM_AMOUNT:Ljava/lang/String; = "amount"

.field public static final ITEM_COLOR:Ljava/lang/String; = "color"

.field public static final ITEM_NAME:Ljava/lang/String; = "name"

.field public static final ITEM_PERCENT:Ljava/lang/String; = "percent"

.field private static final TAG:Ljava/lang/String;

.field public static final colors:[I


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

.field private m_group_index:I

.field private m_range:[Ljava/lang/String;

.field private m_type_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/wareone/tappmt/Chart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Chart;->TAG:Ljava/lang/String;

    .line 531
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wareone/tappmt/Chart;->colors:[I

    .line 41
    return-void

    .line 531
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 523
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    .line 524
    iput v1, p0, Lcom/wareone/tappmt/Chart;->m_type_index:I

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/wareone/tappmt/Chart;->m_group_index:I

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    .line 41
    return-void
.end method

.method private _loadData()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/wareone/tappmt/Chart;->m_group_index:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 344
    :pswitch_0
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadDataByCategory()V

    goto :goto_0

    .line 347
    :pswitch_1
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadDataByAccount()V

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadDataByGroup()V

    goto :goto_0

    .line 353
    :pswitch_3
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadDataByPayee()V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private _loadDataByAccount()V
    .locals 18

    .prologue
    .line 412
    const-wide/16 v10, 0x0

    .line 413
    .local v10, total:D
    const-wide/16 v3, 0x0

    .line 415
    .local v3, amt_parent:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v5

    .line 418
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_2

    .line 419
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 421
    :cond_0
    const-string v14, "_id"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 422
    .local v1, acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v1, v2, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByAccount(J[Ljava/lang/String;)D

    move-result-wide v3

    .line 423
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v6, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-string v14, "name"

    const-string v15, "acc_name"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v14, "amount"

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-double/2addr v10, v3

    .line 430
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    .line 420
    if-nez v14, :cond_0

    .line 433
    .end local v1           #acc_id:J
    .end local v6           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_2
    const-wide/high16 v14, 0x4024

    const-wide/high16 v16, 0x4010

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 437
    .local v8, p:D
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_3

    .line 443
    return-void

    .line 438
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v14, "amount"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 439
    .local v12, value:D
    div-double v14, v12, v10

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    div-double v12, v14, v8

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v14, "percent"

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v14, "color"

    sget-object v15, Lcom/wareone/tappmt/Chart;->colors:[I

    sget-object v16, Lcom/wareone/tappmt/Chart;->colors:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v16, v7, v16

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private _loadDataByCategory()V
    .locals 26

    .prologue
    .line 361
    const-wide/16 v16, 0x0

    .line 362
    .local v16, total:D
    const-wide/16 v8, 0x0

    .line 363
    .local v8, amt_parent:D
    const-wide/16 v18, 0x0

    .line 366
    .local v18, total_child:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v10

    .line 369
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 370
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 372
    :cond_0
    const-string v22, "_id"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 373
    .local v4, acc_id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-wide v1, v4

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v8

    .line 374
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v12, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-wide/16 v18, 0x0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    const-string v23, "_id"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v11

    .line 379
    .local v11, c_child:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 380
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 382
    :cond_1
    const-string v22, "_id"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v11

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-wide v1, v4

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByCategory(J[Ljava/lang/String;)D

    move-result-wide v6

    .line 384
    .local v6, amt_child:D
    add-double v18, v18, v6

    .line 386
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    .line 381
    if-nez v22, :cond_1

    .line 388
    .end local v6           #amt_child:D
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_3
    const-string v22, "name"

    const-string v23, "acc_name"

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v22, "amount"

    add-double v23, v8, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    add-double v22, v16, v8

    add-double v16, v22, v18

    .line 395
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    .line 371
    if-nez v22, :cond_0

    .line 398
    .end local v4           #acc_id:J
    .end local v11           #c_child:Landroid/database/Cursor;
    .end local v12           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_5
    const-wide/high16 v22, 0x4024

    const-wide/high16 v24, 0x4010

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 402
    .local v14, p:D
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 408
    return-void

    .line 403
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v22, "amount"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 404
    .local v20, value:D
    div-double v22, v20, v16

    mul-double v22, v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v22, v14

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v22, "percent"

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v23

    move-object v0, v4

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v22, "color"

    sget-object v23, Lcom/wareone/tappmt/Chart;->colors:[I

    sget-object v24, Lcom/wareone/tappmt/Chart;->colors:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    rem-int v24, v13, v24

    aget v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object v0, v4

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method private _loadDataByGroup()V
    .locals 17

    .prologue
    .line 447
    const-wide/16 v9, 0x0

    .line 449
    .local v9, total:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v1

    .line 452
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 453
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 455
    :cond_0
    const-string v13, "_id"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, group_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v13, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByGroup(J[Ljava/lang/String;)D

    move-result-wide v3

    .line 457
    .local v3, group_amt:D
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v2, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v13, "name"

    const-string v14, "group_name"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v13, "amount"

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-double/2addr v9, v3

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    .line 454
    if-nez v13, :cond_0

    .line 467
    .end local v2           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #group_amt:D
    .end local v5           #group_id:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_2
    const-wide/high16 v13, 0x4024

    const-wide/high16 v15, 0x4010

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 471
    .local v7, p:D
    const/4 v6, 0x0

    .end local v1           #c:Landroid/database/Cursor;
    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v6, v13, :cond_3

    .line 477
    return-void

    .line 472
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "amount"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 473
    .local v11, value:D
    div-double v13, v11, v9

    mul-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    div-double v11, v13, v7

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "percent"

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "color"

    sget-object v14, Lcom/wareone/tappmt/Chart;->colors:[I

    sget-object v15, Lcom/wareone/tappmt/Chart;->colors:[I

    array-length v15, v15

    rem-int v15, v6, v15

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private _loadDataByPayee()V
    .locals 17

    .prologue
    .line 481
    const-wide/16 v9, 0x0

    .line 483
    .local v9, total:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayeesByTransaction()Landroid/database/Cursor;

    move-result-object v1

    .line 486
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 487
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 489
    :cond_0
    const-string v13, "payee"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, payee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v6, v14}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByPayee(Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide v7

    .line 491
    .local v7, payee_amt:D
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v2, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v13, "name"

    const-string v14, "payee"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v13, "amount"

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    add-double/2addr v9, v7

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    .line 488
    if-nez v13, :cond_0

    .line 501
    .end local v2           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #payee:Ljava/lang/String;
    .end local v7           #payee_amt:D
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v13, v0

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->getTotalByPayee(Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide v7

    .line 504
    .restart local v7       #payee_amt:D
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    .restart local v2       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v13, "name"

    const-string v14, "<None>"

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v13, "amount"

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    add-double/2addr v9, v7

    .line 511
    const-wide/high16 v13, 0x4024

    const-wide/high16 v15, 0x4010

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 512
    .local v4, p:D
    const/4 v3, 0x0

    .end local v1           #c:Landroid/database/Cursor;
    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_3

    .line 518
    return-void

    .line 513
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "amount"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 514
    .local v11, value:D
    div-double v13, v11, v9

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    div-double v11, v13, v4

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "percent"

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v13, "color"

    sget-object v14, Lcom/wareone/tappmt/Chart;->colors:[I

    sget-object v15, Lcom/wareone/tappmt/Chart;->colors:[I

    array-length v15, v15

    rem-int v15, v3, v15

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private _loadDue()V
    .locals 4

    .prologue
    .line 323
    sget-object v1, Lcom/wareone/tappmt/Chart;->TAG:Ljava/lang/String;

    const-string v2, "_loadDue"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getAllMonths()Landroid/database/Cursor;

    move-result-object v0

    .line 327
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 328
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 329
    if-nez v1, :cond_0

    .line 334
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/Chart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Chart;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wareone/tappmt/Chart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Chart;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Chart;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->setBeginDate()V

    return-void
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Chart;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/Chart;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/Chart;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->setEndDate()V

    return-void
.end method

.method private setBeginDate()V
    .locals 10

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 245
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 248
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 252
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 254
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 255
    new-instance v2, Lcom/wareone/tappmt/Chart$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Chart$2;-><init>(Lcom/wareone/tappmt/Chart;)V

    .line 270
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

    .line 254
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 273
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 274
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 276
    return-void

    .line 249
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 250
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

    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 280
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 283
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 287
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 289
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 290
    new-instance v2, Lcom/wareone/tappmt/Chart$3;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Chart$3;-><init>(Lcom/wareone/tappmt/Chart;)V

    .line 305
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 289
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 308
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 309
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 311
    return-void

    .line 284
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 285
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method


# virtual methods
.method protected _refresh()V
    .locals 3

    .prologue
    .line 314
    sget-object v1, Lcom/wareone/tappmt/Chart;->TAG:Ljava/lang/String;

    const-string v2, "_refresh"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadData()V

    .line 318
    new-instance v0, Lcom/wareone/tappmt/Chart$PieChartView;

    invoke-direct {v0, p0, p0}, Lcom/wareone/tappmt/Chart$PieChartView;-><init>(Lcom/wareone/tappmt/Chart;Landroid/content/Context;)V

    .line 319
    .local v0, chart:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Chart;->setContentView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object v3, Lcom/wareone/tappmt/Chart;->TAG:Ljava/lang/String;

    const-string v4, "onCreate---------"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Chart;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/wareone/tappmt/Chart;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/Chart;->setRequestedOrientation(I)V

    .line 57
    new-instance v3, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 58
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 61
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    .line 62
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 64
    invoke-virtual {p0}, Lcom/wareone/tappmt/Chart;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 66
    const-string v3, "RANGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    .line 67
    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/wareone/tappmt/Chart;->m_type_index:I

    .line 68
    const-string v3, "GROUPBY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/wareone/tappmt/Chart;->m_group_index:I

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadDue()V

    .line 80
    invoke-direct {p0}, Lcom/wareone/tappmt/Chart;->_loadData()V

    .line 82
    new-instance v0, Lcom/wareone/tappmt/Chart$PieChartView;

    invoke-direct {v0, p0, p0}, Lcom/wareone/tappmt/Chart$PieChartView;-><init>(Lcom/wareone/tappmt/Chart;Landroid/content/Context;)V

    .line 84
    .local v0, chart:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Chart;->setContentView(Landroid/view/View;)V

    .line 85
    return-void

    .line 71
    .end local v0           #chart:Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 73
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    iget-object v4, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 74
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    iget-object v4, p0, Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/wareone/tappmt/Chart;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 183
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 194
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;

    iget-object v3, p0, Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/4 v4, 0x7

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/wareone/tappmt/Chart$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Chart$1;-><init>(Lcom/wareone/tappmt/Chart;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x7f0c00cc
        :pswitch_0
    .end packed-switch
.end method
