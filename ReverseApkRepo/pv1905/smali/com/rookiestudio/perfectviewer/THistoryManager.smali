.class public Lcom/rookiestudio/perfectviewer/THistoryManager;
.super Ljava/lang/Object;
.source "THistoryManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public AddHistoryData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 22
    .parameter "FullPath"
    .parameter "FileName"
    .parameter "Index"
    .parameter "Total"

    .prologue
    .line 24
    const/16 v19, 0x0

    .line 26
    .local v19, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookhistory"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "book_index"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "read_page"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "total_page"

    aput-object v6, v4, v5

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "full_path=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 26
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 33
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 34
    .local v13, CurrentTime:Ljava/util/Date;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 35
    .local v12, Count:I
    if-lez v12, :cond_1

    .line 36
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 38
    .local v10, BookIndex:J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 39
    .local v14, ReadPage:J
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 40
    .local v16, TotalPage:J
    if-lez p4, :cond_0

    .line 41
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 47
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 52
    :try_start_1
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v20, cv:Landroid/content/ContentValues;
    const-string v2, "file_name"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "last_date"

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v2, "read_page"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v2, "total_page"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookhistory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "book_index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    .line 79
    .end local v10           #BookIndex:J
    .end local v12           #Count:I
    .end local v13           #CurrentTime:Ljava/util/Date;
    .end local v14           #ReadPage:J
    .end local v16           #TotalPage:J
    .end local v20           #cv:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v21

    .line 29
    .local v21, e:Landroid/database/SQLException;
    goto :goto_0

    .line 30
    .end local v21           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v21

    .line 31
    .local v21, e:Ljava/lang/Exception;
    goto :goto_0

    .line 58
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v10       #BookIndex:J
    .restart local v12       #Count:I
    .restart local v13       #CurrentTime:Ljava/util/Date;
    .restart local v14       #ReadPage:J
    .restart local v16       #TotalPage:J
    :catch_2
    move-exception v21

    .line 59
    .local v21, e:Landroid/database/SQLException;
    goto :goto_0

    .line 60
    .end local v21           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v21

    .line 61
    .local v21, e:Ljava/lang/Exception;
    goto :goto_0

    .line 64
    .end local v10           #BookIndex:J
    .end local v14           #ReadPage:J
    .end local v16           #TotalPage:J
    .end local v21           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 69
    :try_start_2
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .restart local v20       #cv:Landroid/content/ContentValues;
    const-string v2, "full_path"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "file_name"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "last_date"

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v2, "read_page"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v2, "total_page"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookhistory"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 76
    .end local v20           #cv:Landroid/content/ContentValues;
    :catch_4
    move-exception v2

    goto :goto_0
.end method

.method public AddHistoryFile(Ljava/lang/String;II)V
    .locals 4
    .parameter "FullFileName"
    .parameter "PageNo"
    .parameter "Total"

    .prologue
    .line 168
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 169
    .local v2, Posi:I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, FolderName:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, FileName:Ljava/lang/String;
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 172
    return-void
.end method

.method public AddHistoryFile(Ljava/lang/String;III)V
    .locals 2
    .parameter "FullFileName"
    .parameter "Index"
    .parameter "PageNo"
    .parameter "Total"

    .prologue
    .line 176
    move-object v1, p1

    .line 177
    .local v1, FolderName:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, FileName:Ljava/lang/String;
    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 179
    return-void
.end method

.method public ClearHistory()V
    .locals 2

    .prologue
    .line 161
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from bookhistory;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public ClearHistoryData(Ljava/lang/String;)Z
    .locals 5
    .parameter "FullPath"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, deleted:I
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookhistory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "full_path=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 89
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public FindBookHistory(Ljava/lang/String;)Lcom/rookiestudio/baseclass/THistoryItem;
    .locals 15
    .parameter "FullPath"

    .prologue
    .line 95
    const/4 v11, 0x0

    .line 96
    .local v11, NewFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    const/4 v13, 0x0

    .line 99
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bookhistory"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "full_path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "last_date"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "read_page"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "total_page"

    aput-object v4, v2, v3

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "full_path=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 99
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 106
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 107
    .local v8, Count:I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    if-lez v8, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, FolderName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, FileName:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 112
    .local v12, PageNo:I
    new-instance v11, Lcom/rookiestudio/baseclass/THistoryItem;

    .end local v11           #NewFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    invoke-direct {v11, v10, v9, v12}, Lcom/rookiestudio/baseclass/THistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    .restart local v11       #NewFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v11, Lcom/rookiestudio/baseclass/THistoryItem;->AddDate:Ljava/util/Date;

    .line 114
    iget-object v0, v11, Lcom/rookiestudio/baseclass/THistoryItem;->AddDate:Ljava/util/Date;

    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 115
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/rookiestudio/baseclass/THistoryItem;->TotalPage:I

    .line 118
    .end local v9           #FileName:Ljava/lang/String;
    .end local v10           #FolderName:Ljava/lang/String;
    .end local v12           #PageNo:I
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 122
    .end local v8           #Count:I
    :goto_0
    return-object v11

    .line 101
    :catch_0
    move-exception v14

    .line 102
    .local v14, e:Landroid/database/SQLException;
    goto :goto_0

    .line 103
    .end local v14           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v14

    .line 104
    .local v14, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public LoadHistory()V
    .locals 19

    .prologue
    .line 127
    const/16 v16, 0x0

    .line 129
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookhistory"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "full_path"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "file_name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "last_date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "read_page"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "total_page"

    aput-object v5, v3, v4

    .line 130
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "last_date DESC"

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 136
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 137
    .local v10, Count:I
    if-lez v10, :cond_0

    .line 138
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    .line 139
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    if-lt v0, v10, :cond_1

    .line 155
    .end local v18           #i:I
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 156
    .end local v10           #Count:I
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v17

    .line 132
    .local v17, e:Landroid/database/SQLException;
    goto :goto_1

    .line 133
    .end local v17           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v17

    .line 134
    .local v17, e:Ljava/lang/Exception;
    goto :goto_1

    .line 140
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v10       #Count:I
    .restart local v18       #i:I
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, FolderName:Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, FileName:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 146
    .local v14, PageNo:I
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 147
    .local v15, TmpDate:Ljava/util/Date;
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v15, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 148
    new-instance v13, Lcom/rookiestudio/baseclass/THistoryItem;

    invoke-direct {v13, v12, v11, v14}, Lcom/rookiestudio/baseclass/THistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .local v13, NewFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/rookiestudio/baseclass/THistoryItem;->TotalPage:I

    .line 150
    iput-object v15, v13, Lcom/rookiestudio/baseclass/THistoryItem;->AddDate:Ljava/util/Date;

    .line 151
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 139
    add-int/lit8 v18, v18, 0x1

    goto :goto_0
.end method
