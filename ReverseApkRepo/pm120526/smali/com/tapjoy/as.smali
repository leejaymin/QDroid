.class public final Lcom/tapjoy/as;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TapjoyLocalDB.sql"

    const/16 v1, 0x2d0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/tapjoy/as;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/as;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE tapjoy_VGStoreItems(VGStoreItemID TEXT PRIMARY KEY, AppleProductID TEXT(50), Price INTEGER, Name TEXT(100),Description TEXT(1000), ItemTypeName TEXT(100), ItemsOwned INTEGER, ThumbImageName TEXT(100), FullImageName TEXT(100), DataFileName TEXT(100), DataFileHash TEXT(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE tapjoy_VGStoreItemAttribute(id INTEGER PRIMARY KEY, VGStoreItemID TEXT, AttributeName TEXT(100), AttributeValue TEXT(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "TapjoyDatabase"

    const-string v1, "****************************************"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TapjoyDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will add new column to DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TapjoyDatabase"

    const-string v1, "****************************************"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ALTER TABLE tapjoy_VGStoreItems ADD DataFileHash TEXT(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SQLUpgrade"

    const-string v1, "No need to add the column \'DataFileHash\'"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
