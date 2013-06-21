.class public Lcom/addthis/data/ATDatabaseAdapter;
.super Ljava/lang/Object;
.source "ATDatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "AddThisDB"

.field private static final FAV_TABLE:Ljava/lang/String; = "Favorite"

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_FAV_PARENTSERVICE:Ljava/lang/String; = "parentservice"

.field private static final KEY_FAV_USERORDER:Ljava/lang/String; = "userorder"

.field private static final KEY_IMAGE:Ljava/lang/String; = "image"

.field private static final KEY_IMAGE_SUPPORT:Ljava/lang/String; = "supportsimage"

.field private static final KEY_IMAGE_URL:Ljava/lang/String; = "imageurl"

.field private static final KEY_IS_BLACKLISTED:Ljava/lang/String; = "isblacklisted"

.field private static final KEY_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final SERVICE_TABLE:Ljava/lang/String; = "Service"

.field private static final TAG:Ljava/lang/String; = "DBAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;

    iget-object v1, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDbHelper:Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;

    .line 70
    return-void
.end method

.method private copyDataBase()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 84
    iget-object v11, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 85
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/data/data/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/databases/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, outFileName:Ljava/lang/String;
    iget-object v11, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/addthis/utils/ATUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 89
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v11, "firstRun"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    .local v3, firstRun:Z
    if-eqz v3, :cond_1

    .line 92
    const-string v11, "DBAdapter"

    const-string v12, "About to copy database"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 94
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "firstRun"

    invoke-interface {v1, v11, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    iget-object v11, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "AddThisDB"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 101
    .local v6, myInput:Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 106
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "AddThisDB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, path:Ljava/lang/String;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 110
    .local v7, myOutput:Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 112
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, length:I
    if-gtz v5, :cond_2

    .line 117
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 118
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 119
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 121
    .end local v0           #buffer:[B
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #f:Ljava/io/File;
    .end local v5           #length:I
    .end local v6           #myInput:Ljava/io/InputStream;
    .end local v7           #myOutput:Ljava/io/FileOutputStream;
    .end local v9           #path:Ljava/lang/String;
    :cond_1
    return-void

    .line 113
    .restart local v0       #buffer:[B
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #f:Ljava/io/File;
    .restart local v5       #length:I
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v7       #myOutput:Ljava/io/FileOutputStream;
    .restart local v9       #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v0, v13, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private isPresentInFavorite(Ljava/lang/String;)Z
    .locals 4
    .parameter "serviceCode"

    .prologue
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM Favorite WHERE parentservice = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 405
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 406
    const/4 v2, 0x0

    .line 408
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private numberOfRecordsInFavoriteTable()I
    .locals 5

    .prologue
    .line 385
    const-string v1, "SELECT COUNT(*) FROM Favorite"

    .line 386
    .local v1, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 387
    .local v2, statement:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    long-to-int v0, v3

    .line 388
    .local v0, count:I
    return v0
.end method


# virtual methods
.method public declared-synchronized blackListService(Ljava/lang/String;I)V
    .locals 6
    .parameter "serviceCode"
    .parameter "blackList"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->getService(Ljava/lang/String;)Lcom/addthis/models/ATService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, value:Landroid/content/ContentValues;
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #value:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .restart local v0       #value:Landroid/content/ContentValues;
    const-string v1, "isblacklisted"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    iget-object v1, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 323
    const-string v2, "Service"

    const-string v3, "code=?"

    .line 324
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 323
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    .end local v0           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeDb()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDbHelper:Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;

    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFavoriteService(Ljava/lang/String;)Z
    .locals 7
    .parameter "code"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->isPresentInFavorite(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 370
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Favorite"

    const-string v4, "parentservice=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 372
    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteOutdatedServices(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    const-string v2, "DBAdapter"

    const-string v3, "Deleting outdated services"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM Service WHERE lastUpdated < "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 257
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 261
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/addthis/data/ATDatabaseAdapter;->deleteService(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteService(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "code"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->deleteFavoriteService(Ljava/lang/String;)Z

    .line 238
    iget-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Service"

    const-string v2, "code=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllFavoriteServices(ZZ)Lcom/addthis/models/ATServiceList;
    .locals 14
    .parameter "excludeBlackList"
    .parameter "onlyImageSupport"

    .prologue
    .line 425
    monitor-enter p0

    const/4 v11, 0x0

    .line 426
    .local v11, serviceList:Lcom/addthis/models/ATServiceList;
    if-eqz p1, :cond_2

    :try_start_0
    const-string v13, "0"

    .line 427
    .local v13, shouldExcludeBlackListed:Ljava/lang/String;
    :goto_0
    const-string v3, "Favorite.parentservice = Service.code AND isblacklisted == ?"

    .line 428
    .local v3, whereClause:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND supportsimage == 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Service,Favorite"

    const/4 v2, 0x0

    .line 433
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 434
    const-string v7, "userorder"

    .line 432
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 435
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    new-instance v12, Lcom/addthis/models/ATServiceList;

    invoke-direct {v12}, Lcom/addthis/models/ATServiceList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 437
    .end local v11           #serviceList:Lcom/addthis/models/ATServiceList;
    .local v12, serviceList:Lcom/addthis/models/ATServiceList;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move-object v11, v12

    .line 446
    .end local v12           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v11       #serviceList:Lcom/addthis/models/ATServiceList;
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    monitor-exit p0

    return-object v11

    .line 426
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v13           #shouldExcludeBlackListed:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v13, "1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 438
    .end local v11           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v9       #cur:Landroid/database/Cursor;
    .restart local v12       #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v13       #shouldExcludeBlackListed:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x2

    :try_start_4
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 439
    .local v8, bb:[B
    new-instance v10, Lcom/addthis/models/ATService;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 441
    array-length v5, v8

    .line 440
    invoke-static {v8, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 439
    invoke-direct {v10, v0, v1, v2, v4}, Lcom/addthis/models/ATService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 442
    .local v10, service:Lcom/addthis/models/ATService;
    invoke-virtual {v12, v10}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 425
    .end local v8           #bb:[B
    .end local v10           #service:Lcom/addthis/models/ATService;
    :catchall_0
    move-exception v0

    move-object v11, v12

    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v12           #serviceList:Lcom/addthis/models/ATServiceList;
    .end local v13           #shouldExcludeBlackListed:Ljava/lang/String;
    .restart local v11       #serviceList:Lcom/addthis/models/ATServiceList;
    :goto_2
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized getAllServices(ZZ)Lcom/addthis/models/ATServiceList;
    .locals 14
    .parameter "onlyBlackListed"
    .parameter "onlyImageSupport"

    .prologue
    .line 280
    monitor-enter p0

    const/4 v11, 0x0

    .line 281
    .local v11, serviceList:Lcom/addthis/models/ATServiceList;
    if-eqz p1, :cond_2

    :try_start_0
    const-string v13, "0"

    .line 282
    .local v13, shouldExcludeBlackListed:Ljava/lang/String;
    :goto_0
    const-string v3, "isblacklisted == ?"

    .line 283
    .local v3, whereClause:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND supportsimage == 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Service"

    const/4 v2, 0x0

    .line 288
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 289
    const-string v7, "name COLLATE NOCASE"

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 290
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 291
    new-instance v12, Lcom/addthis/models/ATServiceList;

    invoke-direct {v12}, Lcom/addthis/models/ATServiceList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    .end local v11           #serviceList:Lcom/addthis/models/ATServiceList;
    .local v12, serviceList:Lcom/addthis/models/ATServiceList;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move-object v11, v12

    .line 302
    .end local v12           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v11       #serviceList:Lcom/addthis/models/ATServiceList;
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    monitor-exit p0

    return-object v11

    .line 281
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v13           #shouldExcludeBlackListed:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v13, "1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 294
    .end local v11           #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v9       #cur:Landroid/database/Cursor;
    .restart local v12       #serviceList:Lcom/addthis/models/ATServiceList;
    .restart local v13       #shouldExcludeBlackListed:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x2

    :try_start_4
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 295
    .local v8, bb:[B
    new-instance v10, Lcom/addthis/models/ATService;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 297
    array-length v5, v8

    .line 296
    invoke-static {v8, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 295
    invoke-direct {v10, v0, v1, v2, v4}, Lcom/addthis/models/ATService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 298
    .local v10, service:Lcom/addthis/models/ATService;
    invoke-virtual {v12, v10}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 280
    .end local v8           #bb:[B
    .end local v10           #service:Lcom/addthis/models/ATService;
    :catchall_0
    move-exception v0

    move-object v11, v12

    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v12           #serviceList:Lcom/addthis/models/ATServiceList;
    .end local v13           #shouldExcludeBlackListed:Ljava/lang/String;
    .restart local v11       #serviceList:Lcom/addthis/models/ATServiceList;
    :goto_2
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized getService(Ljava/lang/String;)Lcom/addthis/models/ATService;
    .locals 11
    .parameter "code"

    .prologue
    .line 213
    monitor-enter p0

    const/4 v9, 0x0

    .line 214
    .local v9, service:Lcom/addthis/models/ATService;
    :try_start_0
    const-string v3, "code = ?"

    .line 215
    .local v3, whereClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Service"

    .line 216
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "code"

    aput-object v5, v2, v4

    .line 217
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 215
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 219
    .local v8, cur:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    new-instance v10, Lcom/addthis/models/ATService;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v10, v0, v1, v2, v4}, Lcom/addthis/models/ATService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .end local v9           #service:Lcom/addthis/models/ATService;
    .local v10, service:Lcom/addthis/models/ATService;
    move-object v9, v10

    .line 223
    .end local v10           #service:Lcom/addthis/models/ATService;
    .restart local v9       #service:Lcom/addthis/models/ATService;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-object v9

    .line 213
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v8           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertFavoriteService(Ljava/lang/String;)Z
    .locals 6
    .parameter "code"

    .prologue
    .line 339
    monitor-enter p0

    const/4 v1, 0x0

    .line 340
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->isPresentInFavorite(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, initialValues:Landroid/content/ContentValues;
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #initialValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .restart local v0       #initialValues:Landroid/content/ContentValues;
    const-string v2, "parentservice"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "userorder"

    .line 345
    invoke-direct {p0}, Lcom/addthis/data/ATDatabaseAdapter;->numberOfRecordsInFavoriteTable()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 344
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    iget-object v2, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Favorite"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 348
    const/4 v1, 0x1

    .line 351
    .end local v0           #initialValues:Landroid/content/ContentValues;
    :cond_0
    monitor-exit p0

    return v1

    .line 339
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized insertService(Lcom/addthis/models/ATService;Lorg/apache/http/util/ByteArrayBuffer;)Z
    .locals 9
    .parameter "service"
    .parameter "imageBuf"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    const-string v3, "DBAdapter"

    const-string v4, "new insert service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, result:Z
    const/4 v0, 0x0

    .line 176
    .local v0, imageSupport:I
    const/4 v1, 0x0

    .line 177
    .local v1, initialValues:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #initialValues:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .restart local v1       #initialValues:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "code"

    invoke-virtual {p1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "imageurl"

    invoke-virtual {p1}, Lcom/addthis/models/ATService;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "image"

    invoke-virtual {p2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    const-string v3, "lastUpdated"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    invoke-virtual {p1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/addthis/utils/ATUtil;->doesSupportImageSharing(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 185
    :cond_0
    const-string v3, "supportsimage"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Service"

    const-string v5, "code=?"

    .line 188
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 187
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_2

    .line 190
    const/4 v2, 0x1

    .line 197
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 193
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 194
    const/4 v2, 0x1

    goto :goto_0

    .line 173
    .end local v0           #imageSupport:I
    .end local v1           #initialValues:Landroid/content/ContentValues;
    .end local v2           #result:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized open()Lcom/addthis/data/ATDatabaseAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/addthis/data/ATDatabaseAdapter;->copyDataBase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    iget-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDbHelper:Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;

    invoke-virtual {v3}, Lcom/addthis/data/ATDatabaseAdapter$ATDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-object p0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/addthis/data/ATDatabaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/addthis/utils/ATUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 140
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 141
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "firstRun"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    new-instance v3, Lcom/addthis/error/ATDatabaseException;

    const-string v4, "Couldnot find the database"

    invoke-direct {v3, v4}, Lcom/addthis/error/ATDatabaseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
