.class final Lname/kunes/android/provider/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "applications.db"

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE applications ( _id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT UNIQUE NOT NULL,label TEXT COLLATE LOCALIZED,icon BLOB,order_locale INTEGER DEFAULT 0,available INTEGER DEFAULT 1,deny INTEGER DEFAULT 0,favourite INTEGER DEFAULT 0,run_count INTEGER DEFAULT 0,run_last DETETIME)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS applications"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE applications ( _id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT UNIQUE NOT NULL,label TEXT COLLATE LOCALIZED,icon BLOB,order_locale INTEGER DEFAULT 0,available INTEGER DEFAULT 1,deny INTEGER DEFAULT 0,favourite INTEGER DEFAULT 0,run_count INTEGER DEFAULT 0,run_last DETETIME)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
