.class public Lorg/chemlab/dealdroidapp/Database;
.super Ljava/lang/Object;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;,
        Lorg/chemlab/dealdroidapp/Database$Field;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dealdroid.db"

.field private static final STATE_TABLE:Ljava/lang/String; = "dealdroid_state"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->LOG_TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;

    invoke-direct {v0, p1}, Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->dbHelper:Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;

    .line 73
    return-void
.end method

.method private checkDatabaseOpen()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database not open, call open() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method private isItemNew(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Z
    .locals 12
    .parameter "site"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 192
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 193
    const/4 v9, 0x0

    .line 194
    .local v9, ret:Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dealdroid_state"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v3}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    sget-object v3, Lorg/chemlab/dealdroidapp/Database$Field;->TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v3}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x2

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 198
    const/4 v9, 0x1

    .line 209
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 212
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    return v9

    .line 200
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v9, v10

    .line 202
    :goto_1
    if-eqz v9, :cond_4

    .line 203
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New item found!  Old: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], New: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 210
    throw v0

    :cond_3
    move v9, v11

    .line 201
    goto :goto_1

    .line 204
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/chemlab/dealdroidapp/Database;->updateExpiration(Lorg/chemlab/dealdroidapp/Site;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private updateExpiration(Lorg/chemlab/dealdroidapp/Site;J)V
    .locals 7
    .parameter "site"
    .parameter "expiration"

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v0, v:Landroid/content/ContentValues;
    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dealdroid_state"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/Database;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated expiration for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 87
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->dbHelper:Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;

    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;->close()V

    .line 88
    return-void
.end method

.method public delete(Lorg/chemlab/dealdroidapp/Site;)Z
    .locals 7
    .parameter "site"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 107
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dealdroid_state"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentItem(Lorg/chemlab/dealdroidapp/Site;)Lorg/chemlab/dealdroidapp/Item;
    .locals 14
    .parameter "site"

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 116
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dealdroid_state"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->SALE_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 117
    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->SAVINGS:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 118
    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->URL:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->IMAGE_URL:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->TIMESTAMP:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 116
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 124
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 125
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    new-instance v0, Lorg/chemlab/dealdroidapp/Item;

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    const/4 v7, 0x7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .line 128
    :goto_0
    const/16 v8, 0x8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    .line 129
    :goto_1
    const/16 v9, 0x9

    invoke-interface {v11, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    .line 130
    :goto_2
    const/16 v10, 0xa

    invoke-interface {v11, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    .line 126
    :goto_3
    invoke-direct/range {v0 .. v10}, Lorg/chemlab/dealdroidapp/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .local v0, item:Lorg/chemlab/dealdroidapp/Item;
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 137
    return-object v0

    .line 127
    .end local v0           #item:Lorg/chemlab/dealdroidapp/Item;
    :cond_0
    const/4 v7, 0x7

    :try_start_1
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 128
    :cond_1
    const/16 v8, 0x8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    .line 129
    :cond_2
    new-instance v9, Ljava/util/Date;

    const/16 v10, 0x9

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 136
    throw v1

    .line 130
    :cond_3
    :try_start_2
    new-instance v10, Ljava/util/Date;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 132
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #item:Lorg/chemlab/dealdroidapp/Item;
    goto :goto_4
.end method

.method public open()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->dbHelper:Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;

    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    return-void
.end method

.method public updateStateIfNotCurrent(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Z
    .locals 5
    .parameter "site"
    .parameter "item"

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Database;->checkDatabaseOpen()V

    .line 149
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, ret:Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/chemlab/dealdroidapp/Database;->isItemNew(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p0, p1}, Lorg/chemlab/dealdroidapp/Database;->delete(Lorg/chemlab/dealdroidapp/Site;)Z

    .line 156
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v1, v:Landroid/content/ContentValues;
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getRetailPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->SALE_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->SAVINGS:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSavings()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->URL:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getLink()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->TIMESTAMP:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getImageLink()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->IMAGE_URL:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getImageLink()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database$Field;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dealdroid_state"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 176
    const/4 v0, 0x1

    .line 178
    .end local v1           #v:Landroid/content/ContentValues;
    :cond_2
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    return v0

    .line 180
    :catchall_0
    move-exception v2

    .line 181
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    throw v2
.end method
