.class Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;
.super Ljava/lang/Object;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixDatabase"
.end annotation


# instance fields
.field dbCreateQuery:Landroid/database/sqlite/SQLiteStatement;

.field dbCreateVersion:Landroid/database/sqlite/SQLiteStatement;

.field private dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field dbDeleteQuery:Landroid/database/sqlite/SQLiteStatement;

.field dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

.field dbInsertVersion:Landroid/database/sqlite/SQLiteStatement;

.field dbPurgeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private dbSessionId:J

.field private dbTableName:Ljava/lang/String;

.field dbUpdateQuery:Landroid/database/sqlite/SQLiteStatement;

.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "applicationKey"

    .prologue
    const-string v4, "@"

    .line 836
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    .line 795
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbSessionId:J

    .line 809
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mobclix"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 812
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS mobclix (key TEXT, value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbCreateVersion:Landroid/database/sqlite/SQLiteStatement;

    .line 813
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS @ (id INTEGER PRIMARY KEY, message TEXT, session_id INTEGER);"

    const-string v2, "@"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbCreateQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbCreateVersion:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 822
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbCreateQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 830
    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO mobclix (key, value) VALUES (\'db_version\', ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertVersion:Landroid/database/sqlite/SQLiteStatement;

    .line 831
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO @ (message, session_id) VALUES (?, ?)"

    const-string v2, "@"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 832
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE @ SET session_id = ? WHERE id = ?"

    const-string v2, "@"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbUpdateQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 833
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM @ WHERE id <= ? AND id != ?"

    const-string v2, "@"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDeleteQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 834
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM @"

    const-string v2, "@"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbPurgeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 835
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->checkDatabaseVersion()V

    return-void

    .line 824
    :catch_0
    move-exception v0

    goto :goto_1

    .line 816
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method checkDatabaseVersion()V
    .locals 5

    .prologue
    .line 843
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->getDatabaseVersion()I

    move-result v0

    .line 847
    .local v0, version:I
    packed-switch v0, :pswitch_data_0

    .line 863
    .end local v0           #version:I
    :goto_0
    return-void

    .line 852
    .restart local v0       #version:I
    :pswitch_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertVersion:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 853
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertVersion:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 858
    .end local v0           #version:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method deleteMessage(JJ)Z
    .locals 4
    .parameter "primaryId"
    .parameter "sessionId"

    .prologue
    const/4 v3, 0x1

    .line 997
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDeleteQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 998
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDeleteQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDeleteQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1007
    :goto_0
    return v1

    .line 1001
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1005
    .local v0, e:Landroid/database/SQLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDatabaseVersion()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v6, "value"

    .line 866
    const/4 v10, -0x1

    .line 868
    .local v10, version:I
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mobclix"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 869
    const-string v3, "key"

    aput-object v3, v2, v11

    const/4 v3, 0x1

    const-string v5, "value"

    aput-object v6, v2, v3

    const-string v3, "key=\'db_version\'"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 868
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 873
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    .line 894
    :goto_0
    return v0

    .line 879
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 884
    :try_start_0
    const-string v0, "value"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 893
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 894
    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method insertMessage(Ljava/lang/String;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 922
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 925
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return v4

    .line 926
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method insertSession(Ljava/lang/String;)Z
    .locals 5
    .parameter "session"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 902
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbInsertQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbSessionId:J

    .line 906
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbUpdateQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 907
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbUpdateQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 908
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbUpdateQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return v4

    .line 909
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method purge()Z
    .locals 2

    .prologue
    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbPurgeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1016
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1020
    .local v0, e:Landroid/database/SQLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method selectMessage()Ljava/util/HashMap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    const/4 v14, 0x0

    .line 938
    .local v14, count:I
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 939
    .local v17, payload:Lorg/json/JSONObject;
    const-string v18, ""

    .line 940
    .local v18, primaryId:Ljava/lang/String;
    const-string v19, ""

    .line 941
    .local v19, sessionId:Ljava/lang/String;
    const-string v15, ""

    .line 942
    .local v15, jsonString:Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 950
    .local v16, messageRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbTableName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "id"

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 951
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 953
    const/4 v13, 0x1

    .line 954
    .local v13, continueCursor:Z
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v13, 0x0

    .line 955
    :cond_0
    :goto_0
    if-nez v13, :cond_2

    .line 974
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 976
    if-lez v14, :cond_1

    .line 978
    const-string v3, "MESSAGE_KEY"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v3, "MESSAGE_SESSION"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v3, "MESSAGE_JSON"

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v3, "MESSAGE_COUNT"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #continueCursor:Z
    :cond_1
    :goto_1
    return-object v16

    .line 956
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #continueCursor:Z
    :cond_2
    const-string v3, "id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 957
    const-string v3, "message"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 958
    const-string v3, "session_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 965
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "o"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 971
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 972
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    goto :goto_0

    .line 983
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #continueCursor:Z
    :catch_0
    move-exception v3

    goto :goto_1

    .line 966
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #continueCursor:Z
    :catch_1
    move-exception v3

    goto :goto_2
.end method
