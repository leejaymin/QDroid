.class public Lcom/wareone/tappmt/PmtDbAdapter$Reminder;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reminder"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AUTO_REC:Ljava/lang/String; = "auto_rec"

.field public static final BEGIN_DATE:Ljava/lang/String; = "begin_date"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final CYCLE:Ljava/lang/String; = "cycle"

.field public static final DAYS:Ljava/lang/String; = "previous_days"

.field public static final DUE_DATE:Ljava/lang/String; = "due_date"

.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final GROUP:Ljava/lang/String; = "group_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "reminder_name"

.field public static final NEXT_DATE:Ljava/lang/String; = "next_date"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final NOTIFY_DATE:Ljava/lang/String; = "notify_date"

.field public static final PAYEE:Ljava/lang/String; = "payee"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "reminders"

.field public static final TIMES:Ljava/lang/String; = "times"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 352
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reminder_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "begin_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "due_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "next_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notify_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "previous_days"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cycle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "note"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "auto_rec"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "amount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "payee"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "group_name"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "remote_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    .line 326
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 366
    const-string v0, "reminders"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getAlert(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 449
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    const-string v3, "next_date-previous_days>=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "TODAY"

    aput-object v6, v4, v0

    const-string v7, "_id"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    const-string v7, "status DESC,next_date ASC"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 426
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    .line 427
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 426
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .parameter "db"
    .parameter "action"

    .prologue
    const-string v7, "remote_id"

    const-string v7, "name"

    const-string v7, "_id"

    .line 379
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 381
    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    const-string v8, "reminders"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v7, "key"

    const-string v8, "_id"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 385
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 387
    :cond_0
    const-string v7, "new"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 388
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    :cond_1
    const-string v7, "modified"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 391
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 393
    :cond_2
    if-eqz v0, :cond_5

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 395
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 396
    .local v6, rs:Lorg/json/JSONArray;
    const-string v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .local v5, record:Lorg/json/JSONObject;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 400
    const-string v7, "row_id"

    const-string v8, "remote_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v7, "remote_id"

    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 403
    .local v2, fields:Lorg/json/JSONArray;
    const-string v7, "fields"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 411
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 397
    if-nez v7, :cond_3

    .line 413
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 418
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v4

    .line 405
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #fields:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #record:Lorg/json/JSONObject;
    .restart local v6       #rs:Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 406
    .local v1, field:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 407
    const-string v7, "name"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v7, "value"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #field:Lorg/json/JSONObject;
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 374
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id>0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 370
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id=0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getNotify(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 431
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 432
    .local v9, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 433
    .local v10, today:Ljava/util/Calendar;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 434
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, date_str:Ljava/lang/String;
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    .line 443
    const-string v3, "(notify_date=\'\' or notify_date<?) and (due_date=\'\' or due_date>=?) and status=1"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v8, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 442
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 356
    const-string v0, "reminders"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setNextDate(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 454
    const-string v1, "reminders"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->FIELDS:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 455
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    .local v12, df:Ljava/text/SimpleDateFormat;
    const-string v0, "next_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 459
    .local v11, date_str:Ljava/lang/String;
    const-string v0, "cycle"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 460
    .local v8, _repeat:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    .line 462
    .local v10, curDate:Ljava/util/Calendar;
    :try_start_0
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 463
    packed-switch v8, :pswitch_data_0

    .line 488
    :goto_0
    const-string v0, "update reminders set next_date=? where _id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const-string v0, "times"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    const-string v0, "update reminders set count=count+1 where _id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    const-string v0, "update reminders set status=0 where _id=? and next_date>due_date and due_date<>\'\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v8           #_repeat:I
    .end local v10           #curDate:Ljava/util/Calendar;
    .end local v11           #date_str:Ljava/lang/String;
    .end local v12           #df:Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 498
    return-void

    .line 465
    .restart local v8       #_repeat:I
    .restart local v10       #curDate:Ljava/util/Calendar;
    .restart local v11       #date_str:Ljava/lang/String;
    .restart local v12       #df:Ljava/text/SimpleDateFormat;
    :pswitch_0
    :try_start_1
    const-string v0, "update reminders set status=0 where _id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    goto :goto_1

    .line 468
    :pswitch_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 471
    :pswitch_2
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 474
    :pswitch_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 477
    :pswitch_4
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 480
    :pswitch_5
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 483
    :pswitch_6
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "db"
    .parameter "row_id"
    .parameter "values"

    .prologue
    .line 361
    const-string v0, "reminders"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
