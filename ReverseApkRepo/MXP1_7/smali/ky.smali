.class public Lky;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

.field private 궗:Lqz;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V
    .locals 2

    iput-object p1, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-direct {p0}, Lec;-><init>()V

    new-instance v0, Lqz;

    invoke-static {}, Lms;->癤욱븳援()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lqz;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lky;->궗:Lqz;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoList;Lky;)V
    .locals 0

    invoke-direct {p0, p1}, Lky;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lky;->癤욱븳援([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lky;->癤욱븳援(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lky;->癤욱븳援([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Ljava/io/File;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    iget-object v0, v2, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2, v1}, Lql;->癤욱븳援(Ljava/util/Map;)V

    iget-object v0, v2, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v2, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Lql;->먯꽌()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_6
    aget-object v3, p1, v0

    iget-object v4, p0, Lky;->궗:Lqz;

    invoke-virtual {v4, v3}, Lqz;->癤욱븳援(Ljava/io/File;)V

    iget-object v3, p0, Lky;->궗:Lqz;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, v2, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v2}, Lql;->먯꽌()V

    throw v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_0
    move-exception v0

    :try_start_9
    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lky;->publishProgress([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Lky;->궗:Lqz;

    invoke-virtual {v0}, Lqz;->癤욱븳援()V

    return-void
.end method

.method protected 癤욱븳援(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧()V

    :cond_0
    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoList;Lky;)V

    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->대쫫()V

    return-void
.end method

.method protected varargs 癤욱븳援([Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lky;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    sget v1, Lnt;->error_database:I

    invoke-static {v0, v1}, Lfn;->癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
