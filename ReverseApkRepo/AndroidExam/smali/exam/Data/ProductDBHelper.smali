.class Lexam/Data/ProductDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProductList.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    const-string v0, "Product.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 40
    const-string v0, "CREATE TABLE product ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, price INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v0, "INSERT INTO product VALUES (null, \'\uc624\uc9d5\uc5b4 \ub545\ucf69\', 900);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "INSERT INTO product VALUES (null, \'\ub18d\uc2ec \ud3ec\ud14c\uc774\ud1a0 \uce69\', 2000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "INSERT INTO product VALUES (null, \'\ub85c\ubcf4\ud2b8 \ud0dc\uad8c V\', 1000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "INSERT INTO product VALUES (null, \'\uaf2c\ub9c8 \uc790\ub3d9\ucc28 \ubd95\ubd95\', 1500);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "INSERT INTO product VALUES (null, \'\uc708\ub3c4\uc6b0\uc988 API \uc815\ubcf5\', 32000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "INSERT INTO product VALUES (null, \'\ub86f\ub370 \uc778\ubca4\uc2a4 \uc544\ud30c\ud2b8\', 190000000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "INSERT INTO product VALUES (null, \'88 \ub77c\uc774\ud2b8\', 1900);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "INSERT INTO product VALUES (null, \'\ud504\ub77c\uc774\ub4dc 1.6 CVVT \uace8\ub4dc\', 8900000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "INSERT INTO product VALUES (null, \'\uce90\ub9ac\ube44\uc548 \ubca0\uc774 \uc785\uc7a5\uad8c\', 25000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 54
    const-string v0, "DROP TABLE IF EXISTS product"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lexam/Data/ProductDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    return-void
.end method
