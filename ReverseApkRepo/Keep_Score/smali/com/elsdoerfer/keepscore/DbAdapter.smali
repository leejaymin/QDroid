.class public Lcom/elsdoerfer/keepscore/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DATABASE_CREATE:[Ljava/lang/String;

.field public static PLAYER_ID_KEY:Ljava/lang/String;

.field public static PLAYER_INDEX_KEY:Ljava/lang/String;

.field public static PLAYER_NAME_KEY:Ljava/lang/String;

.field public static PLAYER_SESSION_KEY:Ljava/lang/String;

.field public static PLAYER_TABLE:Ljava/lang/String;

.field public static SCORE_CREATED_AT_KEY:Ljava/lang/String;

.field public static SCORE_ID_KEY:Ljava/lang/String;

.field public static SCORE_PLAYER_INDEX_KEY:Ljava/lang/String;

.field public static SCORE_ROW_KEY:Ljava/lang/String;

.field public static SCORE_SESSION_KEY:Ljava/lang/String;

.field public static SCORE_TABLE:Ljava/lang/String;

.field public static SCORE_VALUE_KEY:Ljava/lang/String;

.field public static SESSION_ID_KEY:Ljava/lang/String;

.field public static SESSION_LABEL_VKEY:Ljava/lang/String;

.field public static SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

.field public static SESSION_TABLE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "session_id"

    const-string v1, "_id"

    .line 30
    const-class v0, Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/elsdoerfer/keepscore/DbAdapter;->$assertionsDisabled:Z

    .line 34
    const-string v0, "session"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_TABLE:Ljava/lang/String;

    .line 35
    const-string v0, "_id"

    sput-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    .line 36
    const-string v0, "last_played_at"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "label"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LABEL_VKEY:Ljava/lang/String;

    .line 39
    const-string v0, "player"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_TABLE:Ljava/lang/String;

    .line 40
    const-string v0, "_id"

    sput-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_ID_KEY:Ljava/lang/String;

    .line 41
    const-string v0, "session_id"

    sput-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_SESSION_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "name"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_NAME_KEY:Ljava/lang/String;

    .line 43
    const-string v0, "idx"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_INDEX_KEY:Ljava/lang/String;

    .line 45
    const-string v0, "score"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    .line 46
    const-string v0, "_id"

    sput-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ID_KEY:Ljava/lang/String;

    .line 47
    const-string v0, "session_id"

    sput-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_SESSION_KEY:Ljava/lang/String;

    .line 48
    const-string v0, "row"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ROW_KEY:Ljava/lang/String;

    .line 49
    const-string v0, "player_index"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_PLAYER_INDEX_KEY:Ljava/lang/String;

    .line 50
    const-string v0, "value"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_VALUE_KEY:Ljava/lang/String;

    .line 51
    const-string v0, "created_at"

    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_CREATED_AT_KEY:Ljava/lang/String;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string v1, "CREATE TABLE session (_id INTEGER PRIMARY KEY AUTOINCREMENT,                       last_played_at UNSIGNED INTEGER NOT NULL);"

    aput-object v1, v0, v2

    .line 57
    const-string v1, "CREATE TABLE player (_id INTEGER PRIMARY KEY AUTOINCREMENT,                      session_id INTEGER NOT NULL,                     name TEXT NOT NULL,                     idx INTEGER NOT NULL);"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 62
    const-string v2, "CREATE TABLE score (_id INTEGER PRIMARY KEY AUTOINCREMENT,                     session_id INTEGER NOT NULL,                    row INTEGER NOT NULL,                    player_index INTEGER NOT NULL,                    value INTEGER NOT NULL,                    created_at UNSIGNED INTEGER NOT NULL);"

    aput-object v2, v0, v1

    .line 53
    sput-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->DATABASE_CREATE:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->DATABASE_CREATE:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addSessionScores(J[Ljava/lang/Integer;)V
    .locals 12
    .parameter "sessionId"
    .parameter "scores"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MAX("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ROW_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_SESSION_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 185
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 183
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 188
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 192
    .local v10, nextRowNum:I
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, p3

    if-lt v9, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    return-void

    .line 191
    .end local v9           #i:I
    .end local v10           #nextRowNum:I
    :catchall_0
    move-exception v0

    .line 192
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    throw v0

    .line 195
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #i:I
    .restart local v10       #nextRowNum:I
    :cond_0
    :try_start_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v11, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_SESSION_KEY:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ROW_KEY:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_PLAYER_INDEX_KEY:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_VALUE_KEY:Ljava/lang/String;

    aget-object v1, p3, v9

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_CREATED_AT_KEY:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public clearSessions()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_TABLE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 251
    return-void

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 250
    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDbHelper:Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;->close()V

    .line 116
    return-void
.end method

.method public createSession([Ljava/lang/String;)J
    .locals 7
    .parameter "players"

    .prologue
    .line 123
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v3, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_TABLE:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 128
    .local v1, session_id:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    return-wide v1

    .line 129
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #values:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .restart local v3       #values:Landroid/content/ContentValues;
    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_SESSION_KEY:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_NAME_KEY:Ljava/lang/String;

    aget-object v5, p1, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_INDEX_KEY:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_TABLE:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0           #i:I
    .end local v1           #session_id:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 139
    iget-object v5, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    throw v4
.end method

.method public deleteSession(J)V
    .locals 5
    .parameter "sessionId"

    .prologue
    const-string v1, " = "

    .line 222
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_TABLE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, rc:I
    sget-boolean v1, Lcom/elsdoerfer/keepscore/DbAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v0           #rc:I
    :catchall_0
    move-exception v1

    .line 236
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    throw v1

    .line 231
    .restart local v0       #rc:I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_TABLE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_SESSION_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_SESSION_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    return-void
.end method

.method public fetchAllSessions()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    const-string v1, "SELECT _id, GROUP_CONCAT(name, \', \') AS label, last_played_at FROM (SELECT session._id AS _id, last_played_at, player.name AS name FROM session       LEFT OUTER JOIN player ON session._id = player.session_id       ORDER BY player.idx ASC) GROUP BY _id ORDER BY last_played_at DESC"

    .line 151
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchSessionPlayerNames(J)[Ljava/lang/String;
    .locals 10
    .parameter "sessionId"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_TABLE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_NAME_KEY:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_SESSION_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/elsdoerfer/keepscore/DbAdapter;->PLAYER_INDEX_KEY:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ASC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    .line 155
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 160
    .local v9, result:[Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 161
    if-nez v0, :cond_0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    return-object v9

    .line 166
    .end local v9           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    throw v0
.end method

.method public fetchSessionScores(J)Landroid/database/Cursor;
    .locals 8
    .parameter "sessionId"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 216
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_VALUE_KEY:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_SESSION_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ROW_KEY:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ASC, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_PLAYER_INDEX_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ASC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    .line 216
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public open()Lcom/elsdoerfer/keepscore/DbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDbHelper:Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;

    .line 110
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDbHelper:Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 111
    return-object p0
.end method

.method public removeSessionScores(JLjava/lang/Integer;)Z
    .locals 7
    .parameter "sessionId"
    .parameter "rowNum"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_TABLE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_SESSION_KEY:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "= ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/elsdoerfer/keepscore/DbAdapter;->SCORE_ROW_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 211
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public updateSessionTimestamp(J)Z
    .locals 5
    .parameter "sessionId"

    .prologue
    .line 172
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v0, args:Landroid/content/ContentValues;
    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_TABLE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
