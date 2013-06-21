.class public LeE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LeE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/FileInputStream;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 212
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 213
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 225
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    move v4, v0

    .line 245
    :goto_0
    if-ge v3, v7, :cond_0

    .line 247
    :try_start_1
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 248
    const-string v1, "name"

    invoke-static {v6}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "numberlabel"

    invoke-static {v6}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "numbertype"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "date"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "type"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v1, "duration"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v1, "new"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v1, "number"

    invoke-static {v6}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 258
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 265
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 245
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 233
    invoke-static {v6}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 321
    :goto_2
    return v0

    .line 236
    :catch_1
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    invoke-static {v6}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 240
    const/4 v0, -0x1

    goto :goto_2

    .line 260
    :catch_2
    move-exception v1

    .line 262
    :try_start_3
    const-string v8, "KMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore call log for number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "number"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 308
    :catch_3
    move-exception v1

    .line 310
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    invoke-static {v6}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 321
    :goto_4
    add-int/2addr v0, v4

    goto :goto_2

    .line 275
    :cond_0
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 276
    invoke-static {v6}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 278
    const-string v1, "date"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v1, "duration"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v1, "new"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v1, "number"

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    .line 283
    if-eq v1, v11, :cond_1

    if-ne v1, v2, :cond_2

    .line 286
    :cond_1
    add-int/lit8 v1, v0, 0x1

    move v0, v2

    .line 288
    :goto_6
    :try_start_6
    const-string v7, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v0, "name"

    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v7

    invoke-virtual {v7, p0, v3}, Lgr;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 292
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move v0, v1

    .line 298
    goto :goto_5

    .line 294
    :catch_4
    move-exception v0

    .line 296
    :try_start_8
    const-string v7, "KMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to restore call log for number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move v0, v1

    .line 299
    goto :goto_5

    .line 301
    :catch_5
    move-exception v1

    .line 314
    :goto_7
    invoke-static {v6}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lfp;->a(Ljava/io/InputStream;)Z

    throw v0

    .line 308
    :catch_6
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_3

    .line 301
    :catch_7
    move-exception v0

    move v0, v1

    goto :goto_7

    :cond_2
    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_6
.end method

.method public static declared-synchronized a()LeE;
    .locals 3

    .prologue
    .line 357
    const-class v1, LeE;

    monitor-enter v1

    :try_start_0
    sget-object v0, LeE;->a:LeE;

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 360
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 362
    new-instance v0, LeE;

    invoke-direct {v0}, LeE;-><init>()V

    sput-object v0, LeE;->a:LeE;

    .line 369
    :cond_0
    :goto_0
    sget-object v0, LeE;->a:LeE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 366
    :cond_1
    :try_start_1
    new-instance v0, LeF;

    invoke-direct {v0}, LeF;-><init>()V

    sput-object v0, LeE;->a:LeE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Landroid/content/Context;Ljava/util/Set;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 352
    :goto_0
    return v0

    :cond_1
    move v3, v2

    .line 334
    :goto_1
    if-ge v3, p2, :cond_3

    .line 336
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 339
    :goto_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 345
    :catch_0
    move-exception v0

    .line 347
    const-string v4, "KMS"

    const-string v5, "Error during call logs delete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    invoke-static {v3}, Lfm;->a(I)V

    .line 334
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 343
    goto :goto_0

    :cond_3
    move v0, v2

    .line 352
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v10

    .line 89
    const/4 v7, 0x0

    .line 91
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 92
    const/4 v0, 0x0

    move v8, v0

    move-object v6, v1

    move-object v0, v7

    :goto_0
    if-ge v8, v10, :cond_6

    .line 94
    const/16 v1, 0x1f4

    if-le v10, v1, :cond_3

    .line 95
    if-nez v0, :cond_0

    .line 96
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 142
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 144
    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    :goto_4
    return-object v9

    :cond_2
    move-object v7, v0

    .line 107
    :goto_5
    :try_start_3
    const-string v0, "number"

    invoke-static {v0, v7}, Lfp;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "numberlabel"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "numbertype"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "new"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "number"

    aput-object v5, v2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    :goto_6
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, LeG;

    invoke-direct {v1}, LeG;-><init>()V

    .line 125
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LeG;->a(J)V

    .line 126
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LeG;->a(Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LeG;->b(Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, LeG;->a(I)V

    .line 129
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LeG;->b(J)V

    .line 130
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, LeG;->b(I)V

    .line 131
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LeG;->c(J)V

    .line 132
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, LeG;->c(I)V

    .line 133
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LeG;->c(Ljava/lang/String;)V

    .line 134
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 141
    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3

    :cond_3
    move-object v7, p1

    .line 104
    goto/16 :goto_5

    .line 136
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    const/4 v0, 0x0

    .line 92
    :cond_5
    add-int/lit16 v1, v8, 0x1f4

    move v8, v1

    move-object v6, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 144
    :cond_6
    if-eqz v6, :cond_1

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 144
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_7
    if-eqz v6, :cond_7

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 144
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v6, v1

    goto :goto_7

    .line 141
    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method private static b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 153
    if-nez p3, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 160
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/RandomAccessFile;JLjava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 172
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 173
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 174
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 179
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    .line 181
    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 183
    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 185
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 186
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    invoke-static {p1, p2, p3, p4, p5}, LeE;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V

    .line 202
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 192
    invoke-static {p1, p2, p3, p4, p5}, LeE;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "KMS"

    const-string v2, "Error appending call logs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-static {p1, p3}, LeE;->b(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeG;

    .line 61
    invoke-virtual {v0}, LeG;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v0}, LeG;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, LeG;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, LeG;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    invoke-virtual {v0}, LeG;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 66
    invoke-virtual {v0}, LeG;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 67
    invoke-virtual {v0}, LeG;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 68
    invoke-virtual {v0}, LeG;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 69
    invoke-virtual {v0}, LeG;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, LeG;->f()I

    move-result v0

    .line 71
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 73
    invoke-static {}, Lfp;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    :goto_2
    move-object v0, v1

    .line 81
    goto/16 :goto_0

    .line 79
    :cond_3
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x5

    invoke-static {p1, p2, v0}, LeE;->a(Landroid/content/Context;Ljava/util/Set;I)Z

    move-result v0

    return v0
.end method
