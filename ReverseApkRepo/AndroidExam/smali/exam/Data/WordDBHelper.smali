.class Lexam/Data/WordDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EnglishWord.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 96
    const-string v0, "EngWord.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 100
    const-string v0, "CREATE TABLE dic ( _id INTEGER PRIMARY KEY AUTOINCREMENT, eng TEXT, han TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 105
    const-string v0, "DROP TABLE IF EXISTS dic"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lexam/Data/WordDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    return-void
.end method
