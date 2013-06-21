.class public Ljp;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

.field private 궗:Lqz;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)V
    .locals 2

    iput-object p1, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-direct {p0}, Lec;-><init>()V

    new-instance v0, Lqz;

    invoke-static {}, Lms;->癤욱븳援()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lqz;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljp;->궗:Lqz;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;Ljp;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp;-><init>(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Ljp;->癤욱븳援([Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljp;->癤욱븳援(Ljava/io/File;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp;->癤욱븳援([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Ljava/io/File;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp;->궗:Lqz;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lqz;->癤욱븳援(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x2

    :try_start_1
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    iget-object v1, p0, Ljp;->궗:Lqz;

    invoke-virtual {v2, v1}, Lql;->癤욱븳援(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lql;->먯꽌()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x0

    :try_start_4
    aget-object v0, p1, v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v2}, Lql;->먯꽌()V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v1

    :try_start_6
    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Ljp;->publishProgress([Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Ljp;->궗:Lqz;

    invoke-virtual {v0}, Lqz;->癤욱븳援()V

    return-void
.end method

.method protected 癤욱븳援(Ljava/io/File;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;Ljp;)V

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lms;->대떎:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/io/File;

    sget-object v2, Lms;->대떎:[Ljava/io/File;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v0

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScanRootSelector;[Ljava/io/File;)V

    goto :goto_0
.end method

.method protected varargs 癤욱븳援([Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    iget-object v1, p0, Ljp;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScanRootSelector;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScanRootSelector;->癤욱븳援:Lfm;

    sget v2, Lnt;->error_database:I

    invoke-static {v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
