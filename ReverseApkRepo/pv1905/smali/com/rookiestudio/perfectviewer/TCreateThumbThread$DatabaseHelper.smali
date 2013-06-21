.class public Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TCreateThumbThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TCreateThumbThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private DATABASE_NAME_FULL:Ljava/lang/String;

.field public ThumbDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "DATABASE_NAME_FULL"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 58
    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thumbdata.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->DATABASE_NAME_FULL:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public CleanOldData(J)V
    .locals 3
    .parameter "DeleteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM thumbdata WHERE rowid IN (SELECT rowid FROM thumbdata ORDER BY add_date limit 0,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public CreateDataBase()V
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->DATABASE_NAME_FULL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 68
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE thumbdata (file_path TEXT,file_name TEXT,width INTEGER,height INTEGER,bpp INTEGER,size INTEGER,add_date DATE default CURRENT_DATE,thumbnail BLOB)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public GetRecordCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 99
    const-wide/16 v0, 0x0

    .line 106
    :goto_0
    return-wide v0

    .line 101
    :cond_0
    const-wide/16 v0, 0x0

    .line 106
    .local v0, result:J
    goto :goto_0
.end method

.method public LoadThumbFile(Lcom/rookiestudio/baseclass/TThumbData;)Z
    .locals 12
    .parameter "aThumbData"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 134
    const/4 v8, 0x0

    .line 137
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "thumbdata"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rowid,width,height,bpp,size,thumbnail"

    aput-object v4, v2, v3

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file_path=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/Config;->FixSQLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 137
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 157
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v9

    .local v9, e:Landroid/database/SQLException;
    move v0, v10

    .line 140
    goto :goto_0

    .line 141
    .end local v9           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v9

    .local v9, e:Ljava/lang/NullPointerException;
    move v0, v10

    .line 142
    goto :goto_0

    .line 149
    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->Index:J

    .line 151
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->Width:I

    .line 152
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->Height:I

    .line 153
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->Bpp:I

    .line 154
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->Size:I

    .line 155
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    .line 156
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 157
    goto :goto_0
.end method

.method public OpenDataBase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->DATABASE_NAME_FULL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, DBFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->DATABASE_NAME_FULL:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS thumbdata"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->CreateDataBase()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->CreateDataBase()V

    goto :goto_0
.end method

.method public SaveThumbFile(Lcom/rookiestudio/baseclass/TThumbData;)V
    .locals 4
    .parameter "aThumbData"

    .prologue
    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "file_path"

    iget-object v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "width"

    iget v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->Width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v1, "height"

    iget v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->Height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v1, "bpp"

    iget v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->Bpp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v1, "size"

    iget v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->Size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "thumbnail"

    iget-object v2, p1, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "thumbdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/rookiestudio/baseclass/TThumbData;->Index:J

    .line 131
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->ThumbDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 76
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    return-void
.end method
