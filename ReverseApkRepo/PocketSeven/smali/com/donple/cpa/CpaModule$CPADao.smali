.class Lcom/donple/cpa/CpaModule$CPADao;
.super Lcom/donple/cpa/CpaModule$SQLiteConnect;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPADao"
.end annotation


# instance fields
.field database:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CPADao;->this$0:Lcom/donple/cpa/CpaModule;

    .line 1851
    invoke-direct {p0, p1, p2}, Lcom/donple/cpa/CpaModule$SQLiteConnect;-><init>(Lcom/donple/cpa/CpaModule;Landroid/content/Context;)V

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1852
    invoke-virtual {p0}, Lcom/donple/cpa/CpaModule$CPADao;->getDBInstance()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1853
    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 5

    .prologue
    .line 1934
    :try_start_0
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_sync"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    .line 1938
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveSyncData(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1950
    .local p1, syncRecords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1995
    :cond_1
    :goto_1
    return-void

    .line 1952
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1954
    .local v9, appId:I
    const-string v3, "appId = ?"

    .line 1955
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1960
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_sync"

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CPADao;->TABLE_SYNC_COLUMNS:[Ljava/lang/String;

    .line 1963
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 1960
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1965
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] \uc774\ubbf8 \uc788\ub294 \ub370\uc774\ud130 \uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1986
    :goto_2
    if-eqz v10, :cond_0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1991
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #appId:I
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1993
    .local v11, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_1

    .line 1971
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #appId:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] \uc800\uc7a5\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1972
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1973
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "appId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v0, "bundleId"

    const-string v1, ""

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1976
    const-string v0, "transactionId"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1977
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1980
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 1982
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "saveSyncData()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v0, v11}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1986
    if-eqz v10, :cond_0

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1985
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1986
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1987
    :cond_4
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public selectWhereStatus(I)Ljava/util/List;
    .locals 14
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/donple/cpa/CpaModule$App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1889
    const-string v3, "status = ?"

    .line 1890
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1892
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1895
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_sync"

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CPADao;->TABLE_SYNC_COLUMNS:[Ljava/lang/String;

    .line 1898
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1895
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1900
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1902
    const-string v0, "appId"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1904
    .local v11, columnAppId:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v10, apps:Ljava/util/List;,"Ljava/util/List<Lcom/donple/cpa/CpaModule$App;>;"
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1908
    :cond_0
    new-instance v9, Lcom/donple/cpa/CpaModule$App;

    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CPADao;->this$0:Lcom/donple/cpa/CpaModule;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Lcom/donple/cpa/CpaModule$App;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$App;)V

    .line 1909
    .local v9, app:Lcom/donple/cpa/CpaModule$App;
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/donple/cpa/CpaModule$App;->setAppId(I)V

    .line 1910
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1906
    if-nez v0, :cond_0

    .line 1922
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1924
    .end local v9           #app:Lcom/donple/cpa/CpaModule$App;
    .end local v10           #apps:Ljava/util/List;,"Ljava/util/List<Lcom/donple/cpa/CpaModule$App;>;"
    .end local v11           #columnAppId:I
    :cond_1
    :goto_0
    return-object v10

    .line 1916
    :catch_0
    move-exception v13

    .line 1918
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "selectWhereStatus()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v0, v13}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1922
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1924
    .end local v13           #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v0

    .line 1922
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1923
    :cond_3
    throw v0

    .line 1922
    :cond_4
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public updateStatusWhereAppId(II)Z
    .locals 9
    .parameter "appId"
    .parameter "status"

    .prologue
    const/4 v8, 0x0

    .line 1864
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1865
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v4, "appId = ?"

    .line 1868
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1870
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "tb_sync"

    invoke-virtual {v5, v6, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1871
    .local v1, rows:I
    if-nez v1, :cond_0

    .line 1873
    const-string v5, "appId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v5, p0, Lcom/donple/cpa/CpaModule$CPADao;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "tb_sync"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    .end local v1           #rows:I
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #whereArgs:[Ljava/lang/String;
    .end local v4           #whereClause:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1877
    :catch_0
    move-exception v0

    .line 1879
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_0
.end method
