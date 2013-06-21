.class public Ljiqqa/recipe/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String;

.field private static DB_PATH:Ljava/lang/String;

.field private static TABLE_NAME:Ljava/lang/String;


# instance fields
.field private final myContext:Landroid/content/Context;

.field private myDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "/data/data/jiqqa.recipe/databases/"

    sput-object v0, Ljiqqa/recipe/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    .line 23
    const-string v0, "recipes.db"

    sput-object v0, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "recipes"

    sput-object v0, Ljiqqa/recipe/DatabaseHelper;->TABLE_NAME:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    iput-object p1, p0, Ljiqqa/recipe/DatabaseHelper;->myContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private checkDatabase()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, checkDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Ljiqqa/recipe/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, myPath:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .end local v1           #myPath:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    move v2, v4

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private copyDatabase()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v5, p0, Ljiqqa/recipe/DatabaseHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 55
    .local v2, myInput:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Ljiqqa/recipe/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, outFileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, myOutput:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 62
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-gtz v1, :cond_0

    .line 67
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 71
    return-void

    .line 63
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljiqqa/recipe/DatabaseHelper;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Ljiqqa/recipe/DatabaseHelper;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDatabase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljiqqa/recipe/DatabaseHelper;->checkDatabase()Z

    move-result v0

    .line 39
    .local v0, dbExist:Z
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Ljiqqa/recipe/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    :try_start_0
    invoke-direct {p0}, Ljiqqa/recipe/DatabaseHelper;->copyDatabase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Error while copying database"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 104
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 109
    return-void
.end method

.method public openDatabase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljiqqa/recipe/DatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljiqqa/recipe/DatabaseHelper;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, myPath:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/DatabaseHelper;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    return-void
.end method
