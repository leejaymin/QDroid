.class abstract Lcom/donple/cpa/CpaModule$SQLiteConnect;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SQLiteConnect"
.end annotation


# static fields
.field protected static final DB_NAME:Ljava/lang/String; = "donple_cpa.db"

.field protected static final DB_VERSION:I = 0x1

.field protected static final FIELD_APPID:Ljava/lang/String; = "appId"

.field protected static final FIELD_BUNDLEID:Ljava/lang/String; = "bundleId"

.field protected static final FIELD_STATUS:Ljava/lang/String; = "status"

.field protected static final FIELD_TRANSACTIONID:Ljava/lang/String; = "transactionId"

.field protected static final TABLE_SYNC:Ljava/lang/String; = "tb_sync"

.field private static final TABLE_SYNC_CREATE:Ljava/lang/String; = "CREATE TABLE tb_sync (appId TEXT PRIMARY KEY NOT NULL, bundleId TEXT, status TEXT, transactionId TEXT)"


# instance fields
.field protected final TABLE_SYNC_COLUMNS:[Ljava/lang/String;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2030
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2031
    const-string v0, "donple_cpa.db"

    invoke-direct {p0, p2, v0, v4, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2013
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2014
    const-string v2, "appId"

    aput-object v2, v0, v1

    .line 2015
    const-string v1, "bundleId"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 2016
    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2017
    const-string v2, "transactionId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->TABLE_SYNC_COLUMNS:[Ljava/lang/String;

    .line 2027
    iput-object v4, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 2032
    return-void
.end method


# virtual methods
.method protected closeDBInstance()V
    .locals 1

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2078
    :cond_0
    return-void
.end method

.method public getDBInstance()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2067
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$SQLiteConnect;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2039
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2040
    const-string v1, "CREATE TABLE tb_sync (appId TEXT PRIMARY KEY NOT NULL, bundleId TEXT, status TEXT, transactionId TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2055
    :goto_0
    return-void

    .line 2043
    :catch_0
    move-exception v0

    .line 2045
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "onCreate()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2051
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2053
    :catch_1
    move-exception v1

    goto :goto_0

    .line 2048
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2051
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2054
    :goto_1
    throw v1

    .line 2053
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 2061
    return-void
.end method
