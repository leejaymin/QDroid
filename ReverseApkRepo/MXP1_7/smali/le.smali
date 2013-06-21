.class Lle;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private ㅼ꽑嫄:Lgb;

.field private 弱밧:Ljava/util/LinkedList;

.field final 癤욱븳援:Landroid/os/Handler;

.field final synthetic 궗:Llc;

.field private 먯꽌:Z

.field private 쇰뒗:Lgo;


# direct methods
.method constructor <init>(Llc;)V
    .locals 2

    iput-object p1, p0, Lle;->궗:Llc;

    const-string v0, "heavy"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lle;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lle;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lle;->癤욱븳援:Landroid/os/Handler;

    return-void
.end method

.method private 癤욱븳援(ILjava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    new-instance v1, Llh;

    invoke-direct {v1, p1, p2, p3}, Llh;-><init>(ILjava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget v6, p1, Landroid/os/Message;->what:I

    new-instance v7, Llg;

    iget-object v1, p0, Lle;->궗:Llc;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v7, v1, v4, v0}, Llg;-><init>(Llc;ILjava/io/File;)V

    iput v6, v7, Llg;->먯꽌:I

    if-eqz v6, :cond_15

    iget-object v1, p0, Lle;->궗:Llc;

    invoke-static {v1}, Llc;->먯꽌(Llc;)Lld;

    move-result-object v1

    iget-object v4, p0, Lle;->쇰뒗:Lgo;

    invoke-interface {v1, v4}, Lld;->癤욱븳援(Lgo;)Lgo;

    move-result-object v1

    iput-object v1, p0, Lle;->쇰뒗:Lgo;

    iget-object v1, p0, Lle;->쇰뒗:Lgo;

    if-nez v1, :cond_7

    move v1, v5

    move v4, v6

    move v6, v5

    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_2

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lle;->먯꽌:Z

    if-eqz v8, :cond_f

    iput-boolean v2, v7, Llg;->몃Ъ:Z

    :cond_0
    :goto_1
    iget-object v4, v7, Llg;->洹:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    iget-boolean v4, v7, Llg;->몃Ъ:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :cond_1
    const-string v4, "NoThumbnail"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget-object v4, p0, Lle;->궗:Llc;

    invoke-static {v4}, Llc;->ㅼ꽑嫄(Llc;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v6, :cond_4

    if-nez v3, :cond_3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :cond_3
    const-string v4, "Read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "VideoTrackCount"

    iget-byte v6, v7, Llg;->弱밧:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v4, "AudioTrackCount"

    iget-byte v6, v7, Llg;->쇰뒗:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v4, "SubtitleTrackCount"

    iget-byte v6, v7, Llg;->대쫫:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v4, "Duration"

    iget v6, v7, Llg;->ㅼ꽑嫄:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "FrameTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const/4 v4, 0x2

    :try_start_0
    invoke-static {v4}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    if-eqz v1, :cond_12

    if-nez v3, :cond_13

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :goto_2
    const-string v3, "NoThumbnail"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4, v0, v1}, Lql;->癤욱븳援(Ljava/io/File;Landroid/content/ContentValues;)I

    move-result v1

    invoke-static {}, Llc;->癤욱븳援()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-static {v3}, Llc;->궗(Z)V

    invoke-virtual {v4}, Lql;->ㅼ꽑嫄()V

    :cond_5
    invoke-static {}, Lgs;->먯꽌()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v7, Llg;->洹:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0, v3}, Lle;->癤욱븳援(ILjava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    return v2

    :cond_7
    :try_start_3
    new-instance v8, Lgb;

    iget-object v1, p0, Lle;->쇰뒗:Lgo;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v8, v1, v4}, Lgb;-><init>(Lgo;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_14

    :try_start_4
    invoke-virtual {v8}, Lgb;->덉쓣()I

    move-result v1

    iput v1, v7, Llg;->ㅼ꽑嫄:I

    iget v1, v7, Llg;->ㅼ꽑嫄:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-gtz v1, :cond_9

    move v4, v5

    :cond_8
    :try_start_5
    invoke-virtual {v8}, Lgb;->癤욱븳援()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v1, v5

    move v5, v4

    move v4, v6

    move v6, v2

    goto/16 :goto_0

    :cond_9
    :try_start_6
    invoke-virtual {v8}, Lgb;->frameTime()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-result v4

    :try_start_7
    invoke-virtual {v8}, Lgb;->getStreamTypes()[I

    move-result-object v9

    array-length v10, v9

    move v1, v5

    :goto_5
    if-lt v1, v10, :cond_b

    :goto_6
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_d

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_a

    iget-byte v1, v7, Llg;->弱밧:B

    if-eqz v1, :cond_8

    :cond_a
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-boolean v1, p0, Lle;->먯꽌:Z

    if-eqz v1, :cond_c

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v8}, Lgb;->癤욱븳援()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    :goto_7
    sget-object v8, Llc;->癤욱븳援:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v5

    move v5, v4

    move v4, v6

    move v6, v2

    goto/16 :goto_0

    :cond_b
    :try_start_a
    aget v11, v9, v1

    packed-switch v11, :pswitch_data_0

    :goto_8
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_1
    iget-byte v11, v7, Llg;->弱밧:B

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, v7, Llg;->弱밧:B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v1

    :goto_9
    :try_start_b
    invoke-virtual {v8}, Lgb;->癤욱븳援()V

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :pswitch_2
    :try_start_c
    iget-byte v11, v7, Llg;->쇰뒗:B

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, v7, Llg;->쇰뒗:B

    goto :goto_8

    :pswitch_3
    iget-byte v11, v7, Llg;->대쫫:B

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, v7, Llg;->대쫫:B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    :cond_c
    :try_start_d
    iput-object v8, p0, Lle;->ㅼ꽑嫄:Lgb;

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    sget-object v1, Llc;->癤욱븳援:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extracting ffmpeg thumb from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lqp;->궗:I

    sget v9, Lqp;->먯꽌:I

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v8, v1, v9, v10, v11}, Lgb;->癤욱븳援(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Llg;->洹:Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v1, 0x0

    :try_start_10
    iput-object v1, p0, Lle;->ㅼ꽑嫄:Lgb;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    iget-object v1, v7, Llg;->洹:Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v1, :cond_e

    and-int/lit8 v6, v6, -0x3

    move v5, v2

    :cond_d
    :goto_a
    :try_start_12
    invoke-virtual {v8}, Lgb;->癤욱븳援()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    move v1, v5

    move v5, v4

    move v4, v6

    move v6, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    throw v1

    :catchall_2
    move-exception v1

    monitor-enter p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v9, 0x0

    :try_start_15
    iput-object v9, p0, Lle;->ㅼ꽑嫄:Lgb;

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catchall_3
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_4
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v1

    :cond_e
    iget-boolean v1, p0, Lle;->먯꽌:Z

    iput-boolean v1, v7, Llg;->몃Ъ:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_a

    :cond_f
    new-instance v8, Ld;

    invoke-direct {v8, v12}, Ld;-><init>(I)V

    :try_start_1b
    sget-object v9, Llc;->癤욱븳援:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Extracting builtin thumb from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ld;->setDataSource(Ljava/lang/String;)V

    sget v9, Lqp;->궗:I

    sget v10, Lqp;->먯꽌:I

    const/4 v11, 0x5

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Ld;->癤욱븳援(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Llg;->洹:Landroid/graphics/Bitmap;

    iget-object v9, v7, Llg;->洹:Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    if-eqz v9, :cond_10

    and-int/lit8 v1, v4, -0x3

    move v1, v2

    :cond_10
    invoke-virtual {v8}, Ld;->release()V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    :try_start_1c
    sget-object v9, Llc;->癤욱븳援:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    invoke-virtual {v8}, Ld;->release()V

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v8}, Ld;->release()V

    throw v0

    :cond_11
    :try_start_1d
    sget-object v3, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    iget-object v5, v7, Llg;->洹:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1, v0, v5}, Loe;->癤욱븳援(ILjava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    :try_start_1e
    invoke-virtual {v4}, Lql;->먯꽌()V

    throw v0
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_2

    :catch_2
    move-exception v0

    sget-object v1, Llc;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_12
    if-eqz v3, :cond_6

    :try_start_1f
    invoke-virtual {v4, v0, v3}, Lql;->癤욱븳援(Ljava/io/File;Landroid/content/ContentValues;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move v4, v5

    goto/16 :goto_7

    :catchall_7
    move-exception v1

    move v4, v5

    goto/16 :goto_9

    :cond_13
    move-object v1, v3

    goto/16 :goto_2

    :cond_14
    move v4, v5

    goto/16 :goto_6

    :cond_15
    move v1, v5

    move v4, v6

    move v6, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public queueIdle()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lle;->쇰뒗:Lgo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lle;->궗:Llc;

    invoke-static {v0}, Llc;->먯꽌(Llc;)Lld;

    move-result-object v0

    iget-object v1, p0, Lle;->쇰뒗:Lgo;

    invoke-interface {v0, v1}, Lld;->궗(Lgo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lle;->쇰뒗:Lgo;

    :cond_0
    iget-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llh;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mxtech/videoplayer/L;->먯꽌()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    sget-object v1, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    iget v2, v0, Llh;->癤욱븳援:I

    iget-object v3, v0, Llh;->궗:Ljava/io/File;

    iget-object v0, v0, Llh;->먯꽌:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Loe;->癤욱븳援(ILjava/io/File;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lle;->癤욱븳援:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lle;->癤욱븳援:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public quit()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lle;->먯꽌:Z

    iget-object v0, p0, Lle;->ㅼ꽑嫄:Lgb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lle;->ㅼ꽑嫄:Lgb;

    invoke-virtual {v0}, Lgb;->紐낆옱()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    iget-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lle;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lle;->쇰뒗:Lgo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lle;->궗:Llc;

    invoke-static {v0}, Llc;->먯꽌(Llc;)Lld;

    move-result-object v0

    iget-object v1, p0, Lle;->쇰뒗:Lgo;

    invoke-interface {v0, v1}, Lld;->궗(Lgo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lle;->쇰뒗:Lgo;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llh;

    sget-object v2, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    iget v3, v0, Llh;->癤욱븳援:I

    iget-object v4, v0, Llh;->궗:Ljava/io/File;

    iget-object v0, v0, Llh;->먯꽌:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v0}, Loe;->癤욱븳援(ILjava/io/File;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
