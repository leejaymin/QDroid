.class public Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BurstDatabaseHelper.java"


# static fields
.field private static final BURST_TABLE_NAME:Ljava/lang/String; = "burst"

.field private static final BURST_TABLE_ROW_ID:Ljava/lang/String; = "id"

.field private static final BURST_TABLE_ROW_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final DATABASE_NAME:Ljava/lang/String; = "FastBurstCamera"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_VERSION_KEY:Ljava/lang/String; = "db_version"

.field public static final LAST_WHATS_NEW_SHOWN:Ljava/lang/String; = "last_whatsnew"

.field private static final PICTURE_TABLE_NAME:Ljava/lang/String; = "picture"

.field private static final PICTURE_TABLE_ROW_BURST:Ljava/lang/String; = "burstid"

.field private static final PICTURE_TABLE_ROW_ID:Ljava/lang/String; = "id"

.field private static final PICTURE_TABLE_ROW_PATH:Ljava/lang/String; = "path"

.field private static final PICTURE_TABLE_ROW_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final PROPS_TABLE_NAME:Ljava/lang/String; = "properties"

.field private static final PROPS_TABLE_ROW_KEY:Ljava/lang/String; = "key"

.field private static final PROPS_TABLE_ROW_VALUE:Ljava/lang/String; = "value"

.field public static final SHOW_WHATS_NEW_KEY:Ljava/lang/String; = "show_whatsnew"


# instance fields
.field burstTableCreate:Ljava/lang/String;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field pictureTableCreate:Ljava/lang/String;

.field propsTableCreate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-string v0, "FastBurstCamera"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    .line 45
    const-string v0, "create table IF NOT EXISTS burst (id integer primary key autoincrement not null,timestamp text);"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->burstTableCreate:Ljava/lang/String;

    .line 53
    const-string v0, "create table IF NOT EXISTS properties (key text primary key not null,value text not null);"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->propsTableCreate:Ljava/lang/String;

    .line 63
    const-string v0, "create table IF NOT EXISTS picture (id integer primary key autoincrement not null,timestamp text,burstid integer,path text,FOREIGN KEY(burstid) REFERENCES burst(id));"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->pictureTableCreate:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 156
    .local v3, started:J
    const/4 v0, 0x0

    .line 157
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7d0

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 174
    :cond_0
    return-object v0

    .line 160
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "insta"

    const-string v6, "could not get DB -- retry"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v2

    .line 169
    .local v2, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 128
    .local v3, started:J
    const/4 v0, 0x0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7d0

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 151
    :cond_1
    return-object v0

    .line 132
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 136
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "insta"

    const-string v6, "could not get DB -- retry"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v2

    .line 146
    .local v2, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addBurst(J)J
    .locals 5
    .parameter "timestamp"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 112
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "burst"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 115
    if-eqz v1, :cond_0

    .line 116
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    return-wide v2

    .line 114
    :catchall_0
    move-exception v2

    .line 115
    if-eqz v1, :cond_1

    .line 116
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    :cond_1
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    .line 121
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v2
.end method

.method public addPicture(JJLjava/lang/String;)J
    .locals 5
    .parameter "burstid"
    .parameter "timestamp"
    .parameter "path"

    .prologue
    .line 180
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 183
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v2, "burstid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v2, "path"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 189
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "picture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 192
    if-eqz v1, :cond_0

    .line 193
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    return-wide v2

    .line 191
    :catchall_0
    move-exception v2

    .line 192
    if-eqz v1, :cond_1

    .line 193
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    :cond_1
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    .line 198
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    throw v2
.end method

