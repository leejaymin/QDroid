.class public Lcom/superdroid/util/ContactPreSDK5Helper;
.super Lcom/superdroid/util/ContactHelper;
.source "ContactPreSDK5Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/superdroid/util/ContactHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public addContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 199
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v3, personValues:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 202
    invoke-static {v4, v3}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 205
    .local v2, newPersonUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 206
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v1, mobileValues:Landroid/content/ContentValues;
    const-string v4, "phones"

    .line 207
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    .local v0, mobileUri:Landroid/net/Uri;
    const-string v4, "number"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 214
    .end local v0           #mobileUri:Landroid/net/Uri;
    .end local v1           #mobileValues:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public deleteContact(Landroid/content/Context;J)V
    .locals 6
    .parameter "ctx"
    .parameter "peopleId"

    .prologue
    .line 191
    const-string v0, "_id=?"

    .line 192
    .local v0, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 193
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 194
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 192
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public deleteNumberOfContact(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 11
    .parameter "ctx"
    .parameter "number"
    .parameter "peopleId"

    .prologue
    .line 169
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    .local v6, contactBaseUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/phones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "number=?"

    .line 173
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 175
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 176
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 177
    .local v9, phoneId:J
    if-eqz v7, :cond_0

    .line 178
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "/phones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 186
    .local v8, deleteUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public fetchPeopleCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "ctx"
    .parameter "keyword"

    .prologue
    .line 146
    const-string v3, "primary_phone IS NOT NULL"

    .line 148
    .local v3, selection:Ljava/lang/String;
    invoke-static {p2}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND display_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_0
    const-string v5, "display_name  COLLATE LOCALIZED ASC"

    .line 156
    .local v5, order:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 157
    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 158
    const-string v1, "number"

    aput-object v1, v2, v0

    .line 160
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    const/4 v4, 0x0

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    return-object v6
.end method

.method public fetchPeoplePhone(Landroid/content/Context;JI)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "ctx"
    .parameter "id"
    .parameter "placeholderImageResource"

    .prologue
    .line 21
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 23
    .local v0, peopleUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, p4, v1}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public fetchPeoplePhone(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "ctx"
    .parameter "cursor"
    .parameter "placeholderImageResource"

    .prologue
    .line 29
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 30
    .local v0, id:J
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/superdroid/util/ContactPreSDK5Helper;->fetchPeoplePhone(Landroid/content/Context;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/superdroid/util/ContactInfo;
    .locals 15
    .parameter "context"
    .parameter "number"

    .prologue
    .line 74
    const-string v6, "PHONE_NUMBERS_EQUAL(number,?)"

    .line 77
    .local v6, CALLER_ID_SELECTION:Ljava/lang/String;
    const/4 v12, 0x0

    .line 78
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 79
    .local v13, info:Lcom/superdroid/util/ContactInfo;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 80
    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "label"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 82
    .local v2, phones_project:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 83
    .local v10, PERSON_ID_COLUMN_INDEX:I
    const/4 v9, 0x1

    .line 84
    .local v9, NAME_COLUMN_INDEX:I
    const/4 v11, 0x2

    .line 85
    .local v11, PHONE_TYPE_COLUMN_INDEX:I
    const/4 v7, 0x3

    .line 86
    .local v7, LABEL_COLUMN_INDEX:I
    const/4 v8, 0x4

    .line 88
    .local v8, MATCHED_NUMBER_COLUMN_INDEX:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 90
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 88
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 91
    if-eqz v12, :cond_0

    .line 92
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v14, Lcom/superdroid/util/ContactInfo;

    invoke-direct {v14}, Lcom/superdroid/util/ContactInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v13           #info:Lcom/superdroid/util/ContactInfo;
    .local v14, info:Lcom/superdroid/util/ContactInfo;
    :try_start_1
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v14, Lcom/superdroid/util/ContactInfo;->personId:J

    .line 95
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/superdroid/util/ContactInfo;->name:Ljava/lang/String;

    .line 96
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/superdroid/util/ContactInfo;->type:I

    .line 97
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/superdroid/util/ContactInfo;->label:Ljava/lang/String;

    .line 98
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/superdroid/util/ContactInfo;->number:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-object v0, v14, Lcom/superdroid/util/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v14

    .line 106
    .end local v14           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v13       #info:Lcom/superdroid/util/ContactInfo;
    :cond_0
    if-eqz v12, :cond_1

    .line 107
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    return-object v13

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    :goto_0
    if-eqz v12, :cond_2

    .line 107
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_2
    throw v0

    .line 105
    .end local v13           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v14       #info:Lcom/superdroid/util/ContactInfo;
    :catchall_1
    move-exception v0

    move-object v13, v14

    .end local v14           #info:Lcom/superdroid/util/ContactInfo;
    .restart local v13       #info:Lcom/superdroid/util/ContactInfo;
    goto :goto_0
.end method

.method public getNumbers(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 115
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v9, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "person=?"

    .line 117
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 123
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v2, v4

    .line 124
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    if-eqz v6, :cond_0

    .line 126
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 132
    :cond_0
    if-eqz v6, :cond_1

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 138
    .local v10, ret:[Ljava/lang/String;
    const/4 v7, 0x0

    .end local p0
    .local v7, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_4

    .line 141
    return-object v10

    .line 127
    .end local v7           #i:I
    .end local v10           #ret:[Ljava/lang/String;
    .restart local p0
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, number:Ljava/lang/String;
    invoke-static {v8}, Lcom/superdroid/util/SuperUtil;->processCellphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v8           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 132
    if-eqz v6, :cond_3

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_3
    throw v0

    .line 139
    .end local p0
    .restart local v7       #i:I
    .restart local v10       #ret:[Ljava/lang/String;
    :cond_4
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v10, v7

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 9
    .parameter "contentResolver"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 35
    const-string v6, "PHONE_NUMBERS_EQUAL(number,?)"

    .line 38
    .local v6, CALLER_ID_SELECTION:Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?)"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v8

    move-object v0, p1

    move-object v5, v2

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 43
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 48
    :goto_0
    return v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 46
    throw v0

    :cond_0
    move v0, v8

    .line 48
    goto :goto_0
.end method
