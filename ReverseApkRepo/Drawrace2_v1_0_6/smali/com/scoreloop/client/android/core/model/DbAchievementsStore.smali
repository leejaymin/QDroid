.class public Lcom/scoreloop/client/android/core/model/DbAchievementsStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/AchievementsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;
    }
.end annotation


# static fields
.field private static b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/util/Cryptifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "achievements"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/Cryptifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    .line 124
    sget-object v1, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;-><init>(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    if-eqz p0, :cond_0

    .line 138
    const-string v1, "PRAGMA synchronous=OFF"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 141
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Award;)Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 300
    :try_start_0
    new-instance v0, Lcom/scoreloop/client/android/core/model/Achievement;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, p0}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award;Lorg/json/JSONObject;Lcom/scoreloop/client/android/core/model/AchievementsStore;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private a(Lcom/scoreloop/client/android/core/model/Achievement;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b(Lcom/scoreloop/client/android/core/model/Achievement;)Landroid/content/ContentValues;

    move-result-object v0

    .line 170
    const-string v1, "achievements"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 171
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t insert achievement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Lcom/scoreloop/client/android/core/model/Achievement;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Lcom/scoreloop/client/android/core/model/Achievement;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 295
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/scoreloop/client/android/core/model/Achievement;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 223
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 224
    const-string v0, "achievement_id"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "local_id"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "award_id"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "needs_submit"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->needsSubmit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    const-string v2, "date"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c(Lcom/scoreloop/client/android/core/model/Achievement;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :try_start_0
    const-string v2, "data"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-virtual {v3, v0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    return-object v1

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    const-string v1, "key"

    const-string v2, "did_query_server"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "achievements_config"

    const-string v2, "key = \'did_query_server\'"

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 214
    if-nez v1, :cond_0

    .line 215
    const-string v1, "achievements_config"

    invoke-virtual {p0, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 216
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t insert new row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    return-void
.end method

.method private static c(Lcom/scoreloop/client/android/core/model/Achievement;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b:Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->close()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Award;)Ljava/util/List;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Award;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 241
    const/4 v8, 0x0

    .line 243
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    const-string v1, "achievements"

    const/4 v2, 0x0

    const-string v3, "award_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 245
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_8

    .line 248
    :try_start_2
    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a:Lcom/scoreloop/client/android/core/util/Cryptifier;

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-direct {p0, v1, p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Award;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v3, "achievement_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "local_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v5, "award_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->needsSubmit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v1, "needs_submit"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v7

    if-nez v7, :cond_5

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :cond_0
    :goto_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    :goto_6
    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_1
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    .line 268
    :goto_7
    return-object v9

    .line 251
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :try_start_4
    new-instance v1, Ljava/util/Date;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/scoreloop/client/android/core/util/CryptifierException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v7

    const-wide/32 v10, 0x5265c00

    cmp-long v1, v7, v10

    if-gez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 263
    :cond_8
    if-eqz v0, :cond_9

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_9
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    goto :goto_7

    .line 263
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v8, :cond_a

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_a
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    throw v0

    .line 263
    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_8

    .line 260
    :catch_2
    move-exception v0

    move-object v0, v8

    goto :goto_6
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 5
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b(Lcom/scoreloop/client/android/core/model/Achievement;)Landroid/content/ContentValues;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 156
    const-string v3, "achievements"

    const-string v4, "local_id = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 157
    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Lcom/scoreloop/client/android/core/model/Achievement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    throw v0
.end method

.method public final a()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 178
    .line 180
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    const-string v1, "achievements_config"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "key = \'did_query_server\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 190
    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    :goto_0
    return v0

    .line 186
    :cond_1
    if-eqz v1, :cond_2

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_2
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    move v0, v8

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 188
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_3
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    throw v0

    .line 190
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_2

    .line 187
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->c()V

    throw v0
.end method