.method public deleteBurst(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 464
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "burst"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 474
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 470
    const/4 v1, 0x1

    return v1

    .line 467
    :catchall_0
    move-exception v1

    .line 468
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 469
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 473
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    .line 474
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 475
    throw v1
.end method

.method public deletePicture(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 441
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "picture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 451
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 447
    const/4 v1, 0x1

    return v1

    .line 444
    :catchall_0
    move-exception v1

    .line 445
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 446
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 450
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    .line 451
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    throw v1
.end method

.method public findNewestPicture()Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 483
    :try_start_0
    const-string v10, "SELECT * FROM picture ORDER BY timestamp desc limit 1;"

    .line 485
    .local v10, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 487
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 489
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/db/dao/Picture;-><init>(JLjava/lang/String;JJ)V

    .line 492
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 502
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :goto_0
    return-object v0

    .line 499
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 500
    :try_start_3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 501
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #q:Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 506
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 507
    throw v1

    .line 500
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #q:Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 506
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public findOldestPicture()Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 516
    :try_start_0
    const-string v10, "SELECT * FROM picture ORDER BY timestamp asc limit 1;"

    .line 518
    .local v10, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 520
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 522
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/db/dao/Picture;-><init>(JLjava/lang/String;JJ)V

    .line 525
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 539
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 535
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :goto_0
    return-object v0

    .line 532
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 533
    :try_start_3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 534
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 538
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #q:Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 539
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 540
    throw v1

    .line 533
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #q:Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 539
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public findRandomBurstWithPictures()Lcom/spritefish/fastburstcamera/db/dao/Burst;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getBursts()Ljava/util/List;

    move-result-object v2

    .line 548
    .local v2, bursts:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    move-object v1, v7

    .line 564
    :cond_0
    :goto_0
    return-object v1

    .line 550
    :cond_1
    const/4 v3, 0x0

    .line 551
    .local v3, found:Z
    const/4 v0, 0x0

    .line 552
    .local v0, attempts:I
    :goto_1
    if-nez v3, :cond_2

    const/16 v8, 0xa

    if-lt v0, v8, :cond_3

    :cond_2
    move-object v1, v7

    .line 564
    goto :goto_0

    .line 554
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 555
    .local v4, idx:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v4, v8, :cond_4

    .line 556
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 558
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 559
    .local v1, b:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getNoOfPicturesInBurst(J)J

    move-result-wide v5

    .line 560
    .local v5, sz:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getBurst(J)Lcom/spritefish/fastburstcamera/db/dao/Burst;
    .locals 11
    .parameter "burstId"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 302
    const/4 v10, 0x0

    .line 304
    .local v10, result:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM burst WHERE id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 308
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v8, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 310
    .local v7, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 321
    return-object v10

    .line 312
    :cond_0
    :try_start_3
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/db/dao/Burst;-><init>(JJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    move-object v10, v0

    goto :goto_0

    .line 318
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    .end local v7           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 319
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #q:Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 325
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 326
    throw v1
.end method

.method public getBursts()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Burst;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 268
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v10, result:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    const-string v9, "SELECT * FROM burst order by id desc"

    .line 272
    .local v9, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 274
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v8, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 276
    .local v7, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 287
    return-object v10

    .line 278
    :cond_0
    :try_start_3
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/db/dao/Burst;-><init>(JJJ)V

    .line 279
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 284
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    .end local v7           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 285
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 286
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #q:Ljava/lang/String;
    .end local v10           #result:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    :catchall_1
    move-exception v1

    .line 291
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 292
    throw v1
.end method

.method public getHighestPictureNumber()J
    .locals 6

    .prologue
    .line 568
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 571
    :try_start_0
    const-string v2, "SELECT max(id) FROM picture"

    .line 573
    .local v2, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 575
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 577
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 586
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 593
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 583
    :goto_0
    return-wide v3

    .line 586
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 593
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 583
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 585
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 586
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 587
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 592
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #q:Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 593
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 594
    throw v3
.end method

.method public getNoOfPicturesInBurst(J)J
    .locals 7
    .parameter "burstId"

    .prologue
    .line 237
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT count(*) FROM picture WHERE burstid = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, q:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 242
    .local v3, result:J
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 244
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    return-wide v3

    .line 252
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    .line 253
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #q:Ljava/lang/String;
    .end local v3           #result:J
    :catchall_1
    move-exception v5

    .line 259
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 260
    throw v5
.end method

.method public getPicture(J)Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 209
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM picture WHERE id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 213
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 215
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/db/dao/Picture;-><init>(JLjava/lang/String;JJ)V

    .line 218
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :goto_0
    return-object v0

    .line 224
    :cond_0
    :try_start_3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 223
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 224
    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 225
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 228
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #q:Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 229
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 230
    throw v1
.end method

.method public getPicturesInBurst(J)Ljava/util/List;
    .locals 12
    .parameter "burstId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 336
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v10, pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM picture WHERE burstid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 340
    .local v11, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 342
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v9, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 344
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 350
    return-object v10

    .line 346
    :cond_0
    :try_start_3
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/db/dao/Picture;-><init>(JLjava/lang/String;JJ)V

    .line 347
    .local v0, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 354
    .end local v0           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 355
    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 356
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    .end local v11           #q:Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 360
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    throw v1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 368
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 371
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT value FROM properties WHERE key = \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, q:Ljava/lang/String;
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getReadDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 375
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 377
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 386
    .end local p2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 383
    :goto_0
    return-object p2

    .line 386
    .restart local p2
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 385
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 386
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 387
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #q:Ljava/lang/String;
    .end local p2
    :catchall_1
    move-exception v3

    .line 392
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 393
    throw v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 75
    const-string v0, "insta"

    const-string v1, "creating database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->burstTableCreate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->pictureTableCreate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->propsTableCreate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 84
    move v0, p2

    .line 86
    .local v0, updatingto:I
    :goto_0
    if-le v0, p3, :cond_0

    .line 101
    return-void

    .line 88
    :cond_0
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading database version to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->propsTableCreate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v1, "show_whatsnew"

    const-string v2, "true"

    invoke-virtual {p0, p1, v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    const-string v1, "db_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 402
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 413
    return-void

    .line 410
    .end local v0           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    .line 411
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 412
    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 417
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getWritableDatabaseRetry()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 422
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 430
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    return-void

    .line 424
    :catchall_0
    move-exception v1

    .line 425
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 426
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    .line 430
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    throw v1
.end method
