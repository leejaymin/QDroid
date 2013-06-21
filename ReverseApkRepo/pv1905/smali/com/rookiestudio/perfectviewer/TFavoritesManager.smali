.class public Lcom/rookiestudio/perfectviewer/TFavoritesManager;
.super Ljava/lang/Object;
.source "TFavoritesManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public AddBook(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "Path"
    .parameter "BookName"
    .parameter "cv"

    .prologue
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into bookshelf (book_path,book_name) values (\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-virtual {p0, p1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->FindBook(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public AddFavorites(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "BookIndex"
    .parameter "BookmakeName"
    .parameter "Value1"
    .parameter "Value2"

    .prologue
    .line 84
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, AddDate:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert into bookmark (book_index,bookmark_name,add_date,bookmark_value1,bookmark_value2) values ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, S:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, e:Landroid/database/SQLException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ClearAllBookmark()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "delete from bookmark"

    .line 142
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const-string v0, "delete from bookshelf"

    .line 148
    :try_start_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/database/SQLException;
    goto :goto_0

    .line 149
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 150
    .restart local v1       #e:Landroid/database/SQLException;
    goto :goto_0
.end method

.method public DeleteBook(J)Z
    .locals 4
    .parameter "BookIndex"

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->DeleteFavorites(J)Z

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from bookshelf where book_index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public DeleteFavorites(J)Z
    .locals 4
    .parameter "BookmarkIndex"

    .prologue
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from bookmark where bookmark_index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public DeleteFavoritess(J)Z
    .locals 4
    .parameter "BookIndex"

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from bookmark where book_index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public FindBook(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "Path"
    .parameter "cv"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 21
    const/4 v9, 0x0

    .line 23
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bookshelf"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "book_index"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "book_name"

    aput-object v4, v2, v3

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "book_path=\'"

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

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 28
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 29
    .local v8, Count:I
    if-lez v8, :cond_0

    .line 30
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    const-string v0, "book_index"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    const-string v0, "book_name"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 35
    if-lez v8, :cond_1

    move v0, v11

    .end local v8           #Count:I
    :goto_0
    return v0

    .line 25
    :catch_0
    move-exception v10

    .local v10, e:Landroid/database/SQLException;
    move v0, v12

    .line 26
    goto :goto_0

    .end local v10           #e:Landroid/database/SQLException;
    .restart local v8       #Count:I
    :cond_1
    move v0, v12

    .line 35
    goto :goto_0
.end method

.method public ListBooks()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 49
    const/4 v8, 0x0

    .line 51
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bookshelf"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "book_index"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "book_path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "book_name"

    aput-object v4, v2, v3

    .line 52
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "book_path"

    .line 51
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 56
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    move-object v0, v8

    .line 59
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v9

    .local v9, e:Landroid/database/SQLException;
    move-object v0, v10

    .line 54
    goto :goto_0
.end method

.method public ListFavorites(J)Landroid/database/Cursor;
    .locals 11
    .parameter "BookIndex"

    .prologue
    const/4 v10, 0x0

    .line 96
    const/4 v8, 0x0

    .line 98
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bookmark"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bookmark_index"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bookmark_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "add_date"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "bookmark_value1"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "bookmark_value2"

    aput-object v4, v2, v3

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "book_index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 98
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 103
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    move-object v0, v8

    .line 106
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v9

    .local v9, e:Landroid/database/SQLException;
    move-object v0, v10

    .line 101
    goto :goto_0
.end method

.method public UpdateBookName(JLjava/lang/String;)Z
    .locals 4
    .parameter "BookIndex"
    .parameter "NewName"

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update bookshelf set book_name=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' where book_index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public UpdateFavoritesName(JLjava/lang/String;)Z
    .locals 4
    .parameter "BookmarkIndex"
    .parameter "NewName"

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update bookmark set bookmark_name=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' where bookmark_index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, S:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method
