.class Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProjectsContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/providers/ProjectsContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field cur:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/providers/ProjectsContentProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;

    .line 446
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 447
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 451
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'projects\'"

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "CREATE TABLE projects (_id INTEGER PRIMARY KEY AUTOINCREMENT, title VARCHAR(255), description LONGTEXT, resolution VARCHAR(255),directory VARCHAR(255),timestamp VARCHAR(255), framesinfo LONGTEXT, renderedinfo LONGTEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;

    invoke-virtual {v0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 468
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    return-void

    .line 466
    :catchall_0
    move-exception v0

    .line 467
    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;

    invoke-virtual {v1}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 468
    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 469
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v2, 0x0

    .line 475
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading your database from version "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", all data may be erased"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v1, "projects"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    .line 480
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 482
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;

    iget-boolean v0, v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->wipeData:Z

    if-eqz v0, :cond_2

    .line 483
    new-instance v8, Ljava/io/File;

    sget-object v0, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v8, contentDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {v8}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->deleteRecursive(Ljava/io/File;)V

    .line 489
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS projects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 524
    .end local v8           #contentDir:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->this$0:Lcom/ui/LapseIt/providers/ProjectsContentProvider;

    invoke-virtual {v0}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 525
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 526
    return-void

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [Landroid/content/ContentValues;

    .line 494
    .local v11, valuesArray:[Landroid/content/ContentValues;
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    const-string v0, "DROP TABLE IF EXISTS projects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 517
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v11

    if-ge v9, v0, :cond_1

    .line 518
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Recovering row "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with data "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v11, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "projects"

    invoke-static {}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->access$1()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v11, v9

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 496
    .end local v9           #i:I
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v10, oldValues:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lt v9, v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    aput-object v10, v11, v0

    .line 511
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 499
    :cond_4
    invoke-static {}, Lcom/ui/LapseIt/providers/ProjectsContentProvider;->access$0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 504
    :cond_6
    iget-object v0, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/providers/ProjectsContentProvider$DatabaseHelper;->cur:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
