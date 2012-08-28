.class public Lorg/connectbot/util/PubkeyDatabase;
.super Lorg/connectbot/util/RobustSQLiteOpenHelper;
.source "PubkeyDatabase.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "pubkeys"

    invoke-static {v0}, Lorg/connectbot/util/PubkeyDatabase;->addTableName(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    const-string v0, "pubkeys"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/connectbot/util/RobustSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    iput-object p1, p0, Lorg/connectbot/util/PubkeyDatabase;->context:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private createPubkeyBean(Landroid/database/Cursor;)Lorg/connectbot/bean/PubkeyBean;
    .locals 6
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    new-instance v0, Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v0}, Lorg/connectbot/bean/PubkeyBean;-><init>()V

    .line 199
    .local v0, pubkey:Lorg/connectbot/bean/PubkeyBean;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/connectbot/bean/PubkeyBean;->setId(J)V

    .line 200
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 201
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 202
    const-string v1, "private"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V

    .line 203
    const-string v1, "public"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setPublicKey([B)V

    .line 204
    const-string v1, "encrypted"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setEncrypted(Z)V

    .line 205
    const-string v1, "startup"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setStartup(Z)V

    .line 206
    const-string v1, "confirmuse"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lorg/connectbot/bean/PubkeyBean;->setConfirmUse(Z)V

    .line 207
    const-string v1, "lifetime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/connectbot/bean/PubkeyBean;->setLifetime(I)V

    .line 209
    return-object v0

    :cond_0
    move v1, v3

    .line 204
    goto :goto_0

    :cond_1
    move v1, v3

    .line 205
    goto :goto_1

    :cond_2
    move v2, v3

    .line 206
    goto :goto_2
.end method

.method private getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/util/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 132
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 134
    .local v21, pubkeys:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/PubkeyBean;>;"
    const-string v3, "pubkeys"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 136
    .local v19, c:Landroid/database/Cursor;
    if-eqz v19, :cond_0

    .line 137
    const-string v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 138
    .local v12, COL_ID:I
    const-string v3, "nickname"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 139
    .local v14, COL_NICKNAME:I
    const-string v3, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 140
    .local v18, COL_TYPE:I
    const-string v3, "private"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 141
    .local v15, COL_PRIVATE:I
    const-string v3, "public"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 142
    .local v16, COL_PUBLIC:I
    const-string v3, "encrypted"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 143
    .local v11, COL_ENCRYPTED:I
    const-string v3, "startup"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 144
    .local v17, COL_STARTUP:I
    const-string v3, "confirmuse"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 145
    .local v10, COL_CONFIRMUSE:I
    const-string v3, "lifetime"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 147
    .local v13, COL_LIFETIME:I
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v10           #COL_CONFIRMUSE:I
    .end local v11           #COL_ENCRYPTED:I
    .end local v12           #COL_ID:I
    .end local v13           #COL_LIFETIME:I
    .end local v14           #COL_NICKNAME:I
    .end local v15           #COL_PRIVATE:I
    .end local v16           #COL_PUBLIC:I
    .end local v17           #COL_STARTUP:I
    .end local v18           #COL_TYPE:I
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 168
    return-object v21

    .line 148
    .restart local v10       #COL_CONFIRMUSE:I
    .restart local v11       #COL_ENCRYPTED:I
    .restart local v12       #COL_ID:I
    .restart local v13       #COL_LIFETIME:I
    .restart local v14       #COL_NICKNAME:I
    .restart local v15       #COL_PRIVATE:I
    .restart local v16       #COL_PUBLIC:I
    .restart local v17       #COL_STARTUP:I
    .restart local v18       #COL_TYPE:I
    :cond_1
    new-instance v20, Lorg/connectbot/bean/PubkeyBean;

    invoke-direct/range {v20 .. v20}, Lorg/connectbot/bean/PubkeyBean;-><init>()V

    .line 150
    .local v20, pubkey:Lorg/connectbot/bean/PubkeyBean;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lorg/connectbot/bean/PubkeyBean;->setId(J)V

    .line 151
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setType(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V

    .line 154
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setPublicKey([B)V

    .line 155
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setEncrypted(Z)V

    .line 156
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setStartup(Z)V

    .line 157
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setConfirmUse(Z)V

    .line 158
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/PubkeyBean;->setLifetime(I)V

    .line 160
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 155
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 156
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 157
    :cond_4
    const/4 v3, 0x0

    goto :goto_3
.end method


# virtual methods
.method public allPubkeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, v0}, Lorg/connectbot/util/PubkeyDatabase;->getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allValues(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 219
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lorg/connectbot/util/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 220
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "pubkeys"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 221
    const-string v7, "_id ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 220
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 223
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 224
    invoke-interface {v9, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 226
    .local v8, COL:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    .end local v8           #COL:I
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 234
    return-object v10

    .line 227
    .restart local v8       #COL:I
    :cond_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deletePubkey(Lorg/connectbot/bean/PubkeyBean;)V
    .locals 8
    .parameter "pubkey"

    .prologue
    .line 100
    new-instance v1, Lorg/connectbot/util/HostDatabase;

    iget-object v2, p0, Lorg/connectbot/util/PubkeyDatabase;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, hostdb:Lorg/connectbot/util/HostDatabase;
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/connectbot/util/HostDatabase;->stopUsingPubkey(J)V

    .line 102
    invoke-virtual {v1}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 104
    invoke-virtual {p0}, Lorg/connectbot/util/PubkeyDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "pubkeys"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    return-void
.end method

.method public findPubkeyById(J)Lorg/connectbot/bean/PubkeyBean;
    .locals 10
    .parameter "pubkeyId"

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lorg/connectbot/util/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "pubkeys"

    .line 179
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 178
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 182
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 184
    .local v9, pubkey:Lorg/connectbot/bean/PubkeyBean;
    if-eqz v8, :cond_1

    .line 185
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0, v8}, Lorg/connectbot/util/PubkeyDatabase;->createPubkeyBean(Landroid/database/Cursor;)Lorg/connectbot/bean/PubkeyBean;

    move-result-object v9

    .line 188
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    return-object v9
.end method

.method public getAllStartPubkeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "startup = 1 AND encrypted = 0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/connectbot/util/PubkeyDatabase;->getPubkeys(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNickname(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, nickname:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/connectbot/util/PubkeyDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "pubkeys"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    .line 242
    const-string v3, "nickname"

    aput-object v3, v2, v4

    const-string v3, "_id = ?"

    .line 243
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    .line 241
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "nickname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 249
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    return-object v9
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/connectbot/util/RobustSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    const-string v0, "CREATE TABLE pubkeys (_id INTEGER PRIMARY KEY, nickname TEXT, type TEXT, private BLOB, public BLOB, encrypted INTEGER, startup INTEGER, confirmuse INTEGER DEFAULT 0, lifetime INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onRobustUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 87
    packed-switch p2, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const-string v0, "ALTER TABLE pubkeys ADD COLUMN confirmuse INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "ALTER TABLE pubkeys ADD COLUMN lifetime INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public savePubkey(Lorg/connectbot/bean/PubkeyBean;)Lorg/connectbot/bean/PubkeyBean;
    .locals 11
    .parameter "pubkey"

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/connectbot/util/PubkeyDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 311
    .local v3, success:Z
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 313
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 314
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 315
    const-string v5, "pubkeys"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 316
    const/4 v3, 0x1

    .line 319
    :cond_0
    if-nez v3, :cond_1

    .line 320
    const-string v5, "pubkeys"

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 321
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Lorg/connectbot/bean/PubkeyBean;->setId(J)V

    .line 324
    .end local v1           #id:J
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 326
    return-object p1
.end method
