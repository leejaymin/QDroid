.class public Lorg/appcelerator/titanium/util/TiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiDatabaseHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiDbHelper"

.field private static final name:Ljava/lang/String; = "Titanium"

.field private static final version:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "Titanium"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public deletePlatformParam(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 52
    const-string v2, "delete from platform where name = ?"

    .line 53
    .local v2, platformSQL:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 57
    .local v1, platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    return-void

    .line 63
    .end local v1           #platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "def"

    .prologue
    .line 68
    const-string v2, "select value from platform where name = ?"

    .line 69
    .local v2, platformSQL:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 73
    .local v3, platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-nez v4, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v5, p2

    .line 90
    .end local v3           #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v4           #result:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 88
    .restart local v3       #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .restart local v4       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v5, v4

    goto :goto_0

    .line 82
    .end local v3           #platformSelectStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 84
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "TiDbHelper"

    const-string v6, "Problem retrieving data from platform: "

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v5, p2

    .line 90
    goto :goto_0

    .line 88
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 94
    const-string v0, "create table platform(name TEXT,value TEXT)"

    .line 95
    .local v0, platformSQL:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 99
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 102
    return-void
.end method

.method public setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 30
    const-string v2, "insert into platform values (?,?)"

    .line 31
    .local v2, platformSQL:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 35
    .local v1, platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 36
    const/4 v3, 0x2

    invoke-virtual {v1, v3, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 44
    return-void

    .line 42
    .end local v1           #platformInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->deletePlatformParam(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->setPlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
