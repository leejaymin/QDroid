.class public Lcom/wareone/tappmt/PmtDbAdapter$Account;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Account"
.end annotation


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "open_amt"

.field public static final BUDGET:Ljava/lang/String; = "budget"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "acc_name"

.field public static final PARENT:Ljava/lang/String; = "sub_of"

.field public static final PARENT_BUDGET:Ljava/lang/String; = "parent_budget"

.field public static final QIF_TYPE:Ljava/lang/String; = "qif_type"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final RV:Ljava/lang/String; = "acc_rv"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final TYPE:Ljava/lang/String; = "acc_type"

.field public static final USE_BUDGET:Ljava/lang/String; = "use_budget"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "acc_rv"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "acc_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "acc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "qif_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "open_amt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_of"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "budget"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "use_budget"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent_budget"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "frequency"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "remote_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFrequency(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update accounts set frequency=frequency+1 where _id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 180
    const-string v0, "accounts"

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

.method public static getAccountById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 272
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 273
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

    .line 272
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 184
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    const-string v7, "frequency desc,_id asc"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getBudget(Landroid/database/sqlite/SQLiteDatabase;J)D
    .locals 12
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 306
    const-wide/16 v9, 0x0

    .line 307
    .local v9, result:D
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 308
    const-string v3, "_id=?"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 307
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 309
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 310
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "use_budget"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 312
    const-string v0, "budget"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    .line 315
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_1
    return-wide v9
.end method

.method public static getCurrency(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 10
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 292
    const-string v9, ""

    .line 293
    .local v9, result:Ljava/lang/String;
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 294
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

    .line 293
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 295
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 296
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "currency"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_1
    return-object v9
.end method

.method public static getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .parameter "db"
    .parameter "action"

    .prologue
    const-string v7, "remote_id"

    const-string v7, "name"

    const-string v7, "_id"

    .line 197
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    const-string v8, "accounts"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v7, "key"

    const-string v8, "_id"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 203
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    :cond_0
    const-string v7, "new"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 206
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    :cond_1
    const-string v7, "modified"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 209
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 211
    :cond_2
    if-eqz v0, :cond_5

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 213
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 214
    .local v6, rs:Lorg/json/JSONArray;
    const-string v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v5, record:Lorg/json/JSONObject;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 218
    const-string v7, "row_id"

    const-string v8, "remote_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v7, "remote_id"

    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 221
    .local v2, fields:Lorg/json/JSONArray;
    const-string v7, "fields"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 215
    if-nez v7, :cond_3

    .line 231
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v4

    .line 223
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #fields:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #record:Lorg/json/JSONObject;
    .restart local v6       #rs:Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 224
    .local v1, field:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    const-string v7, "name"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v7, "value"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
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

    .line 192
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

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

    .line 188
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id=0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getParent(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 11
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 277
    const-wide/16 v9, 0x0

    .line 278
    .local v9, result:J
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 279
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

    .line 278
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 280
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 281
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "sub_of"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 284
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_1
    return-wide v9
.end method

.method public static getRealAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 240
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 241
    const-string v3, "acc_rv=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v7, "frequency desc,_id asc"

    move-object v0, p0

    move-object v6, v5

    .line 240
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getRealByParent(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "parent_id"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 252
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 253
    const-string v3, "acc_rv=? and sub_of=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "frequency desc,_id asc"

    move-object v0, p0

    move-object v6, v5

    .line 252
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getRealRoot(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 248
    const-string v3, "acc_rv=0 and sub_of=0"

    const-string v7, "acc_type desc,frequency desc"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 247
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 258
    const-string v3, "acc_rv=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 257
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualByParent(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "parent_id"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 267
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 268
    const-string v3, "acc_rv=? and sub_of=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 267
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualRoot(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "category_type"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 262
    const-string v1, "accounts"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    .line 263
    const-string v3, "acc_rv=? and sub_of=0 and acc_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v7, "frequency desc,_id asc"

    move-object v0, p0

    move-object v6, v5

    .line 262
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 171
    const-string v0, "accounts"

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
    .line 176
    const-string v0, "accounts"

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
