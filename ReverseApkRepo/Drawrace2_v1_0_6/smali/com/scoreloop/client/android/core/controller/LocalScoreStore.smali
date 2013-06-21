.class public Lcom/scoreloop/client/android/core/controller/LocalScoreStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/util/Cryptifier;

.field private final b:Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

.field private final c:Lcom/scoreloop/client/android/core/model/User;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;-><init>(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b:Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

    .line 93
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-direct {v0, p2, p3}, Lcom/scoreloop/client/android/core/util/Cryptifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    .line 94
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 95
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->e:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/scoreloop/client/android/core/model/ScoreOrdering;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Score;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Result:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v3, "result"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->MinorResult:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v3, "minor_result"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Level:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v3, "level"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    const/4 v10, 0x0

    .line 176
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    const-string v2, "scores"

    const/4 v3, 0x0

    const-string v4, "mode = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 183
    :goto_0
    if-eqz v2, :cond_1

    .line 184
    :try_start_1
    const-string v1, "id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 185
    const-string v1, "score"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v1, p4

    .line 187
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    :try_start_2
    new-instance v5, Lcom/scoreloop/client/android/core/model/Score;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/scoreloop/client/android/core/util/Cryptifier;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    .line 191
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/String;)V

    .line 192
    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/model/Score;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 194
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 197
    :catch_0
    move-exception v5

    goto :goto_1

    .line 181
    :cond_0
    :try_start_3
    const-string v2, "scores"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_0

    .line 208
    :cond_1
    if-eqz v2, :cond_2

    .line 209
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_2
    :goto_2
    return-object v11

    .line 206
    :catch_1
    move-exception v1

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_2

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 208
    :catchall_0
    move-exception v1

    move-object v2, v10

    :goto_4
    if-eqz v2, :cond_3

    .line 209
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 208
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 206
    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_3

    .line 200
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b:Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->close()V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Lcom/scoreloop/client/android/core/model/Score;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->c(Lcom/scoreloop/client/android/core/model/Score;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "scores"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b:Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->e:Landroid/content/Context;

    const-string v1, "scores.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 247
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b:Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private c(Lcom/scoreloop/client/android/core/model/Score;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 144
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 145
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "mode"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v0, "result"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getResult()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 148
    const-string v0, "minor_result"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMinorResult()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 149
    const-string v0, "level"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "needs_submit"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 152
    :try_start_0
    const-string v0, "score"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->b_()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    const-string v0, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    return-object v1

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Integer;ILcom/scoreloop/client/android/core/model/ScoreOrdering;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b()V

    .line 101
    const/4 v0, 0x1

    .line 103
    const/4 v6, 0x0

    .line 104
    :goto_0
    if-eqz v0, :cond_2

    .line 105
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    add-int/lit8 v5, p2, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Score;

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "scores"

    const-string v6, "id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Score;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move v6, v1

    .line 111
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 114
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v6
.end method

.method public final a(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/scoreloop/client/android/core/model/ScoreOrdering;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Score;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b()V

    .line 165
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 167
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    throw v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 4
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->c(Lcom/scoreloop/client/android/core/model/Score;)Landroid/content/ContentValues;

    move-result-object v0

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b()V

    .line 122
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "scores"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    throw v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b()V

    .line 267
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "scores"

    const-string v3, "mode = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    throw v0
.end method

.method public final b(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 8
    .parameter

    .prologue
    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b()V

    .line 276
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->c(Lcom/scoreloop/client/android/core/model/Score;)Landroid/content/ContentValues;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "scores"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a()V

    throw v0
.end method
