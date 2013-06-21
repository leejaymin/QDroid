.class public Lcom/superdroid/util/ContactSDK5Helper;
.super Lcom/superdroid/util/ContactHelper;
.source "ContactSDK5Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/superdroid/util/ContactHelper;-><init>()V

    return-void
.end method

.method public static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "rowId"

    .prologue
    .line 24
    const/4 v8, 0x0

    .line 25
    .local v8, contactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 27
    .local v6, contactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 31
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 35
    :cond_0
    if-eqz v8, :cond_1

    .line 36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_1
    return-wide v6

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    if-eqz v8, :cond_2

    .line 36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_2
    throw v0
.end method


# virtual methods
.method public addContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "ctx"
    .parameter "name"
    .parameter "number"

    .prologue
    const-string v8, "mimetype"

    const-string v7, "data1"

    .line 254
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "display_name"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 258
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 260
    .local v3, rawContactUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 261
    .local v1, rawContactId:J
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 262
    const-string v5, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v5, "mimetype"

    .line 264
    const-string v5, "vnd.android.cursor.item/name"

    .line 263
    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v5, "data1"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 268
    if-eqz v3, :cond_0

    .line 270
    const-string v5, "data"

    .line 269
    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    .local v0, mobileUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 272
    const-string v5, "data2"

    .line 273
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v5, "is_super_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v5, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v5, "data1"

    invoke-virtual {v4, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 279
    .end local v0           #mobileUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public deleteContact(Landroid/content/Context;J)V
    .locals 12
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/superdroid/util/ContactSDK5Helper;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v7

    .line 212
    .local v7, contactId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 214
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 215
    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 217
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 222
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v11, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 223
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 225
    const-string v1, "_id=?"

    .line 226
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 223
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    .end local v11           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 232
    .local v10, e:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v10           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 235
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    move-object v10, v0

    .line 237
    .local v10, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v10           #e:Landroid/content/OperationApplicationException;
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 243
    .local v9, contactUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNumberOfContact(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .parameter "ctx"
    .parameter "number"
    .parameter "peopleId"

    .prologue
    .line 250
    return-void
.end method

.method public fetchPeopleCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "ctx"
    .parameter "keyword"

    .prologue
    .line 188
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 191
    .local v3, selection:Ljava/lang/String;
    invoke-static {p2}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND display_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    :cond_0
    const-string v5, "display_name COLLATE LOCALIZED ASC"

    .line 198
    .local v5, order:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 199
    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 200
    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 201
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 201
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    return-object v6
.end method

.method public fetchPeoplePhone(Landroid/content/Context;JI)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "ctx"
    .parameter "rowId"
    .parameter "placeholderImageResource"

    .prologue
    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/superdroid/util/ContactSDK5Helper;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v9

    .line 47
    .local v9, id:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-eqz v0, :cond_3

    .line 50
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 52
    .local v6, contactUri:Landroid/net/Uri;
    const-string v0, "photo"

    .line 51
    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    .line 58
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 59
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 61
    .local v8, data:[B
    if-eqz v8, :cond_2

    .line 62
    const/4 v0, 0x0

    .line 63
    array-length v1, v8

    .end local v1           #photoUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 62
    invoke-static {v8, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 67
    if-eqz v7, :cond_0

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 72
    .end local v6           #contactUri:Landroid/net/Uri;
    .end local v8           #data:[B
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    if-eqz v7, :cond_1

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_1
    throw v0

    .line 67
    .restart local v1       #photoUri:Landroid/net/Uri;
    .restart local v6       #contactUri:Landroid/net/Uri;
    :cond_2
    if-eqz v7, :cond_3

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 72
    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v6           #contactUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 72
    invoke-static {v0, p4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fetchPeoplePhone(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "ctx"
    .parameter "cursor"
    .parameter "placeholderImageResource"

    .prologue
    .line 80
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 81
    .local v0, id:J
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/superdroid/util/ContactSDK5Helper;->fetchPeoplePhone(Landroid/content/Context;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/superdroid/util/ContactInfo;
    .locals 14
    .parameter "context"
    .parameter "number"

    .prologue
    .line 106
    const/4 v11, 0x0

    .line 107
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 108
    .local v12, info:Lcom/superdroid/util/ContactInfo;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 109
    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 110
    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 111
    const-string v1, "data3"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 112
    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 114
    .local v2, phones_project:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 115
    .local v9, PERSON_ID_COLUMN_INDEX:I
    const/4 v8, 0x1

    .line 116
    .local v8, NAME_COLUMN_INDEX:I
    const/4 v10, 0x2

    .line 117
    .local v10, PHONE_TYPE_COLUMN_INDEX:I
    const/4 v6, 0x3

    .line 118
    .local v6, LABEL_COLUMN_INDEX:I
    const/4 v7, 0x4

    .line 120
    .local v7, MATCHED_NUMBER_COLUMN_INDEX:I
    :try_start_0
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND PHONE_NUMBERS_EQUAL(data1,?)"

    .line 124
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 126
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 127
    if-eqz v11, :cond_0

    .line 128
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v13, Lcom/superdroid/util/ContactInfo;

    invoke-direct {v13}, Lcom/superdroid/util/ContactInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v12           #info:Lcom/superdroid/util/ContactInfo;
    .local v13, info:Lcom/superdroid/util/ContactInfo;
    :try_start_1
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v13, Lcom/superdroid/util/ContactInfo;->personId:J

    .line 131
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/superdroid/util/ContactInfo;->name:Ljava/lang/String;

    .line 132
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/superdroid/util/ContactInfo;->type:I

    .line 133
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/superdroid/util/ContactInfo;->label:Ljava/lang/String;

    .line 134
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/superdroid/util/ContactInfo;->number:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/superdroid/util/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v13

    .line 142
    .end local v13           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v12       #info:Lcom/superdroid/util/ContactInfo;
    :cond_0
    if-eqz v11, :cond_1

    .line 143
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_1
    return-object v12

    .line 141
    .end local v3           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 142
    :goto_0
    if-eqz v11, :cond_2

    .line 143
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    throw v0

    .line 141
    .end local v12           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v13       #info:Lcom/superdroid/util/ContactInfo;
    :catchall_1
    move-exception v0

    move-object v12, v13

    .end local v13           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v12       #info:Lcom/superdroid/util/ContactInfo;
    goto :goto_0
.end method

.method public getNumbers(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 152
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v9, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 158
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 161
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v4

    .line 165
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_0

    .line 167
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 173
    :cond_0
    if-eqz v6, :cond_1

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 179
    .local v10, ret:[Ljava/lang/String;
    const/4 v7, 0x0

    .end local p0
    .local v7, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_4

    .line 182
    return-object v10

    .line 168
    .end local v7           #i:I
    .end local v10           #ret:[Ljava/lang/String;
    .restart local p0
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, number:Ljava/lang/String;
    invoke-static {v8}, Lcom/superdroid/util/SuperUtil;->processCellphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v8           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 173
    if-eqz v6, :cond_3

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_3
    throw v0

    .line 180
    .end local p0
    .restart local v7       #i:I
    .restart local v10       #ret:[Ljava/lang/String;
    :cond_4
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v10, v7

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 8
    .parameter "contentResolver"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 86
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND PHONE_NUMBERS_EQUAL(data1,?)"

    .line 91
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 92
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v5, v2

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    :goto_0
    return v0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 99
    throw v0

    :cond_0
    move v0, v7

    .line 101
    goto :goto_0
.end method
