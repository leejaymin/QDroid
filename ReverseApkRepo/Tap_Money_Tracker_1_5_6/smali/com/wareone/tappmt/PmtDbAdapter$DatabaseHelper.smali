.class Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsInitializing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "tappmt.db"

    .line 1474
    const-string v3, "tappmt.db"

    const/16 v3, 0xf

    invoke-direct {p0, p1, v7, v4, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1470
    iput-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1471
    iput-boolean v5, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1479
    .local v1, sdcard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "tappmt"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1480
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1481
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Application data directory created"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_0
    const-string v3, "TapPMTPrefs"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1485
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "use_sdcard"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->access$2(Z)V

    .line 1487
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$3()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1488
    invoke-static {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->access$2(Z)V

    .line 1489
    const-string v3, "/sdcard/tappmt/tappmt.db"

    invoke-static {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->access$4(Ljava/lang/String;)V

    .line 1497
    :goto_1
    return-void

    :cond_1
    move v3, v6

    .line 1485
    goto :goto_0

    .line 1491
    :cond_2
    invoke-static {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->access$2(Z)V

    .line 1492
    const-string v3, "tappmt.db"

    invoke-static {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->access$4(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 1501
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$3()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1532
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1506
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 1510
    :cond_2
    iget-boolean v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    if-eqz v2, :cond_3

    .line 1511
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getReadableDatabase called recursively"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1501
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1515
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1516
    :catch_0
    move-exception v1

    .line 1517
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Couldn\'t open tappmt.db for writing (will try read-only):"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1520
    const/4 v0, 0x0

    .line 1522
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1523
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1524
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 1525
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1526
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1525
    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1533
    :catchall_1
    move-exception v2

    .line 1534
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1535
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_4

    .line 1536
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1537
    :cond_4
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1529
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1530
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Opened tappmt.db in read-only mode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iput-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1532
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1534
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1535
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_0

    .line 1536
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 1547
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$3()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1548
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1589
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1550
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1551
    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 1554
    :cond_1
    iget-boolean v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 1555
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getWritableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1547
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1564
    :cond_2
    const/4 v1, 0x0

    .line 1565
    .local v1, success:Z
    const/4 v0, 0x0

    .line 1569
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1570
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$5()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 1572
    .local v2, version:I
    if-eq v2, v5, :cond_3

    .line 1573
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1575
    if-nez v2, :cond_6

    .line 1576
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1580
    :goto_1
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1581
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1583
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1587
    :cond_3
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1588
    const/4 v1, 0x1

    .line 1591
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1592
    if-eqz v1, :cond_9

    .line 1593
    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_4

    .line 1595
    :try_start_6
    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1600
    :cond_4
    :goto_2
    :try_start_7
    iput-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_3
    move-object v3, v0

    .line 1589
    goto :goto_0

    .line 1578
    :cond_6
    const/16 v3, 0xf

    :try_start_8
    invoke-virtual {p0, v0, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 1582
    :catchall_1
    move-exception v3

    .line 1583
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1584
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1590
    .end local v2           #version:I
    :catchall_2
    move-exception v3

    .line 1591
    const/4 v4, 0x0

    :try_start_a
    iput-boolean v4, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mIsInitializing:Z

    .line 1592
    if-eqz v1, :cond_a

    .line 1593
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_7

    .line 1595
    :try_start_b
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1600
    :cond_7
    :goto_4
    :try_start_c
    iput-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1606
    :cond_8
    :goto_5
    throw v3

    .line 1603
    .restart local v2       #version:I
    :cond_9
    if-eqz v0, :cond_5

    .line 1604
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 1603
    .end local v2           #version:I
    :cond_a
    if-eqz v0, :cond_8

    .line 1604
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 1596
    :catch_0
    move-exception v4

    goto :goto_4

    .restart local v2       #version:I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "remote_id"

    const-string v10, "modified"

    .line 1614
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY,acc_rv TINYINT,acc_name VARCHAR(20),acc_type TINYINT,qif_type TINYINT,currency VARCHAR(3),open_amt NUMERIC,sub_of INTEGER,use_budget BOOLEAN,parent_budget BOOLEAN,budget NUMERIC,frequency INTEGER,remote_id INTEGER,sync BOOLEAN,modified INTEGER)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1633
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1634
    .local v0, _values:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 1653
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1654
    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-lt v2, v4, :cond_1

    .line 1673
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1674
    const/4 v2, 0x0

    :goto_2
    array-length v4, v0

    if-lt v2, v4, :cond_2

    .line 1693
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1694
    const/4 v2, 0x0

    :goto_3
    array-length v4, v0

    if-lt v2, v4, :cond_3

    .line 1713
    const-string v4, "CREATE TABLE groups (_id INTEGER PRIMARY KEY,group_name VARCHAR(20),remote_id INTEGER,sync BOOLEAN,modified INTEGER)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1722
    const/4 v2, 0x0

    :goto_4
    array-length v4, v0

    if-lt v2, v4, :cond_4

    .line 1731
    const-string v4, "CREATE TABLE currency (_id INTEGER PRIMARY KEY,currency_name VARCHAR(3) ,isdefault BOOLEAN,rate NUMERIC,digits INTEGER,symbol VARCHAR(1) ,remote_id INTEGER,sync BOOLEAN,modified INTEGER)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1742
    const/16 v4, 0x24

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "ARS"

    aput-object v4, v1, v7

    const-string v4, "AUD"

    aput-object v4, v1, v8

    const/4 v4, 0x2

    const-string v5, "BRL"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "CAD"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "CHF"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "CLP"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "CNY"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "COP"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "CZK"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "DKK"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "EGP"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "EUR"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "GBP"

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "HKD"

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "HUF"

    aput-object v5, v1, v4

    const/16 v4, 0xf

    .line 1743
    const-string v5, "IDR"

    aput-object v5, v1, v4

    const/16 v4, 0x10

    const-string v5, "INR"

    aput-object v5, v1, v4

    const/16 v4, 0x11

    const-string v5, "JPY"

    aput-object v5, v1, v4

    const/16 v4, 0x12

    const-string v5, "KRW"

    aput-object v5, v1, v4

    const/16 v4, 0x13

    const-string v5, "LKR"

    aput-object v5, v1, v4

    const/16 v4, 0x14

    const-string v5, "MNT"

    aput-object v5, v1, v4

    const/16 v4, 0x15

    const-string v5, "MOP"

    aput-object v5, v1, v4

    const/16 v4, 0x16

    const-string v5, "MXN"

    aput-object v5, v1, v4

    const/16 v4, 0x17

    const-string v5, "MYR"

    aput-object v5, v1, v4

    const/16 v4, 0x18

    const-string v5, "NOK"

    aput-object v5, v1, v4

    const/16 v4, 0x19

    const-string v5, "NZD"

    aput-object v5, v1, v4

    const/16 v4, 0x1a

    const-string v5, "PLN"

    aput-object v5, v1, v4

    const/16 v4, 0x1b

    const-string v5, "RUB"

    aput-object v5, v1, v4

    const/16 v4, 0x1c

    const-string v5, "SEK"

    aput-object v5, v1, v4

    const/16 v4, 0x1d

    const-string v5, "SGD"

    aput-object v5, v1, v4

    const/16 v4, 0x1e

    const-string v5, "SYP"

    aput-object v5, v1, v4

    const/16 v4, 0x1f

    const-string v5, "THB"

    aput-object v5, v1, v4

    const/16 v4, 0x20

    const-string v5, "TWD"

    aput-object v5, v1, v4

    const/16 v4, 0x21

    const-string v5, "UAH"

    aput-object v5, v1, v4

    const/16 v4, 0x22

    const-string v5, "USD"

    aput-object v5, v1, v4

    const/16 v4, 0x23

    const-string v5, "ZAR"

    aput-object v5, v1, v4

    .line 1744
    .local v1, curr:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_5
    array-length v4, v1

    if-lt v2, v4, :cond_5

    .line 1756
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->setDefault(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1758
    const-string v4, "CREATE TABLE transactions (_id INTEGER PRIMARY KEY,mode TINYINT,trans_date DATE ,category INTEGER ,account INTEGER ,payee VARCHAR(50),group_name INTEGER,currency VARCHAR(3) ,amount NUMERIC,acc_rate NUMERIC,acc_amount NUMERIC,ex_rate NUMERIC,ex_amount NUMERIC,source VARCHAR(30),src_id INTEGER,note TEXT,remote_id INTEGER,sync BOOLEAN,modified DATETIME)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1780
    const-string v4, "CREATE TABLE reminders (_id INTEGER PRIMARY KEY,reminder_name VARCHAR(50) ,begin_date DATE ,due_date DATE ,previous_days INTEGER ,times INTEGER ,count INTEGER ,next_date DATE ,notify_date DATE ,cycle INTEGER ,auto_rec INTEGER ,status INTEGER ,mode TINYINT,category INTEGER ,account INTEGER ,payee VARCHAR(50) ,group_name INTEGER ,currency VARCHAR(3) ,amount NUMERIC,note TEXT,remote_id INTEGER,sync BOOLEAN,modified DATETIME)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1807
    const-string v4, "CREATE TABLE templates (_id INTEGER PRIMARY KEY,template_name VARCHAR(50) ,mode TINYINT,category INTEGER ,account INTEGER ,payee VARCHAR(50) ,group_name INTEGER ,currency VARCHAR(3) ,amount NUMERIC,remote_id INTEGER,sync BOOLEAN,modified DATETIME)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1822
    const-string v4, "CREATE TABLE payees (_id INTEGER PRIMARY KEY,payee_name VARCHAR(50),remote_id INTEGER,sync BOOLEAN,modified DATETIME)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1830
    const-string v4, "CREATE TABLE dellogs (row_id INTEGER,table_name VARCHAR(50))"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1844
    return-void

    .line 1635
    .end local v1           #curr:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1636
    const-string v4, "acc_rv"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1637
    const-string v4, "acc_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    const-string v4, "qif_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v4, "acc_name"

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v4, "currency"

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v4, "open_amt"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1642
    const-string v4, "sub_of"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1643
    const-string v4, "use_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1644
    const-string v4, "parent_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1645
    const-string v4, "budget"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1646
    const-string v4, "frequency"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1647
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1649
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1650
    const-string v4, "accounts"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1634
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1655
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1656
    const-string v4, "acc_rv"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1657
    const-string v4, "acc_type"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1658
    const-string v4, "qif_type"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1659
    const-string v4, "acc_name"

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const-string v4, "currency"

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v4, "open_amt"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1662
    const-string v4, "sub_of"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1663
    const-string v4, "use_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1664
    const-string v4, "parent_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1665
    const-string v4, "budget"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1666
    const-string v4, "frequency"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1667
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1669
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    const-string v4, "accounts"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1654
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1675
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1676
    const-string v4, "acc_rv"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    const-string v4, "acc_type"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1678
    const-string v4, "qif_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1679
    const-string v4, "acc_name"

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v4, "currency"

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v4, "open_amt"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1682
    const-string v4, "sub_of"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1683
    const-string v4, "use_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1684
    const-string v4, "parent_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1685
    const-string v4, "budget"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    const-string v4, "frequency"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1688
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1689
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    const-string v4, "accounts"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1695
    :cond_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1696
    const-string v4, "acc_rv"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    const-string v4, "acc_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1698
    const-string v4, "qif_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1699
    const-string v4, "acc_name"

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v4, "currency"

    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v4, "open_amt"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    const-string v4, "sub_of"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1703
    const-string v4, "use_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1704
    const-string v4, "parent_budget"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1705
    const-string v4, "budget"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    const-string v4, "frequency"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1709
    const-string v4, "modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    const-string v4, "accounts"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1694
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1723
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1724
    const-string v4, "group_name"

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1727
    const-string v4, "modified"

    const-string v4, "2009-01-01 00:00:00"

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v4, "groups"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1722
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 1745
    .restart local v1       #curr:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1746
    const-string v4, "currency_name"

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v4, "isdefault"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1748
    const-string v4, "rate"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1749
    const-string v4, "digits"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1750
    const-string v4, "symbol"

    const-string v5, "$"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v4, "remote_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1752
    const-string v4, "sync"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1753
    const-string v4, "modified"

    const-string v4, "2010-01-01 00:00:00"

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v4, "currency"

    invoke-virtual {p1, v4, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1744
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 25
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1850
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onUpgrade -------"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oldVersion -------> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newVersion -------> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$1()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1854
    .local v12, _values:[Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1855
    .local v20, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1856
    .local v24, values:Landroid/content/ContentValues;
    const-string v5, "currency"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "currency_name"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1857
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 1858
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1860
    :cond_0
    const-string v4, "currency_name"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1861
    .local v17, currency:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1862
    .local v19, index:I
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-le v0, v1, :cond_1

    .line 1863
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1866
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1859
    if-nez v4, :cond_0

    .line 1868
    .end local v17           #currency:Ljava/lang/String;
    .end local v19           #index:I
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1870
    :cond_3
    const/16 v18, 0x0

    .end local p0
    .local v18, i:I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    move v1, v4

    if-lt v0, v1, :cond_c

    .line 1880
    const-string v23, "SELECT * FROM sqlite_master WHERE name=?"

    .line 1881
    .local v23, sql:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "reminders"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1882
    .local v16, cur:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1883
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "create table reminders"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v4, "CREATE TABLE reminders (_id INTEGER PRIMARY KEY,reminder_name VARCHAR(50) ,begin_date DATE ,due_date DATE ,previous_days INTEGER ,next_date DATE ,notify_date DATE ,cycle INTEGER ,status INTEGER ,mode TINYINT,category INTEGER ,account INTEGER ,group_name INTEGER ,currency VARCHAR(3) ,amount NUMERIC,note TEXT)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1903
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1908
    const/4 v4, 0x7

    move/from16 v0, p2

    move v1, v4

    if-ge v0, v1, :cond_5

    .line 1909
    const-string v4, "ALTER TABLE transactions ADD COLUMN source VARCHAR(30)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    const-string v4, "ALTER TABLE transactions ADD COLUMN src_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1914
    :cond_5
    const/16 v4, 0x8

    move/from16 v0, p2

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 1915
    const-string v4, "ALTER TABLE transactions ADD COLUMN payee VARCHAR(50)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    const-string v4, "update transactions set payee=\'\'"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1917
    const-string v4, "ALTER TABLE reminders ADD COLUMN times INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    const-string v4, "ALTER TABLE reminders ADD COLUMN count INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    const-string v4, "ALTER TABLE reminders ADD COLUMN payee VARCHAR(50)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1920
    const-string v4, "update reminders set times=0, count=0, payee=\'\'"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1922
    const-string v23, "SELECT * FROM sqlite_master WHERE name=?"

    .line 1923
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "payees"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1924
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1925
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "create table payees"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v4, "CREATE TABLE payees (_id INTEGER PRIMARY KEY,payee_name VARCHAR(50))"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1931
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1934
    :cond_7
    const/16 v4, 0xc

    move/from16 v0, p2

    move v1, v4

    if-ge v0, v1, :cond_b

    .line 1936
    const-string v23, "SELECT * FROM sqlite_master WHERE name=?"

    .line 1937
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "dellogs"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1938
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1939
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "create table dellogs"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v4, "CREATE TABLE dellogs (row_id INTEGER,table_name VARCHAR(50))"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1945
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1947
    const-string v4, "ALTER TABLE currency ADD COLUMN digits INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1948
    const-string v4, "ALTER TABLE currency ADD COLUMN symbol VARCHAR(1)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1949
    const-string v4, "ALTER TABLE currency ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1950
    const-string v4, "ALTER TABLE currency ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1951
    const-string v4, "ALTER TABLE currency ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1952
    const-string v4, "update currency set digits=2,symbol=\'$\',remote_id=0,sync=0,modified=0"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1953
    const-string v4, "update currency set rate=round(1/rate,4)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1955
    const-string v4, "ALTER TABLE accounts ADD COLUMN qif_type TINYINT"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1956
    const-string v4, "ALTER TABLE accounts ADD COLUMN frequency INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1957
    const-string v4, "update accounts set frequency=0 where acc_rv=0 and acc_type=1"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1958
    const-string v4, "update accounts set qif_type=0 where acc_rv=0 and acc_type=1"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1959
    const-string v4, "update accounts set qif_type=4 where acc_rv=0 and acc_type=-1"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1960
    const-string v4, "update accounts set qif_type=0 where acc_rv=1"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1961
    const-string v4, "ALTER TABLE accounts ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1962
    const-string v4, "ALTER TABLE accounts ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1963
    const-string v4, "ALTER TABLE accounts ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1964
    const-string v4, "update accounts set remote_id=0,sync=0,modified=0"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1966
    const-string v4, "ALTER TABLE groups ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1967
    const-string v4, "ALTER TABLE groups ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v4, "ALTER TABLE groups ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1969
    const-string v4, "update groups set remote_id=0,sync=0,modified=0"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1971
    const-string v4, "ALTER TABLE payees ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1972
    const-string v4, "ALTER TABLE payees ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1973
    const-string v4, "ALTER TABLE payees ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1974
    const-string v4, "update payees set remote_id=0,sync=0,modified=0"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1975
    const-string v4, "ALTER TABLE payees ADD COLUMN payee_name VARCHAR(50)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1976
    const-string v4, "update payees set payee_name=category_name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    const-string v4, "ALTER TABLE reminders ADD COLUMN auto_rec INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1979
    const-string v4, "ALTER TABLE reminders ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1980
    const-string v4, "ALTER TABLE reminders ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1981
    const-string v4, "ALTER TABLE reminders ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1982
    const-string v4, "update reminders set auto_rec=0,remote_id=0,sync=0,modified=0"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1984
    const-string v4, "ALTER TABLE transactions ADD COLUMN acc_rate NUMERIC"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1985
    const-string v4, "ALTER TABLE transactions ADD COLUMN acc_amount NUMERIC"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1986
    const-string v4, "ALTER TABLE transactions ADD COLUMN ex_rate NUMERIC"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1987
    const-string v4, "ALTER TABLE transactions ADD COLUMN remote_id INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1988
    const-string v4, "ALTER TABLE transactions ADD COLUMN sync BOOLEAN"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1989
    const-string v4, "ALTER TABLE transactions ADD COLUMN modified INTEGER"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1990
    const-string v4, "update transactions set remote_id=0,sync=0,modified=0,acc_amount=amount,acc_rate=1,ex_rate=round(amount/ex_amount,4)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1992
    const-string v4, "select transactions._id, transactions.amount, transactions.ex_amount, transactions.currency, accounts.currency as curr_acc from transactions, accounts where transactions.account=accounts._id and transactions.currency<>accounts.currency"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1993
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1995
    :cond_9
    const-string v4, "curr_acc"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getExchangeRateByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)D

    move-result-wide v21

    .line 1996
    .local v21, rate:D
    const-string v4, "ex_amount"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    div-double v4, v4, v21

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v13

    .line 1997
    .local v13, amount:D
    const-string v4, "update transactions set acc_amount=? where _id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1998
    const-string v4, "update transactions set acc_rate=round(amount/acc_amount, 4) where _id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2000
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1994
    if-nez v4, :cond_9

    .line 2002
    .end local v13           #amount:D
    .end local v21           #rate:D
    :cond_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2005
    const-string v4, "CREATE TABLE templates (_id INTEGER PRIMARY KEY,template_name VARCHAR(50) ,mode TINYINT,category INTEGER ,account INTEGER ,payee VARCHAR(50) ,group_name INTEGER ,currency VARCHAR(3) ,amount NUMERIC,remote_id INTEGER,sync BOOLEAN,modified DATETIME)"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2023
    :cond_b
    const-string v4, "update currency set symbol=\'$\' where digits is null"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2024
    const-string v4, "update currency set remote_id=0 where digits is null"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2025
    const-string v4, "update currency set sync=0 where digits is null"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2026
    const-string v4, "update currency set modified=\'2010-01-01 00:00:00\' where digits is null"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2027
    const-string v4, "update currency set digits=2 where digits is null"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2035
    return-void

    .line 1871
    .end local v16           #cur:Landroid/database/Cursor;
    .end local v23           #sql:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 1872
    const-string v4, "currency_name"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v4, "isdefault"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1874
    const-string v4, "rate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1875
    const-string v4, "currency"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1870
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0
.end method
