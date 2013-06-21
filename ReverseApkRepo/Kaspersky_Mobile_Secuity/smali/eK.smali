.class public final LeK;
.super LeJ;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, LeJ;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LeK;->a:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LeK;->b:Ljava/util/Vector;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/DataOutput;Ljava/util/Set;)Ljava/util/Set;
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 287
    const/4 v4, 0x0

    .line 288
    const/4 v3, 0x0

    .line 289
    const/4 v2, 0x0

    .line 290
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 291
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    move-object v1, v8

    .line 452
    :goto_0
    return-object v1

    .line 298
    :cond_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v12

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    :goto_1
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "custom_ringtone"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "last_time_contacted"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "notes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "phonetic_name"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "send_to_voicemail"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "starred"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "times_contacted"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "primary_email"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "primary_organization"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "primary_phone"

    aput-object v5, v3, v4

    const-string v4, "people._id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 322
    if-eqz v11, :cond_9

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 330
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 331
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 333
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 335
    const/4 v1, 0x5

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x6

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 337
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 338
    const/16 v1, 0x8

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 339
    const/16 v1, 0x9

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 340
    const/16 v1, 0xa

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 341
    const/16 v1, 0xb

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 343
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 357
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "person"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "isprimary"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "label"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "number"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "number_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "type"

    aput-object v5, v3, v4

    const-string v4, "person=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 368
    if-eqz v10, :cond_b

    .line 371
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 375
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 376
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 377
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 378
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 381
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 386
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 392
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 400
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "person"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "isprimary"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "aux_data"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "data"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "kind"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "label"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v3, v4

    const-string v4, "person=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 412
    if-eqz v2, :cond_d

    .line 415
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 419
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 420
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    .line 421
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 422
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 425
    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 426
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 428
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 434
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v2

    goto/16 :goto_1

    .line 347
    :cond_5
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 444
    :catchall_0
    move-exception v1

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    :goto_7
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 445
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 447
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 449
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 353
    :cond_9
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto/16 :goto_3

    .line 390
    :cond_a
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto/16 :goto_4

    .line 396
    :cond_b
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 432
    :cond_c
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_6

    .line 444
    :catchall_1
    move-exception v1

    move-object v3, v10

    move-object v4, v11

    goto :goto_7

    .line 438
    :cond_d
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v9, v2

    goto/16 :goto_1

    .line 444
    :cond_e
    if-eqz v11, :cond_f

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 445
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_f
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_10

    .line 447
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_10
    if-eqz v9, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 449
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    move-object v1, v8

    .line 452
    goto/16 :goto_0

    .line 444
    :catchall_2
    move-exception v1

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;Ljava/io/DataInputStream;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 44
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 45
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 46
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 58
    invoke-virtual {p2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 60
    const-string v0, "custom_ringtone"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "last_time_contacted"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v0, "name"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "notes"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "phonetic_name"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "send_to_voicemail"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v0, "starred"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v0, "times_contacted"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string v0, "primary_organization"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v0, "primary_email"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v0, "primary_phone"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 92
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 93
    const-string v4, "person"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v0, "isprimary"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v0, "label"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "number"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "number_key"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "type"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 110
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 111
    const-string v4, "person"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v0, "isprimary"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v0, "aux_data"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "data"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "kind"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v0, "label"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "type"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    return-object v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 461
    if-nez p3, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    .line 463
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 464
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 465
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 468
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 469
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 477
    :try_start_0
    invoke-static {p1, v2, p3}, LeK;->a(Landroid/content/Context;Ljava/io/DataOutput;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 486
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/io/RandomAccessFile;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 560
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 561
    invoke-static {p1, p2, p3}, LeK;->a(Landroid/content/Context;Ljava/io/DataOutput;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    .line 562
    :catch_0
    move-exception v1

    .line 564
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/io/FileInputStream;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-static {p1, v1, p3}, LeK;->a(Landroid/content/Context;Ljava/io/DataInputStream;Ljava/util/Vector;)Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 207
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 210
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v2

    .line 203
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x0

    .line 500
    .line 502
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 503
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 506
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 508
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 512
    :goto_1
    if-ge v1, v8, :cond_5

    .line 516
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 517
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 524
    :catch_0
    move-exception v0

    .line 526
    const-string v3, "KMS"

    const-string v4, "Error during delete contacts"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    invoke-static {v1}, Lfm;->a(I)V

    .line 512
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 521
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    :goto_3
    move v4, v2

    .line 532
    :goto_4
    if-ge v4, v8, :cond_3

    move v3, v2

    .line 536
    :goto_5
    :try_start_1
    iget-object v0, p0, LeK;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lfp;->c:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tag = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, LeK;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "number"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, LeK;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 546
    :catch_1
    move-exception v0

    .line 548
    const-string v3, "KMS"

    const-string v5, "Error during delete sim contacts"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    invoke-static {v4}, Lfm;->a(I)V

    .line 532
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_3
    move v1, v2

    .line 553
    :cond_4
    return v1

    :cond_5
    move v1, v2

    goto :goto_3
.end method
