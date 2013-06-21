.class public final Lccc71/bmw/data/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lccc71/bmw/data/a/c;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lccc71/bmw/data/a/e;->a:Landroid/content/Context;

    .line 99
    new-instance v0, Lccc71/bmw/data/a/c;

    iget-object v1, p0, Lccc71/bmw/data/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/bmw/data/a/e;->b:Lccc71/bmw/data/a/c;

    .line 100
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lccc71/bmw/data/a/d;
    .locals 3
    .parameter

    .prologue
    .line 280
    new-instance v0, Lccc71/bmw/data/a/d;

    invoke-direct {v0}, Lccc71/bmw/data/a/d;-><init>()V

    .line 282
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/d;->a:I

    .line 283
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    .line 284
    const-string v1, "position"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccc71/bmw/data/a/d;->c:J

    .line 285
    const-string v1, "color"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/d;->d:I

    .line 287
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lccc71/bmw/data/a/e;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 41
    iget-object v1, v0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "markers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lccc71/bmw/data/a/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lccc71/bmw/data/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZLjava/util/Date;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 48
    new-instance v0, Lccc71/bmw/data/a/e;

    invoke-direct {v0, p0}, Lccc71/bmw/data/a/e;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->a()V

    .line 51
    if-eqz p4, :cond_1

    .line 52
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lccc71/bmw/data/a/d;

    invoke-direct {v2}, Lccc71/bmw/data/a/d;-><init>()V

    .line 55
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Lccc71/bmw/data/a/d;->c:J

    .line 57
    if-nez p1, :cond_2

    .line 59
    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    .line 68
    :goto_1
    iput p2, v2, Lccc71/bmw/data/a/d;->d:I

    .line 70
    iget-object v1, v0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-static {v2}, Lccc71/bmw/data/a/e;->b(Lccc71/bmw/data/a/d;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, v0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "markers"

    invoke-virtual {v2, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New ROW ID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SELECT ROWID from markers order by ROWID DESC limit 1"

    iget-object v2, v0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New ID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/e;->a(I)Lccc71/bmw/data/a/d;

    .line 71
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lccc71/bmw/data/a/e;->b()V

    .line 72
    return-void

    .line 51
    :cond_1
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    goto :goto_0

    .line 63
    :cond_2
    if-eqz p3, :cond_3

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_3
    iput-object p1, v2, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 70
    :cond_4
    const-string v1, "battery_widget_monitor"

    const-string v2, "Cannot determine new row ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static b(Lccc71/bmw/data/a/d;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 269
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    const-string v1, "name"

    iget-object v2, p0, Lccc71/bmw/data/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "position"

    iget-wide v2, p0, Lccc71/bmw/data/a/d;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v1, "color"

    iget v2, p0, Lccc71/bmw/data/a/d;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    return-object v0
.end method


# virtual methods
.method public final a(I)Lccc71/bmw/data/a/d;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 231
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 237
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "markers"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    if-eqz v1, :cond_2

    .line 241
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-static {v1}, Lccc71/bmw/data/a/e;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    :goto_1
    if-eqz v8, :cond_1

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    throw v0

    .line 249
    :cond_2
    if-eqz v1, :cond_3

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 254
    goto :goto_0

    .line 248
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/data/a/e;->b:Lccc71/bmw/data/a/c;

    invoke-virtual {v0}, Lccc71/bmw/data/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "battery_widget_monitor"

    const-string v2, "DB already opened"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "battery_widget_monitor"

    const-string v1, "DB already opened"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lccc71/bmw/data/a/d;)V
    .locals 5
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lccc71/bmw/data/a/e;->b(Lccc71/bmw/data/a/d;)Landroid/content/ContentValues;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "markers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lccc71/bmw/data/a/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method

.method public final a(JJ)[Lccc71/bmw/data/a/d;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "markers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "position > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and position < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "position"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_1

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 189
    new-array v0, v3, [Lccc71/bmw/data/a/d;

    move v1, v8

    .line 190
    :goto_0
    if-lt v1, v3, :cond_0

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 201
    :goto_1
    return-object v0

    .line 192
    :cond_0
    invoke-static {v2}, Lccc71/bmw/data/a/e;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/d;

    move-result-object v4

    aput-object v4, v0, v1

    .line 193
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-array v0, v8, [Lccc71/bmw/data/a/d;

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccc71/bmw/data/a/e;->b:Lccc71/bmw/data/a/c;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lccc71/bmw/data/a/e;->b:Lccc71/bmw/data/a/c;

    invoke-virtual {v0}, Lccc71/bmw/data/a/c;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/data/a/e;->b:Lccc71/bmw/data/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final c()[Lccc71/bmw/data/a/d;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lccc71/bmw/data/a/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "markers"

    const-string v7, "position"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_1

    .line 212
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 214
    new-array v0, v3, [Lccc71/bmw/data/a/d;

    move v1, v8

    .line 215
    :goto_0
    if-lt v1, v3, :cond_0

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_1
    return-object v0

    .line 217
    :cond_0
    invoke-static {v2}, Lccc71/bmw/data/a/e;->a(Landroid/database/Cursor;)Lccc71/bmw/data/a/d;

    move-result-object v4

    aput-object v4, v0, v1

    .line 218
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    new-array v0, v8, [Lccc71/bmw/data/a/d;

    goto :goto_1
.end method
