.class final Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/DbAchievementsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/scoreloop/client/android/core/model/AwardList;

.field private final c:Ljava/lang/String;

.field private d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

.field private synthetic e:Lcom/scoreloop/client/android/core/model/DbAchievementsStore;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;-><init>(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->e:Lcom/scoreloop/client/android/core/model/DbAchievementsStore;

    .line 63
    const-string v0, "achievements.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 64
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->a:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->b:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 66
    iput-object p4, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const-string v0, "CREATE TABLE IF NOT EXISTS achievements (local_id TEXT PRIMARY KEY,achievement_id TEXT,award_id TEXT NOT NULL,date INTEGER,needs_submit INTEGER NOT NULL,data BLOB NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "CREATE TABLE IF NOT EXISTS achievements_config (key STRING PRIMARY KEY,value TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    new-instance v0, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->b:Lcom/scoreloop/client/android/core/model/AwardList;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Award;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a(Lcom/scoreloop/client/android/core/model/Award;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->e:Lcom/scoreloop/client/android/core/model/DbAchievementsStore;

    invoke-static {v3, v0, p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Lcom/scoreloop/client/android/core/model/DbAchievementsStore;Lcom/scoreloop/client/android/core/model/Achievement;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->a()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 73
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->d:Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SharedPreferencesAchievementsStore;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "DROP TABLE IF EXISTS achievements;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS achievements_config;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method
