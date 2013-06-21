.class public Lcom/wareone/tappmt/PmtDbAdapter$Transaction;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/PmtDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACC_AMOUNT:Ljava/lang/String; = "acc_amount"

.field public static final ACC_RATE:Ljava/lang/String; = "acc_rate"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DATE:Ljava/lang/String; = "trans_date"

.field public static final EXCHANGE_AMOUNT:Ljava/lang/String; = "ex_amount"

.field public static final EX_RATE:Ljava/lang/String; = "ex_rate"

.field public static final FIELDS:[Ljava/lang/String; = null

.field public static final GROUP:Ljava/lang/String; = "group_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final PAYEE:Ljava/lang/String; = "payee"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_ID:Ljava/lang/String; = "src_id"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "transactions"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1008
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "trans_date"

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

    const-string v2, "acc_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "acc_amount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ex_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ex_amount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "payee"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "group_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "note"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "src_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "remote_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 987
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 5
    .parameter "db"
    .parameter "row_id"

    .prologue
    .line 1022
    const-string v0, "transactions"

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

    .line 1079
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAllMonths(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .parameter "db"

    .prologue
    .line 1210
    const-string v0, "SELECT DISTINCT substr(trans_date,0,7) AS yrmn FROM transactions ORDER BY substr(trans_date,0,7) DESC"

    .line 1211
    .local v0, sql:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getBalanceByAccount(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D
    .locals 10
    .parameter "db"
    .parameter "account"
    .parameter "during"

    .prologue
    const/4 v8, 0x0

    const-string v9, "total"

    .line 1162
    const-wide/16 v4, 0x0

    .line 1164
    .local v4, total:D
    const-string v2, ""

    .line 1165
    .local v2, condition:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v0, _values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    if-eqz p3, :cond_0

    .line 1169
    const-string v2, " AND trans_date>=? AND trans_date<=?"

    .line 1170
    aget-object v6, p3, v8

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    const/4 v6, 0x1

    aget-object v6, p3, v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT SUM(mode*acc_amount) AS total FROM transactions WHERE mode<>0 AND account=?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, sql:Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1177
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 1178
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1179
    const-string v6, "total"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1181
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1185
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT SUM(acc_amount) AS total FROM transactions WHERE mode=0 AND account=?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1186
    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1187
    if-eqz v1, :cond_4

    .line 1188
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1189
    const-string v6, "total"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1191
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT SUM(acc_amount) AS total FROM transactions WHERE mode=0 AND category=?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    new-array v6, v8, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1197
    if-eqz v1, :cond_6

    .line 1198
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1199
    const-string v6, "total"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 1201
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_6
    return-wide v4
.end method

.method public static getByDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "dateStr"
    .parameter "account_id"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "transactions"

    const-string v7, "_id DESC"

    .line 1138
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 1139
    const-string v0, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1140
    const-string v3, "trans_date=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1139
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1143
    const-string v3, "trans_date=? AND (account=? OR category=?)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v0, "_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1142
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "row_id"

    .prologue
    const/4 v5, 0x0

    .line 1083
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1084
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

    .line 1083
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "dateBegin"
    .parameter "dateEnd"

    .prologue
    const/4 v5, 0x0

    .line 1088
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1089
    const-string v3, "trans_date>=? AND trans_date<=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const-string v7, "trans_date DESC,_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1088
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "dateBegin"
    .parameter "dateEnd"
    .parameter "account_id"

    .prologue
    const/4 v5, 0x0

    .line 1094
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1095
    invoke-static {p0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1097
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1098
    const-string v3, "trans_date>=? AND trans_date<=? AND (account=? OR category=?)"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "trans_date DESC,_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1097
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "dateBegin"
    .parameter "dateEnd"
    .parameter "key"
    .parameter "type"

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, c:Landroid/database/Cursor;
    packed-switch p4, :pswitch_data_0

    move-object p0, v0

    .line 1132
    .end local v0           #c:Landroid/database/Cursor;
    .end local p1
    .end local p3
    .end local p4
    .local p0, c:Landroid/database/Cursor;
    :goto_0
    return-object p0

    .line 1107
    .restart local v0       #c:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p3
    .restart local p4
    :pswitch_0
    move-object p4, p3

    .line 1108
    .local p4, cat_id:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .end local v0           #c:Landroid/database/Cursor;
    invoke-static {p0, v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getVirtualByParent(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1109
    .local v0, child:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    .end local p3
    if-eqz p3, :cond_1

    move-object p3, p4

    .line 1111
    .end local p4           #cat_id:Ljava/lang/String;
    .local p3, cat_id:Ljava/lang/String;
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .end local p3           #cat_id:Ljava/lang/String;
    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ","

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "_id"

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1113
    .restart local p3       #cat_id:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    .line 1110
    if-nez p4, :cond_0

    .line 1115
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1116
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "SELECT * FROM transactions WHERE category IN ("

    .end local v0           #child:Landroid/database/Cursor;
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #cat_id:Ljava/lang/String;
    const-string p4, ") AND "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "trans_date"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ">=? AND "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "trans_date"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "<=? ORDER BY "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "trans_date"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    .end local p1
    invoke-virtual {p0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1117
    .local p0, c:Landroid/database/Cursor;
    goto :goto_0

    .line 1119
    .local v0, c:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .local p3, key:Ljava/lang/String;
    .local p4, type:I
    :pswitch_1
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1120
    const-string v3, "(category=? OR account=?) AND trans_date>=? AND trans_date<=?"

    const/4 p4, 0x4

    new-array v4, p4, [Ljava/lang/String;

    .end local p4           #type:I
    const/4 p4, 0x0

    aput-object p3, v4, p4

    const/4 p4, 0x1

    aput-object p3, v4, p4

    const/4 p3, 0x2

    aput-object p1, v4, p3

    .end local p3           #key:Ljava/lang/String;
    const/4 p1, 0x3

    aput-object p2, v4, p1

    .end local p1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "trans_date"

    move-object v0, p0

    .line 1119
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v0           #c:Landroid/database/Cursor;
    move-result-object p0

    .line 1121
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1123
    .restart local v0       #c:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p3       #key:Ljava/lang/String;
    .restart local p4       #type:I
    :pswitch_2
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1124
    const-string v3, "group_name=? AND trans_date>=? AND trans_date<=?"

    const/4 p4, 0x3

    new-array v4, p4, [Ljava/lang/String;

    .end local p4           #type:I
    const/4 p4, 0x0

    aput-object p3, v4, p4

    const/4 p3, 0x1

    aput-object p1, v4, p3

    .end local p3           #key:Ljava/lang/String;
    const/4 p1, 0x2

    aput-object p2, v4, p1

    .end local p1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "trans_date"

    move-object v0, p0

    .line 1123
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v0           #c:Landroid/database/Cursor;
    move-result-object p0

    .line 1125
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1127
    .restart local v0       #c:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p3       #key:Ljava/lang/String;
    .restart local p4       #type:I
    :pswitch_3
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1128
    const-string v3, "payee=? AND trans_date>=? AND trans_date<=?"

    const/4 p4, 0x3

    new-array v4, p4, [Ljava/lang/String;

    .end local p4           #type:I
    const/4 p4, 0x0

    aput-object p3, v4, p4

    const/4 p3, 0x1

    aput-object p1, v4, p3

    .end local p3           #key:Ljava/lang/String;
    const/4 p1, 0x2

    aput-object p2, v4, p1

    .end local p1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "trans_date"

    move-object v0, p0

    .line 1127
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v0           #c:Landroid/database/Cursor;
    move-result-object p0

    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_0

    .local v0, child:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .local p4, cat_id:Ljava/lang/String;
    :cond_1
    move-object p3, p4

    .end local p4           #cat_id:Ljava/lang/String;
    .local p3, cat_id:Ljava/lang/String;
    goto/16 :goto_1

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getByYearMonth(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "YearMonth"
    .parameter "account_id"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "transactions"

    const-string v7, "trans_date DESC,_id DESC"

    .line 1152
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 1153
    const-string v0, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1154
    const-string v3, "substr(trans_date,0,7)=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "trans_date DESC,_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1153
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1156
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    .line 1157
    const-string v3, "substr(trans_date,0,7)=? AND (account=? OR category=?)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v0, "trans_date DESC,_id DESC"

    move-object v0, p0

    move-object v6, v5

    .line 1156
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .parameter "db"
    .parameter "action"

    .prologue
    const-string v7, "remote_id"

    const-string v7, "name"

    const-string v7, "_id"

    .line 1035
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1037
    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    const-string v8, "transactions"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string v7, "key"

    const-string v8, "_id"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "all"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1041
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 1043
    :cond_0
    const-string v7, "new"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1044
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getNew(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 1046
    :cond_1
    const-string v7, "modified"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 1047
    invoke-static {p0}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getModified(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 1049
    :cond_2
    if-eqz v0, :cond_5

    .line 1050
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1051
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1052
    .local v6, rs:Lorg/json/JSONArray;
    const-string v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1055
    .local v5, record:Lorg/json/JSONObject;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1056
    const-string v7, "row_id"

    const-string v8, "remote_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    const-string v7, "remote_id"

    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1059
    .local v2, fields:Lorg/json/JSONArray;
    const-string v7, "fields"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 1067
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 1053
    if-nez v7, :cond_3

    .line 1069
    .end local v2           #fields:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #record:Lorg/json/JSONObject;
    .end local v6           #rs:Lorg/json/JSONArray;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1074
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-object v4

    .line 1061
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #fields:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v5       #record:Lorg/json/JSONObject;
    .restart local v6       #rs:Lorg/json/JSONArray;
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1062
    .local v1, field:Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1063
    const-string v7, "name"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string v7, "value"

    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1072
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

    .line 1030
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

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

    .line 1026
    const-string v1, "transactions"

    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    const-string v3, "sync=0 and remote_id=0"

    const-string v7, "_id"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPayees(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .parameter "db"

    .prologue
    .line 1326
    const-string v0, "SELECT DISTINCT payee FROM transactions WHERE payee<>\'\' ORDER BY payee"

    .line 1328
    .local v0, sql:Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalByAccount(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D
    .locals 7
    .parameter "db"
    .parameter "acc_id"
    .parameter "range"

    .prologue
    const/4 v6, 0x0

    .line 1236
    const-wide/16 v3, 0x0

    .line 1237
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    aget-object v5, p3, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE mode=-1 AND account=? AND trans_date>=? AND trans_date<=?"

    .line 1245
    .local v2, sql:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1246
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1247
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1248
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1250
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1253
    :cond_1
    return-wide v3
.end method

.method public static getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D
    .locals 7
    .parameter "db"
    .parameter "category_id"
    .parameter "range"

    .prologue
    const/4 v6, 0x0

    .line 1304
    const-wide/16 v3, 0x0

    .line 1305
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    aget-object v5, p3, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE category=? AND trans_date>=? AND trans_date<=?"

    .line 1313
    .local v2, sql:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1314
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1315
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1316
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1318
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_1
    return-wide v3
.end method

.method public static getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/lang/String;)D
    .locals 8
    .parameter "db"
    .parameter "category_id"
    .parameter "range"
    .parameter "group"

    .prologue
    const/4 v7, 0x0

    .line 1333
    const-wide/16 v3, 0x0

    .line 1334
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    aget-object v5, p3, v7

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE category=? AND trans_date>=? AND trans_date<=?"

    .line 1340
    .local v2, sql:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 1341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "group_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1342
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_0
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1346
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1347
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1348
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1350
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1353
    :cond_2
    return-wide v3
.end method

.method public static getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D
    .locals 3
    .parameter "db"
    .parameter "category_id"
    .parameter "range"
    .parameter "group"
    .parameter "acc_id"
    .parameter "payee"

    .prologue
    .line 1358
    const-wide/16 v1, 0x0

    .line 1359
    .local v1, total:D
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    const-string p1, "SELECT SUM(ex_amount) AS total FROM transactions WHERE category=? AND trans_date>=? AND trans_date<=?"

    .line 1365
    .local p1, sql:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 1366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #sql:Ljava/lang/String;
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " AND "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "group_name"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1367
    .restart local p1       #sql:Ljava/lang/String;
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_0
    const-wide/16 p2, 0x0

    cmp-long p2, p5, p2

    if-eqz p2, :cond_1

    .line 1371
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #sql:Ljava/lang/String;
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " AND "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "account"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1372
    .restart local p1       #sql:Ljava/lang/String;
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_1
    if-eqz p7, :cond_2

    .line 1376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #sql:Ljava/lang/String;
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " AND "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "payee"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1377
    .restart local p1       #sql:Ljava/lang/String;
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_2
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1381
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_4

    .line 1382
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1           #sql:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1383
    const-string p1, "total"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    add-double/2addr p1, v1

    .line 1385
    .end local v1           #total:D
    .local p1, total:D
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-wide p0, p1

    .line 1388
    .end local p1           #total:D
    .local p0, total:D
    :goto_1
    return-wide p0

    .restart local v1       #total:D
    .local p0, c:Landroid/database/Cursor;
    :cond_3
    move-wide p1, v1

    .end local v1           #total:D
    .restart local p1       #total:D
    goto :goto_0

    .restart local v1       #total:D
    .local p1, sql:Ljava/lang/String;
    :cond_4
    move-wide p0, v1

    .end local v1           #total:D
    .end local p1           #sql:Ljava/lang/String;
    .local p0, total:D
    goto :goto_1
.end method

.method public static getTotalByGroup(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D
    .locals 7
    .parameter "db"
    .parameter "group_id"
    .parameter "range"

    .prologue
    const/4 v6, 0x0

    .line 1258
    const-wide/16 v3, 0x0

    .line 1259
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    aget-object v5, p3, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE mode=-1 AND group_name=? AND trans_date>=? AND trans_date<=?"

    .line 1267
    .local v2, sql:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1268
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1269
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1270
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1272
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_1
    return-wide v3
.end method

.method public static getTotalByPayee(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)D
    .locals 9
    .parameter "db"
    .parameter "payee"
    .parameter "range"

    .prologue
    const/4 v8, 0x0

    .line 1280
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getTotalByPayee------"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-wide/16 v3, 0x0

    .line 1282
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    aget-object v5, p2, v8

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE mode=-1 AND payee=? AND trans_date>=? AND trans_date<=?"

    .line 1289
    .local v2, sql:Ljava/lang/String;
    invoke-static {}, Lcom/wareone/tappmt/PmtDbAdapter;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SQL ------> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1292
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1293
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1294
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1296
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_1
    return-wide v3
.end method

.method public static getTotalExpense(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)D
    .locals 7
    .parameter "db"
    .parameter "range"

    .prologue
    const/4 v6, 0x0

    .line 1215
    const-wide/16 v3, 0x0

    .line 1216
    .local v3, total:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    aget-object v5, p1, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v2, "SELECT SUM(ex_amount) AS total FROM transactions WHERE mode=-1 and trans_date>=? AND trans_date<=?"

    .line 1223
    .local v2, sql:Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1224
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1225
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1226
    const-string v5, "total"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1228
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1231
    :cond_1
    return-wide v3
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1012
    const-string v0, "transactions"

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
    .line 1017
    const-string v0, "transactions"

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
