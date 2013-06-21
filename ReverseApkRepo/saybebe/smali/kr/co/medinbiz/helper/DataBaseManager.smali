.class public Lkr/co/medinbiz/helper/DataBaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseManager.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "DataBase.db"

.field public static final DATABASE_TABLE:Ljava/lang/String; = "Stable"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DB_CREATE:Ljava/lang/String; = "create table Stable (_id integer primary key autoincrement, name text not null, number text not null);"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    const-string v0, "DataBase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getSosAllRow()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/SosData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/SosData;>;"
    invoke-virtual {p0}, Lkr/co/medinbiz/helper/DataBaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 60
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select name, number from Stable;"

    .line 61
    .local v3, query:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    return-object v2

    .line 63
    :cond_0
    new-instance v4, Lkr/co/medinbiz/dto/SosData;

    invoke-direct {v4}, Lkr/co/medinbiz/dto/SosData;-><init>()V

    .line 64
    .local v4, sos:Lkr/co/medinbiz/dto/SosData;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lkr/co/medinbiz/dto/SosData;->name:Ljava/lang/String;

    .line 65
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lkr/co/medinbiz/dto/SosData;->number:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 30
    const-string v0, "create table Stable (_id integer primary key autoincrement, name text not null, number text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 36
    return-void
.end method

.method public sosDelete()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lkr/co/medinbiz/helper/DataBaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Stable"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, result:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    return v1
.end method

.method public sosInsert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "number"

    .prologue
    .line 40
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lkr/co/medinbiz/helper/DataBaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Stable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    return-void
.end method
