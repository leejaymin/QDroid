.class public Lorg/connectbot/util/HostDatabase;
.super Lorg/connectbot/util/RobustSQLiteOpenHelper;
.source "HostDatabase.java"


# static fields
.field public static final ENCODING_DEFAULT:Ljava/lang/String;

.field public static final dbLock:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/connectbot/util/HostDatabase;->ENCODING_DEFAULT:Ljava/lang/String;

    .line 131
    const-string v0, "hosts"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addTableName(Ljava/lang/String;)V

    .line 132
    const-string v0, "portforwards"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addTableName(Ljava/lang/String;)V

    .line 133
    const-string v0, "portforwardshostidindex"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addIndexName(Ljava/lang/String;)V

    .line 134
    const-string v0, "colors"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addTableName(Ljava/lang/String;)V

    .line 135
    const-string v0, "colorsschemeindex"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addIndexName(Ljava/lang/String;)V

    .line 136
    const-string v0, "colorDefaults"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addTableName(Ljava/lang/String;)V

    .line 137
    const-string v0, "colorDefaultsschemeindex"

    invoke-static {v0}, Lorg/connectbot/util/HostDatabase;->addIndexName(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 143
    const-string v0, "hosts"

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/connectbot/util/RobustSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 145
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    return-void
.end method

.method private createHostBeans(Landroid/database/Cursor;)Ljava/util/List;
    .locals 25
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 362
    .local v22, hosts:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/HostBean;>;"
    const-string v23, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 363
    .local v9, COL_ID:I
    const-string v23, "nickname"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 364
    .local v11, COL_NICKNAME:I
    const-string v23, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 365
    .local v14, COL_PROTOCOL:I
    const-string v23, "username"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 366
    .local v19, COL_USERNAME:I
    const-string v23, "hostname"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 367
    .local v8, COL_HOSTNAME:I
    const-string v23, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 368
    .local v12, COL_PORT:I
    const-string v23, "lastconnect"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 369
    .local v10, COL_LASTCONNECT:I
    const-string v23, "color"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 370
    .local v3, COL_COLOR:I
    const-string v23, "usekeys"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 371
    .local v18, COL_USEKEYS:I
    const-string v23, "useauthagent"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 372
    .local v17, COL_USEAUTHAGENT:I
    const-string v23, "postlogin"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 373
    .local v13, COL_POSTLOGIN:I
    const-string v23, "pubkeyid"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 374
    .local v15, COL_PUBKEYID:I
    const-string v23, "wantsession"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 375
    .local v20, COL_WANTSESSION:I
    const-string v23, "delkey"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 376
    .local v5, COL_DELKEY:I
    const-string v23, "fontsize"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 377
    .local v7, COL_FONTSIZE:I
    const-string v23, "compression"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 378
    .local v4, COL_COMPRESSION:I
    const-string v23, "encoding"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 379
    .local v6, COL_ENCODING:I
    const-string v23, "stayconnected"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 382
    .local v16, COL_STAYCONNECTED:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-nez v23, :cond_0

    .line 407
    return-object v22

    .line 383
    :cond_0
    new-instance v21, Lorg/connectbot/bean/HostBean;

    invoke-direct/range {v21 .. v21}, Lorg/connectbot/bean/HostBean;-><init>()V

    .line 385
    .local v21, host:Lorg/connectbot/bean/HostBean;
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/connectbot/bean/HostBean;->setId(J)V

    .line 386
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setProtocol(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setUsername(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setHostname(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setPort(I)V

    .line 391
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/connectbot/bean/HostBean;->setLastConnect(J)V

    .line 392
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setColor(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setUseKeys(Z)V

    .line 394
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setUseAuthAgent(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setPostLogin(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lorg/connectbot/bean/HostBean;->setPubkeyId(J)V

    .line 397
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setWantSession(Z)V

    .line 398
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setDelKey(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setFontSize(I)V

    .line 400
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setCompression(Z)V

    .line 401
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setEncoding(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/HostBean;->setStayConnected(Z)V

    .line 404
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getFirstHostBean(Landroid/database/Cursor;)Lorg/connectbot/bean/HostBean;
    .locals 3
    .parameter "c"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, host:Lorg/connectbot/bean/HostBean;
    invoke-direct {p0, p1}, Lorg/connectbot/util/HostDatabase;->createHostBeans(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 418
    .local v1, hosts:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/HostBean;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 419
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #host:Lorg/connectbot/bean/HostBean;
    check-cast v0, Lorg/connectbot/bean/HostBean;

    .line 421
    .restart local v0       #host:Lorg/connectbot/bean/HostBean;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 423
    return-object v0
.end method


# virtual methods
.method public deleteHost(Lorg/connectbot/bean/HostBean;)V
    .locals 8
    .parameter "host"

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v2, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hosts"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    monitor-exit v2

    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deletePortForward(Lorg/connectbot/bean/PortForwardBean;)V
    .locals 8
    .parameter "pfb"

    .prologue
    .line 648
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_0
    sget-object v2, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 653
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "portforwards"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    monitor-exit v2

    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findHost(Ljava/util/Map;)Lorg/connectbot/bean/HostBean;
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/connectbot/bean/HostBean;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, selection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v15, selectionBuilder:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 440
    .local v12, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 441
    .local v16, selectionValuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 442
    .local v13, n:I
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 458
    .local v5, selectionValues:[Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 459
    const/16 v16, 0x0

    .line 463
    sget-object v17, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v17

    .line 464
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 466
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "hosts"

    const/4 v3, 0x0

    .line 467
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 469
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 466
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 471
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/connectbot/util/HostDatabase;->getFirstHostBean(Landroid/database/Cursor;)Lorg/connectbot/bean/HostBean;

    move-result-object v11

    .line 463
    .local v11, host:Lorg/connectbot/bean/HostBean;
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    return-object v11

    .line 443
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #selectionValues:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #host:Lorg/connectbot/bean/HostBean;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 445
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 448
    add-int/lit8 v14, v13, 0x1

    .end local v13           #n:I
    .local v14, n:I
    if-lez v13, :cond_2

    .line 449
    const-string v2, " AND "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v14

    .end local v14           #n:I
    .restart local v13       #n:I
    goto :goto_0

    .line 463
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #selectionValues:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public findHostById(J)Lorg/connectbot/bean/HostBean;
    .locals 11
    .parameter "hostId"

    .prologue
    .line 484
    sget-object v10, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v10

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hosts"

    const/4 v2, 0x0

    .line 488
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 489
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 487
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 491
    .local v8, c:Landroid/database/Cursor;
    invoke-direct {p0, v8}, Lorg/connectbot/util/HostDatabase;->getFirstHostBean(Landroid/database/Cursor;)Lorg/connectbot/bean/HostBean;

    move-result-object v9

    .line 484
    .local v9, host:Lorg/connectbot/bean/HostBean;
    monitor-exit v10

    .line 494
    return-object v9

    .line 484
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #host:Lorg/connectbot/bean/HostBean;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColorsForScheme(I)[Ljava/lang/Integer;
    .locals 11
    .parameter "scheme"

    .prologue
    .line 658
    sget-object v1, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    invoke-virtual {v1}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    .line 660
    .local v9, colors:[Ljava/lang/Integer;
    sget-object v10, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v10

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 663
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "colors"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 664
    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    .line 665
    const-string v3, "scheme = ?"

    .line 666
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 667
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 663
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 669
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 660
    monitor-exit v10

    .line 676
    return-object v9

    .line 670
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v9, v1

    goto :goto_0

    .line 660
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultColorsForScheme(I)[I
    .locals 11
    .parameter "scheme"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 715
    new-array v9, v1, [I

    const/4 v1, 0x7

    aput v1, v9, v2

    .line 717
    .local v9, colors:[I
    sget-object v10, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v10

    .line 718
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 720
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "colorDefaults"

    .line 721
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bg"

    aput-object v4, v2, v3

    .line 722
    const-string v3, "scheme = ?"

    .line 723
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 724
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 720
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 726
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v9, v1

    .line 728
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v9, v1

    .line 731
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 717
    monitor-exit v10

    .line 734
    return-object v9

    .line 717
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHosts(Z)Ljava/util/List;
    .locals 13
    .parameter "sortColors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p1, :cond_0

    const-string v10, "color"

    .line 342
    .local v10, sortField:Ljava/lang/String;
    :goto_0
    sget-object v11, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v11

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hosts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " ASC"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 347
    .local v8, c:Landroid/database/Cursor;
    invoke-direct {p0, v8}, Lorg/connectbot/util/HostDatabase;->createHostBeans(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    .line 349
    .local v9, hosts:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/HostBean;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 342
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    return-object v9

    .line 339
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #hosts:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/HostBean;>;"
    .end local v10           #sortField:Ljava/lang/String;
    :cond_0
    const-string v10, "nickname"

    goto :goto_0

    .line 342
    .restart local v10       #sortField:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getKnownHosts()Lcom/trilead/ssh2/KnownHosts;
    .locals 23

    .prologue
    .line 524
    new-instance v20, Lcom/trilead/ssh2/KnownHosts;

    invoke-direct/range {v20 .. v20}, Lcom/trilead/ssh2/KnownHosts;-><init>()V

    .line 526
    .local v20, known:Lcom/trilead/ssh2/KnownHosts;
    sget-object v22, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v22

    .line 527
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 528
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "hosts"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "hostname"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 529
    const-string v7, "port"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "hostkeyalgo"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "hostkey"

    aput-object v7, v5, v6

    .line 530
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 528
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 532
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 533
    const-string v4, "hostname"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 534
    .local v13, COL_HOSTNAME:I
    const-string v4, "port"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 535
    .local v14, COL_PORT:I
    const-string v4, "hostkeyalgo"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 536
    .local v12, COL_HOSTKEYALGO:I
    const-string v4, "hostkey"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 538
    .local v11, COL_HOSTKEY:I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 554
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 526
    .end local v11           #COL_HOSTKEY:I
    .end local v12           #COL_HOSTKEYALGO:I
    .end local v13           #COL_HOSTNAME:I
    .end local v14           #COL_PORT:I
    :cond_1
    monitor-exit v22

    .line 558
    return-object v20

    .line 539
    .restart local v11       #COL_HOSTKEY:I
    .restart local v12       #COL_HOSTKEYALGO:I
    .restart local v13       #COL_HOSTNAME:I
    .restart local v14       #COL_PORT:I
    :cond_2
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 540
    .local v19, hostname:Ljava/lang/String;
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 541
    .local v18, hostkeyalgo:Ljava/lang/String;
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 542
    .local v21, port:I
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 544
    .local v17, hostkey:[B
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 548
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "%s:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Lcom/trilead/ssh2/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v16

    .line 550
    .local v16, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ConnectBot.HostDatabase"

    const-string v5, "Problem while adding a known host from database"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 526
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #COL_HOSTKEY:I
    .end local v12           #COL_HOSTKEYALGO:I
    .end local v13           #COL_HOSTNAME:I
    .end local v14           #COL_PORT:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #hostkey:[B
    .end local v18           #hostkeyalgo:Ljava/lang/String;
    .end local v19           #hostname:Ljava/lang/String;
    .end local v21           #port:I
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getPortForwardsForHost(Lorg/connectbot/bean/HostBean;)Ljava/util/List;
    .locals 14
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/connectbot/bean/HostBean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 592
    .local v12, portForwards:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/PortForwardBean;>;"
    sget-object v13, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v13

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 595
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "portforwards"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 596
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sourceport"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 597
    const-string v4, "destaddr"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "destport"

    aput-object v4, v2, v3

    .line 598
    const-string v3, "hostid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 599
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 595
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 601
    .local v11, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    monitor-exit v13

    .line 616
    return-object v12

    .line 602
    :cond_0
    new-instance v1, Lorg/connectbot/bean/PortForwardBean;

    .line 603
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 604
    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v4

    .line 605
    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 606
    const/4 v7, 0x2

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 607
    const/4 v8, 0x3

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 608
    const/4 v9, 0x4

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 609
    const/4 v10, 0x5

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 602
    invoke-direct/range {v1 .. v10}, Lorg/connectbot/bean/PortForwardBean;-><init>(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 610
    .local v1, pfb:Lorg/connectbot/bean/PortForwardBean;
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #pfb:Lorg/connectbot/bean/PortForwardBean;
    .end local v11           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lorg/connectbot/util/RobustSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE hosts (_id INTEGER PRIMARY KEY, nickname TEXT, protocol TEXT DEFAULT \'ssh\', username TEXT, hostname TEXT, port INTEGER, hostkeyalgo TEXT, hostkey BLOB, lastconnect INTEGER, color TEXT, usekeys TEXT, useauthagent TEXT, postlogin TEXT, pubkeyid INTEGER DEFAULT -1, delkey TEXT DEFAULT \'del\', fontsize INTEGER, wantsession TEXT DEFAULT \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string v1, "compression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT DEFAULT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string v1, "encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT DEFAULT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/connectbot/util/HostDatabase;->ENCODING_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string v1, "stayconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v0, "CREATE TABLE portforwards (_id INTEGER PRIMARY KEY, hostid INTEGER, nickname TEXT, type TEXT NOT NULL DEFAULT local, sourceport INTEGER NOT NULL DEFAULT 8080, destaddr TEXT, destport TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "CREATE INDEX portforwardshostidindex ON portforwards (hostid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "CREATE TABLE colors (_id INTEGER PRIMARY KEY, number INTEGER, value INTEGER, scheme INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "CREATE INDEX colorsschemeindex ON colors (scheme);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v0, "CREATE TABLE colorDefaults (scheme INTEGER NOT NULL, fg INTEGER NOT NULL DEFAULT 7, bg INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v0, "CREATE INDEX colorDefaultsschemeindex ON colorDefaults (scheme);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onRobustUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 203
    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 204
    const-string v0, "DROP TABLE IF EXISTS hosts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lorg/connectbot/util/HostDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 263
    :goto_0
    return-void

    .line 209
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    const-string v0, "ALTER TABLE hosts ADD COLUMN pubkeyid INTEGER DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    :pswitch_1
    const-string v0, "CREATE TABLE portforwards (_id INTEGER PRIMARY KEY, hostid INTEGER, nickname TEXT, type TEXT NOT NULL DEFAULT local, sourceport INTEGER NOT NULL DEFAULT 8080, destaddr TEXT, destport INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE hosts ADD COLUMN wantsession TEXT DEFAULT \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE hosts ADD COLUMN compression TEXT DEFAULT \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE hosts ADD COLUMN encoding TEXT DEFAULT \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lorg/connectbot/util/HostDatabase;->ENCODING_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    :pswitch_5
    const-string v0, "ALTER TABLE hosts ADD COLUMN protocol TEXT DEFAULT \'ssh\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    :pswitch_6
    const-string v0, "ALTER TABLE hosts ADD COLUMN delkey TEXT DEFAULT \'del\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    :pswitch_7
    const-string v0, "CREATE INDEX portforwardshostidindex ON portforwards (hostid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "CREATE TABLE colors (_id INTEGER PRIMARY KEY, number INTEGER, value INTEGER, scheme INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v0, "CREATE INDEX colorsschemeindex ON colors (scheme);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    :pswitch_8
    const-string v0, "ALTER TABLE hosts ADD COLUMN useauthagent TEXT DEFAULT \'no\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    :pswitch_9
    const-string v0, "ALTER TABLE hosts ADD COLUMN stayconnected TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    :pswitch_a
    const-string v0, "ALTER TABLE hosts ADD COLUMN fontsize INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    :pswitch_b
    const-string v0, "DROP TABLE colorDefaults"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v0, "CREATE TABLE colorDefaults (scheme INTEGER NOT NULL, fg INTEGER NOT NULL DEFAULT 7, bg INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v0, "CREATE INDEX colorDefaultsschemeindex ON colorDefaults (scheme);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public saveHost(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/bean/HostBean;
    .locals 7
    .parameter "host"

    .prologue
    .line 288
    sget-object v4, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 291
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "hosts"

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 288
    .local v1, id:J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {p1, v1, v2}, Lorg/connectbot/bean/HostBean;->setId(J)V

    .line 296
    return-object p1

    .line 288
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #id:J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public saveKnownHost(Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 8
    .parameter "hostname"
    .parameter "port"
    .parameter "hostkeyalgo"
    .parameter "hostkey"

    .prologue
    .line 505
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 506
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "hostkeyalgo"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v2, "hostkey"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 509
    sget-object v3, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "hosts"

    .line 513
    const-string v4, "hostname = ? AND port = ?"

    .line 514
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 512
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 515
    const-string v2, "ConnectBot.HostDatabase"

    const-string v4, "Finished saving hostkey information for \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    monitor-exit v3

    .line 517
    return-void

    .line 509
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public savePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 12
    .parameter "pfb"

    .prologue
    .line 625
    const/4 v3, 0x0

    .line 627
    .local v3, success:Z
    sget-object v5, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 630
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 631
    const-string v4, "portforwards"

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 632
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Lorg/connectbot/bean/PortForwardBean;->setId(J)V

    .line 633
    const/4 v3, 0x1

    .line 627
    .end local v1           #id:J
    :cond_0
    :goto_0
    monitor-exit v5

    .line 640
    return v3

    .line 635
    :cond_1
    const-string v4, "portforwards"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 636
    const/4 v3, 0x1

    goto :goto_0

    .line 627
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setColorForScheme(III)V
    .locals 7
    .parameter "scheme"
    .parameter "number"
    .parameter "value"

    .prologue
    .line 682
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 684
    .local v3, whereArgs:[Ljava/lang/String;
    sget-object v4, Lorg/connectbot/util/Colors;->defaults:[Ljava/lang/Integer;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 685
    sget-object v5, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 688
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "colors"

    .line 689
    const-string v6, "scheme = ? AND number = ?"

    .line 688
    invoke-virtual {v0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    monitor-exit v5

    .line 708
    :goto_0
    return-void

    .line 685
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 692
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "value"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    sget-object v5, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 696
    :try_start_1
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 698
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "colors"

    .line 699
    const-string v6, "scheme = ? AND number = ?"

    .line 698
    invoke-virtual {v0, v4, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 701
    .local v1, rowsAffected:I
    if-nez v1, :cond_1

    .line 702
    const-string v4, "scheme"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v4, "number"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    const-string v4, "colors"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 695
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowsAffected:I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method public setDefaultColorsForScheme(III)V
    .locals 8
    .parameter "scheme"
    .parameter "fg"
    .parameter "bg"

    .prologue
    .line 744
    const/4 v2, 0x0

    .line 747
    .local v2, schemeWhere:Ljava/lang/String;
    const-string v2, "scheme = ?"

    .line 748
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 750
    .local v4, whereArgs:[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 751
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "fg"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v5, "bg"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    sget-object v6, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 755
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 757
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "colorDefaults"

    invoke-virtual {v0, v5, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 760
    .local v1, rowsAffected:I
    if-nez v1, :cond_0

    .line 761
    const-string v5, "scheme"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string v5, "colorDefaults"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 754
    :cond_0
    monitor-exit v6

    .line 765
    return-void

    .line 754
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #rowsAffected:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setGlobalColor(II)V
    .locals 1
    .parameter "number"
    .parameter "value"

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/connectbot/util/HostDatabase;->setColorForScheme(III)V

    .line 712
    return-void
.end method

.method public stopUsingPubkey(J)V
    .locals 10
    .parameter "pubkeyId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 566
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 578
    :goto_0
    return-void

    .line 568
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 569
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "pubkeyid"

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    sget-object v3, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 574
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "hosts"

    const-string v4, "pubkeyid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 571
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const-string v2, "ConnectBot.HostDatabase"

    const-string v3, "Set all hosts using pubkey id %d to -1"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public touchHost(Lorg/connectbot/bean/HostBean;)V
    .locals 11
    .parameter "host"

    .prologue
    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v1, v4, v6

    .line 272
    .local v1, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "lastconnect"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    sget-object v5, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "hosts"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    monitor-exit v5

    .line 280
    return-void

    .line 275
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateFontSize(Lorg/connectbot/bean/HostBean;)Z
    .locals 11
    .parameter "host"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v1

    .line 304
    .local v1, id:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_0

    .line 318
    :goto_0
    return v4

    .line 307
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v3, updates:Landroid/content/ContentValues;
    const-string v4, "fontsize"

    invoke-virtual {p1}, Lorg/connectbot/bean/HostBean;->getFontSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    sget-object v6, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "hosts"

    const-string v7, "_id = ?"

    .line 314
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 313
    invoke-virtual {v0, v4, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    monitor-exit v6

    move v4, v5

    .line 318
    goto :goto_0

    .line 310
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
