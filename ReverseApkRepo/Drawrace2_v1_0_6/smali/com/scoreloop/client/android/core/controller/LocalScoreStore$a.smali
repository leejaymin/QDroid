.class final Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/LocalScoreStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->a:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    .line 32
    const-string v0, "scores.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS scores (id TEXT NOT NULL PRIMARY KEY, mode TEXT, score TEXT NOT NULL, last_update INTEGER, result REAL, minor_result REAL, level Integer, needs_submit Integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 48
    const-string v0, "ALTER TABLE scores ADD COLUMN result REAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "ALTER TABLE scores ADD COLUMN minor_result REAL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "ALTER TABLE scores ADD COLUMN level Integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "ALTER TABLE scores ADD COLUMN needs_submit Integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->a:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    new-instance v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Landroid/database/sqlite/SQLiteDatabase;Lcom/scoreloop/client/android/core/model/ScoreOrdering;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Score;

    .line 56
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore$a;->a:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    invoke-static {v2, v0, p1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Lcom/scoreloop/client/android/core/controller/LocalScoreStore;Lcom/scoreloop/client/android/core/model/Score;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
