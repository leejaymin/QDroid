.class Lqm;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final 癤욱븳援:Loe;


# direct methods
.method constructor <init>(Landroid/content/Context;Loe;)V
    .locals 3

    const-string v0, "videos.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lqm;->癤욱븳援:Loe;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "CREATE TABLE VideoStates(Id\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Uri\t\t\tTEXT\t\tNOT NULL UNIQUE,Position\t\tINT\t\t\tNOT NULL,DecodeMode\t\tTINYINT\t\tNOT NULL,DecodeOption\tINT\t\t\tNOT NULL DEFAULT 0,AudioDecoder\tTINYINT\t\tNOT NULL,AudioStream\tSMALLINT\tNOT NULL,SubtitleSync\tINT\t\t\tNOT NULL,WidthRatio\t\tFLOAT\t\tNOT NULL DEFAULT 0,HeightRatio\tFLOAT\t\tNOT NULL DEFAULT 0,ZoomWidth\t\tSMALLINT\tNOT NULL DEFAULT 0,ZoomHeight\t\tSMALLINT\tNOT NULL DEFAULT 0,Process\t\tINT\t\t\tNOT NULL DEFAULT 0,ExpireAt\t\tINTEGER)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX VideoStates_ExpireAt ON VideoStates (ExpireAt)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE SubtitleStates(Id\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Video\t\t\tINT\t\t\tNOT NULL,Uri\t\t\tTEXT\t\tNOT NULL,Enabled\t\tTINYINT\t\tNOT NULL,UNIQUE (Video, Uri))"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE VideoDirectory(Id\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Path\t\t\tTEXT COLLATE NOCASE NOT NULL UNIQUE)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE VideoFile(Id\t\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Directory\t\t\tINTEGER\t\tNOT NULL,FileName\t\t\tTEXT COLLATE NOCASE\tNOT NULL,Size\t\t\t\tBIGINT\t\tNOT NULL,LastModified\t\tBIGINT\t\tNOT NULL,NoThumbnail\t\tTINYINT\t\tNOT NULL DEFAULT 0,Read\t\t\t\tTINYINT\t\tNOT NULL DEFAULT 0,VideoTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,AudioTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,SubtitleTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,Duration\t\t\tINT\t\t\tNOT NULL DEFAULT 0,FrameTime\t\t\tINT\t\t\tNOT NULL DEFAULT 0,LastWatchTime\t\tINTEGER,FinishTime\t\t\tINTEGER,UNIQUE (Directory, FileName))"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX VideoFile_LastWatchTime ON VideoFile (LastWatchTime)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE SearchHistory(Id\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Query\t\t\tTEXT\t\tNOT NULL UNIQUE,Time\t\t\tINTEGER\t\tNOT NULL DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX SearchHistory_Time ON SearchHistory (Time DESC)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE DirectOpenLog(Id\t\t\tINTEGER\t\tNOT NULL PRIMARY KEY AUTOINCREMENT,Input\t\tTEXT COLLATE NOCASE\tNOT NULL UNIQUE,Time\t\tINTEGER\t\tNOT NULL DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE INDEX DirectOpenLog_Time ON DirectOpenLog (Time DESC)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created video database at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lqm;->癤욱븳援:Loe;

    invoke-virtual {v0}, Loe;->癤욱븳援()V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "PRAGMA locking_mode=EXCLUSIVE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA synchronous=NORMAL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    :try_start_0
    const-string v0, "ALTER TABLE VideoStates ADD COLUMN DecodeOption INT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE VideoStates SET DecodeOption=1 WHERE DecodeMode=2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    :try_start_1
    const-string v0, "ALTER TABLE VideoStates ADD COLUMN ZoomWidth SMALLINT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE VideoStates ADD COLUMN ZoomHeight SMALLINT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    :try_start_2
    const-string v0, "ALTER TABLE VideoStates ADD COLUMN Process INT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    :try_start_3
    const-string v0, "DROP TABLE IF EXISTS VideoDirectory_"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE VideoDirectory_(Id\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Path\t\t\tTEXT COLLATE NOCASE NOT NULL UNIQUE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO VideoDirectory_ SELECT * FROM VideoDirectory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE VideoDirectory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE VideoDirectory_ RENAME TO VideoDirectory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    :try_start_4
    const-string v0, "ALTER TABLE VideoStates ADD COLUMN WidthRatio FLOAT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE VideoStates ADD COLUMN HeightRatio FLOAT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS VideoFile_"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE VideoFile_(Id\t\t\t\t\tINTEGER \tNOT NULL PRIMARY KEY AUTOINCREMENT,Directory\t\t\tINTEGER\t\tNOT NULL,FileName\t\t\tTEXT COLLATE NOCASE\tNOT NULL,Size\t\t\t\tBIGINT\t\tNOT NULL,LastModified\t\tBIGINT\t\tNOT NULL,NoThumbnail\t\tTINYINT\t\tNOT NULL DEFAULT 0,Read\t\t\t\tTINYINT\t\tNOT NULL DEFAULT 0,VideoTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,AudioTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,SubtitleTrackCount\tTINYINT\t\tNOT NULL DEFAULT 0,Duration\t\t\tINT\t\t\tNOT NULL DEFAULT 0,FrameTime\t\t\tINT\t\t\tNOT NULL DEFAULT 0,LastWatchTime\t\tINTEGER,FinishTime\t\t\tINTEGER,UNIQUE (Directory, FileName))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO VideoFile_ (Id, Directory, FileName, Size, LastModified, LastWatchTime, FinishTime) SELECT Id, Directory, FileName, Size, LastModified, LastWatchTime, FinishTime FROM VideoFile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE VideoFile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE VideoFile_ RENAME TO VideoFile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    :try_start_5
    const-string v0, "CREATE TABLE DirectOpenLog(Id\t\t\tINTEGER\t\tNOT NULL PRIMARY KEY AUTOINCREMENT,Input\t\tTEXT\t\tNOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_5
    const/16 v0, 0xa

    if-ge p2, v0, :cond_6

    :try_start_6
    const-string v0, "DROP TABLE IF EXISTS DirectOpenLog_"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DirectOpenLog_(Id\t\t\tINTEGER\t\tNOT NULL PRIMARY KEY AUTOINCREMENT,Input\t\tTEXT COLLATE NOCASE\tNOT NULL UNIQUE,Time\t\tINTEGER\t\tNOT NULL DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO DirectOpenLog_ (Id, Input) SELECT Id, Input FROM DirectOpenLog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE DirectOpenLog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DirectOpenLog_ RENAME TO DirectOpenLog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX DirectOpenLog_Time ON DirectOpenLog (Time DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_6
    const/16 v0, 0xb

    if-ge p2, v0, :cond_7

    :try_start_7
    const-string v0, "ALTER TABLE VideoStates ADD COLUMN AudioDecoder TINYINT NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_7
    :goto_7
    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Upgraded video database "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_6
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :catch_7
    move-exception v0

    invoke-static {}, Lql;->몃Ъ()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7
.end method
