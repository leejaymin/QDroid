.class Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dakkhin/android/bhadram/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final DB_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE PWS( _id INTEGER PRIMARY KEY AUTOINCREMENT, TITLE TEXT NOT NULL, NAME BLOB NOT NULL, DESC TEXT, PW BLOB NOT NULL, INFO BLOB )"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "version"

    .prologue
    .line 123
    const-string v0, "akandaka"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 132
    :try_start_0
    const-string v1, "CREATE TABLE PWS( _id INTEGER PRIMARY KEY AUTOINCREMENT, TITLE TEXT NOT NULL, NAME BLOB NOT NULL, DESC TEXT, PW BLOB NOT NULL, INFO BLOB )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "AKANDAKA: "

    const-string v2, "Error creating DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 144
    return-void
.end method

.method public resetDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 147
    const-string v0, "DROP TABLE IF EXISTS PWS"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    return-void
.end method
