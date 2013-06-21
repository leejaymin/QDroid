.class public final Lff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:Lff;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lff;->a:Landroid/net/Uri;

    .line 48
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lff;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lff;->d:I

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;J)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://sms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    const/4 v0, 0x0

    .line 377
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Lff;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lff;->c:Lff;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lff;

    invoke-direct {v0}, Lff;-><init>()V

    sput-object v0, Lff;->c:Lff;

    .line 304
    :cond_0
    sget-object v0, Lff;->c:Lff;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;Z)Ljava/util/List;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    const/16 v0, 0xc

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "status"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "body"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "subject"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "reply_path_present"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "service_center"

    aput-object v1, v2, v0

    .line 158
    const/4 v1, 0x0

    .line 160
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v10

    .line 161
    const/4 v7, 0x0

    .line 163
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 164
    const/4 v0, 0x0

    move v8, v0

    move-object v6, v1

    move-object v0, v7

    :goto_0
    if-ge v8, v10, :cond_7

    .line 166
    const/16 v1, 0x1f4

    if-le v10, v1, :cond_4

    .line 167
    if-nez v0, :cond_0

    .line 168
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 171
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x1f4

    if-ge v1, v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 207
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 209
    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_1
    :goto_4
    return-object v9

    :cond_2
    move-object v7, v0

    .line 178
    :goto_5
    :try_start_3
    const-string v0, "address"

    invoke-static {v0, v7}, Lfp;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lff;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    :cond_3
    :goto_6
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 185
    new-instance v1, Lfg;

    invoke-direct {v1}, Lfg;-><init>()V

    .line 187
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lfg;->a(J)V

    .line 188
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfg;->a(Ljava/lang/String;)V

    .line 189
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lfg;->b(J)V

    .line 190
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lfg;->c(J)V

    .line 191
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lfg;->a(I)V

    .line 192
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lfg;->c(I)V

    .line 193
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lfg;->b(I)V

    .line 194
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfg;->b(Ljava/lang/String;)V

    .line 195
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfg;->c(Ljava/lang/String;)V

    .line 196
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lfg;->d(I)V

    .line 197
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lfg;->e(I)V

    .line 198
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfg;->d(Ljava/lang/String;)V

    .line 199
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 206
    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3

    :cond_4
    move-object v7, p1

    .line 175
    goto/16 :goto_5

    .line 201
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 202
    const/4 v0, 0x0

    .line 164
    :cond_6
    add-int/lit16 v1, v8, 0x1f4

    move v8, v1

    move-object v6, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 209
    :cond_7
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 209
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_7
    if-eqz v6, :cond_8

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 209
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

    .line 206
    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method private static a(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 89
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 91
    const-string v0, "address"

    invoke-static {p0}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "person"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v0, "date"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v0, "read"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v0, "status"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v0, "type"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v0, "body"

    invoke-static {p0}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "subject"

    invoke-static {p0}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "protocol"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "reply_path_present"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v0, "service_center"

    invoke-static {p0}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Lfg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1}, Lfg;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 69
    invoke-virtual {p1}, Lfg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lfg;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 71
    invoke-virtual {p1}, Lfg;->l()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 72
    invoke-virtual {p1}, Lfg;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    invoke-virtual {p1}, Lfg;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lfp;->c()V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lfg;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    invoke-virtual {p1}, Lfg;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    invoke-virtual {p1}, Lfg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lfg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lfg;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    invoke-virtual {p1}, Lfg;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    invoke-virtual {p1}, Lfg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    move v2, v0

    :goto_0
    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    .line 281
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://sms/conversations/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v1

    .line 290
    const-string v3, "KMS"

    const-string v4, "Error during delete sms"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    invoke-static {v2}, Lfm;->a(I)V

    .line 277
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 295
    :cond_1
    return v0
.end method

.method private b(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 107
    const-string v0, "date"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 109
    if-ne v0, v3, :cond_0

    .line 111
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget v1, p0, Lff;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lff;->d:I

    .line 118
    :goto_0
    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v0, "address"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "body"

    invoke-static {p1}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 116
    :cond_0
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 349
    invoke-virtual {p0, p5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 350
    if-nez p3, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 359
    :goto_0
    if-nez p4, :cond_1

    .line 361
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 370
    :goto_1
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 357
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 366
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/io/FileInputStream;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lff;->d:I

    .line 218
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 219
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 225
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :goto_0
    if-ge v0, v3, :cond_0

    .line 244
    :try_start_1
    invoke-static {v2, v1}, Lff;->a(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lff;->a:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    const-string v1, "KMS"

    const-string v3, "CSMSStorageProvider: SMS file is empty, nothing to restore"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 270
    :goto_1
    return v0

    .line 233
    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 237
    const/4 v0, -0x1

    goto :goto_1

    .line 252
    :cond_0
    :goto_2
    :try_start_2
    invoke-direct {p0, v2, v1}, Lff;->b(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lff;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 257
    :catch_2
    move-exception v0

    .line 259
    :try_start_3
    invoke-virtual {v0}, Ljava/io/EOFException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 268
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 270
    :goto_3
    iget v0, p0, Lff;->d:I

    goto :goto_1

    .line 262
    :catch_3
    move-exception v0

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    throw v0
.end method

.method public final a(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 314
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 315
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 316
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 321
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    .line 323
    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 325
    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 326
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 327
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 328
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 329
    invoke-static/range {p1 .. p6}, Lff;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V

    .line 343
    :goto_0
    return v0

    .line 333
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 334
    invoke-static/range {p1 .. p6}, Lff;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 340
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

    .line 129
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, p3, v1}, Lff;->a(Landroid/content/Context;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 137
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    .line 142
    invoke-virtual {v0}, Lfg;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {v3, v0}, Lff;->a(Ljava/io/DataOutputStream;Lfg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    :goto_2
    move-object v0, v1

    .line 150
    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method
