.class public Lcom/rookiestudio/perfectviewer/BookDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x5

.field private static final TableBookFolder:Ljava/lang/String; = "bookfolder"

.field private static final TableBookShelf:Ljava/lang/String; = "bookshelf"

.field private static final TableBookmark:Ljava/lang/String; = "bookmark"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    const-string v0, "perfectviewer.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 24
    :try_start_0
    const-string v0, "CREATE TABLE bookshelf (book_index INTEGER PRIMARY KEY AUTOINCREMENT,book_path TEXT,book_name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string v0, "CREATE TABLE bookmark (bookmark_index INTEGER PRIMARY KEY AUTOINCREMENT, book_index INTEGER,bookmark_name TEXT,add_date TEXT,bookmark_value1 TEXT,bookmark_value2 TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string v0, "CREATE TABLE bookhistory (book_index INTEGER PRIMARY KEY AUTOINCREMENT, full_path TEXT,file_name TEXT,last_date INTEGER,read_page INTEGER,total_page INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "CREATE TABLE bookfolder (book_index INTEGER PRIMARY KEY AUTOINCREMENT,book_path TEXT,book_cate TEXT,isdirectory INTEGER,isfolder INTEGER,book_cover BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v0, 0x4

    .line 41
    if-ge p2, v0, :cond_1

    .line 42
    const-string v0, "DROP TABLE IF EXISTS bookhistory;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE TABLE bookhistory (book_index INTEGER PRIMARY KEY AUTOINCREMENT, full_path TEXT,file_name TEXT,last_date TEXT,read_page INTEGER,total_page INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-ne p2, v0, :cond_0

    .line 46
    const-string v0, "CREATE TABLE bookfolder (book_index INTEGER PRIMARY KEY AUTOINCREMENT,book_path TEXT,book_cate TEXT,isdirectory INTEGER,isfolder INTEGER,book_cover BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
