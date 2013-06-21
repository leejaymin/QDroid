.class public Lcom/wareone/tappmt/PmtDbAdapter$Currency;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Currency"
.end annotation


# static fields
.field public static final DIGITS:Ljava/lang/String; = "digits"

.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isdefault"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "currency_name"

.field public static final RATE_OF_DEFAULT:Ljava/lang/String; = "rate"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "currency"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 842
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "currency_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isdefault"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "digits"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "remote_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 831
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 855
    const-string v0, "currency"

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

    .line 912
    const-string v1, "currency"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    const-string v7, "currency_name"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 10
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 922
    const-string v9, "TWD"

    .line 923
    .local v9, result:Ljava/lang/String;
    const-string v1, "currency"

    .line 924
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 925
    const-string v3, "isdefault=1"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 923
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 926
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string v0, "currency_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 929
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 931
    return-object v9
.end method

.method public static getDigits(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 10
    .parameter "db"
    .parameter "currency"

    .prologue
    const/4 v4, 0x0

    .line 935
    const/4 v9, 0x0

    .line 936
    .local v9, result:I
    const-string v1, "currency"

    .line 937
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "currency_name=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 936
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 939
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "digits"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 942
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    return v9
.end method

.method public static getExchangeRateByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)D
    .locals 11
    .parameter "db"
    .parameter "curr_name"

    .prologue
    const/4 v5, 0x0

    .line 973
    const-wide/16 v9, 0x0

    .line 974
    .local v9, result:D
    const-string v1, "currency"

    .line 975
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 976
    const-string v3, "currency_name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 974
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 977
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "rate"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    .line 980
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 982
    return-wide v9
.end method

.method public static getGroupById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 916
    const-string v1, "currency"

    .line 917
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 918
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

    .line 916
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

    .line 868
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 870
    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    const-string v8, "currency"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v7, "key"

    const-string v8, "_id"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 874
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 876
    :cond_0
    const-string v7, "new"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 877
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 879
    :cond_1
    const-string v7, "modified"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 880
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 882
    :cond_2
    if-eqz v0, :cond_5

    .line 883
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 884
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 885
    .local v6, rs:Lorg/json/JSONArray;
    const-string v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 888
    .local v5, record:Lorg/json/JSONObject;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 889
    const-string v7, "row_id"

    const-string v8, "remote_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v7, "remote_id"

    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 892
    .local v2, fields:Lorg/json/JSONArray;
    const-string v7, "fields"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 900
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 886
    if-nez v7, :cond_3

    .line 902
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 907
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v4

    .line 894
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #fields:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #record:Lorg/json/JSONObject;
    .restart local v6       #rs:Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 895
    .local v1, field:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 896
    const-string v7, "name"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    const-string v7, "value"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 905
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

    .line 863
    const-string v1, "currency"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

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

    .line 859
    const-string v1, "currency"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id=0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSymbol(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "db"
    .parameter "currency"

    .prologue
    const/4 v4, 0x0

    .line 948
    const-string v9, "$"

    .line 949
    .local v9, result:Ljava/lang/String;
    const-string v1, "currency"

    .line 950
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "currency_name=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 949
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 952
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const-string v0, "symbol"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 955
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 957
    return-object v9
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 845
    const-string v0, "currency"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setDefault(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "currency"

    .prologue
    .line 961
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 963
    :try_start_0
    const-string v0, "UPDATE currency SET isdefault=0,rate=1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 964
    const-string v0, "UPDATE currency SET isdefault=1 WHERE currency_name=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 970
    return-void

    .line 966
    :catchall_0
    move-exception v0

    .line 967
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 968
    throw v0
.end method

.method public static update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "db"
    .parameter "row_id"
    .parameter "values"

    .prologue
    .line 850
    const-string v0, "currency"

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
