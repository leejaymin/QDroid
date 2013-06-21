.class public Lcom/wareone/tappmt/PmtDbAdapter$Template;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final GROUP:Ljava/lang/String; = "group_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "template_name"

.field public static final PAYEE:Ljava/lang/String; = "payee"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "templates"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 515
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "amount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "payee"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "group_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "remote_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    .line 501
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 529
    const-string v0, "templates"

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

.method public static getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 585
    const-string v1, "templates"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    const-string v7, "template_name"

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

    .line 589
    const-string v1, "templates"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    .line 590
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

    .line 589
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

    .line 542
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 544
    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    const-string v8, "templates"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v7, "key"

    const-string v8, "_id"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 548
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 550
    :cond_0
    const-string v7, "new"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 551
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 553
    :cond_1
    const-string v7, "modified"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 554
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 556
    :cond_2
    if-eqz v0, :cond_5

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 558
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 559
    .local v6, rs:Lorg/json/JSONArray;
    const-string v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 562
    .local v5, record:Lorg/json/JSONObject;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 563
    const-string v7, "row_id"

    const-string v8, "remote_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v7, "remote_id"

    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 566
    .local v2, fields:Lorg/json/JSONArray;
    const-string v7, "fields"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 574
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 560
    if-nez v7, :cond_3

    .line 576
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 581
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v4

    .line 568
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #fields:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #record:Lorg/json/JSONObject;
    .restart local v6       #rs:Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 569
    .local v1, field:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 570
    const-string v7, "name"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v7, "value"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
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

    .line 537
    const-string v1, "templates"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

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

    .line 533
    const-string v1, "templates"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id=0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 519
    const-string v0, "templates"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "db"
    .parameter "row_id"
    .parameter "values"

    .prologue
    .line 524
    const-string v0, "templates"

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
