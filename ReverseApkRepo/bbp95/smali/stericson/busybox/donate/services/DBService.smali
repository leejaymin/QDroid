.class public Lstericson/busybox/donate/services/DBService;
.super Ljava/lang/Object;
.source "DBService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstericson/busybox/donate/services/DBService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table applets (applet_id integer primary key autoincrement, name text not null unique, path text not null, usage text not null, symlink text, overwrite integer not null DEFAULT 1, found integer not null DEFAULT 0, recommend integer not null DEFAULT 1, remove integer not null DEFAULT 0, ishardlink integer not null DEFAULT 0, inode text,backup_hardlink text,backup_symlink text,backup_file_path text);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "BusyBox_db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_APPLET_BACKUP_FILE_PATH:Ljava/lang/String; = "backup_file_path"

.field private static final KEY_APPLET_BACKUP_HARDLINK:Ljava/lang/String; = "backup_hardlink"

.field private static final KEY_APPLET_BACKUP_SYMLINK:Ljava/lang/String; = "backup_symlink"

.field private static final KEY_APPLET_FOUND:Ljava/lang/String; = "found"

.field private static final KEY_APPLET_INODE:Ljava/lang/String; = "inode"

.field private static final KEY_APPLET_ISHARDLINK:Ljava/lang/String; = "ishardlink"

.field private static final KEY_APPLET_NAME:Ljava/lang/String; = "name"

.field private static final KEY_APPLET_OVERWRITE:Ljava/lang/String; = "overwrite"

.field private static final KEY_APPLET_PATH:Ljava/lang/String; = "path"

.field private static final KEY_APPLET_RECOMMEND:Ljava/lang/String; = "recommend"

.field private static final KEY_APPLET_REMOVE:Ljava/lang/String; = "remove"

.field private static final KEY_APPLET_ROWID:Ljava/lang/String; = "applet_id"

.field private static final KEY_APPLET_SYMLINK:Ljava/lang/String; = "symlink"

.field private static final KEY_APPLET_USAGE:Ljava/lang/String; = "usage"

.field private static final TBL_APPLETS:Ljava/lang/String; = "applets"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lstericson/busybox/donate/services/DBService$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lstericson/busybox/donate/services/DBService;->context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private deleteDatabase()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lstericson/busybox/donate/services/DBService;->context:Landroid/content/Context;

    const-string v1, "BusyBox_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 113
    new-instance v0, Lstericson/busybox/donate/services/PreferenceService;

    iget-object v1, p0, Lstericson/busybox/donate/services/DBService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lstericson/busybox/donate/services/PreferenceService;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/services/PreferenceService;->setDeleteDatabase(Z)V

    .line 114
    return-void
.end method

.method private open()Lstericson/busybox/donate/services/DBService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lstericson/busybox/donate/services/PreferenceService;

    iget-object v1, p0, Lstericson/busybox/donate/services/DBService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lstericson/busybox/donate/services/PreferenceService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lstericson/busybox/donate/services/PreferenceService;->getDeleteDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->deleteDatabase()V

    .line 95
    :cond_0
    new-instance v0, Lstericson/busybox/donate/services/DBService$DatabaseHelper;

    iget-object v1, p0, Lstericson/busybox/donate/services/DBService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lstericson/busybox/donate/services/DBService$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lstericson/busybox/donate/services/DBService;->dbHelper:Lstericson/busybox/donate/services/DBService$DatabaseHelper;

    .line 96
    iget-object v0, p0, Lstericson/busybox/donate/services/DBService;->dbHelper:Lstericson/busybox/donate/services/DBService$DatabaseHelper;

    invoke-virtual {v0}, Lstericson/busybox/donate/services/DBService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    return-object p0
.end method


# virtual methods
.method public checkForApplet(Ljava/lang/String;)Lstericson/busybox/donate/domain/Item;
    .locals 9
    .parameter "applet"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 182
    :try_start_0
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->open()Lstericson/busybox/donate/services/DBService;

    .line 184
    iget-object v5, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "select * from applets where name= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    new-instance v2, Lstericson/busybox/donate/domain/Item;

    invoke-direct {v2}, Lstericson/busybox/donate/domain/Item;-><init>()V

    .line 190
    .local v2, item:Lstericson/busybox/donate/domain/Item;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setApplet(Ljava/lang/String;)V

    .line 191
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 194
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 195
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 196
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 197
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    :goto_3
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setRemove(Z)V

    .line 198
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_4

    :goto_4
    invoke-virtual {v2, v3}, Lstericson/busybox/donate/domain/Item;->setIshardlink(Z)V

    .line 199
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/domain/Item;->setInode(Ljava/lang/String;)V

    .line 200
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/domain/Item;->setBackupHardlink(Ljava/lang/String;)V

    .line 201
    const/16 v3, 0xc

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/domain/Item;->setBackupSymlink(Ljava/lang/String;)V

    .line 202
    const/16 v3, 0xd

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/domain/Item;->setBackupFilePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 216
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #item:Lstericson/busybox/donate/domain/Item;
    :goto_5
    return-object v2

    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v2       #item:Lstericson/busybox/donate/domain/Item;
    :cond_0
    move v5, v4

    .line 194
    goto :goto_0

    :cond_1
    move v5, v4

    .line 195
    goto :goto_1

    :cond_2
    move v5, v4

    .line 196
    goto :goto_2

    :cond_3
    move v5, v4

    .line 197
    goto :goto_3

    :cond_4
    move v3, v4

    .line 198
    goto :goto_4

    .line 207
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #item:Lstericson/busybox/donate/domain/Item;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 216
    .end local v1           #e:Ljava/lang/Exception;
    :goto_6
    const/4 v2, 0x0

    goto :goto_5

    .line 212
    :catchall_0
    move-exception v3

    .line 213
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 214
    throw v3

    .line 213
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_6
.end method

.method public close()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    iget-object v0, p0, Lstericson/busybox/donate/services/DBService;->dbHelper:Lstericson/busybox/donate/services/DBService$DatabaseHelper;

    invoke-virtual {v0}, Lstericson/busybox/donate/services/DBService$DatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getApplets()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 304
    :try_start_0
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->open()Lstericson/busybox/donate/services/DBService;

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    iget-object v5, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "select * from applets"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 311
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 344
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 347
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    :goto_1
    return-object v3

    .line 315
    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    :cond_0
    :try_start_1
    new-instance v2, Lstericson/busybox/donate/domain/Item;

    invoke-direct {v2}, Lstericson/busybox/donate/domain/Item;-><init>()V

    .line 316
    .local v2, item:Lstericson/busybox/donate/domain/Item;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setApplet(Ljava/lang/String;)V

    .line 317
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    .line 318
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V

    .line 319
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 320
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 321
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 322
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 323
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setRemove(Z)V

    .line 324
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setIshardlink(Z)V

    .line 325
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setInode(Ljava/lang/String;)V

    .line 326
    const/16 v5, 0xb

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setBackupHardlink(Ljava/lang/String;)V

    .line 327
    const/16 v5, 0xc

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setBackupSymlink(Ljava/lang/String;)V

    .line 328
    const/16 v5, 0xd

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lstericson/busybox/donate/domain/Item;->setBackupFilePath(Ljava/lang/String;)V

    .line 330
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 332
    .end local v2           #item:Lstericson/busybox/donate/domain/Item;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .restart local v2       #item:Lstericson/busybox/donate/domain/Item;
    :cond_1
    move v5, v7

    .line 320
    goto :goto_2

    :cond_2
    move v5, v7

    .line 321
    goto :goto_3

    :cond_3
    move v5, v7

    .line 322
    goto :goto_4

    :cond_4
    move v5, v7

    .line 323
    goto :goto_5

    :cond_5
    move v5, v7

    .line 324
    goto :goto_6

    .line 338
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #item:Lstericson/busybox/donate/domain/Item;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    :catch_1
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .end local v1           #e:Ljava/lang/Exception;
    :goto_7
    move-object v3, v4

    .line 347
    goto/16 :goto_1

    .line 343
    :catchall_0
    move-exception v4

    .line 344
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 345
    throw v4

    .line 344
    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    :cond_6
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_7
.end method

.method public insertOrUpdateRow(Lstericson/busybox/donate/domain/Item;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->open()Lstericson/busybox/donate/services/DBService;

    .line 225
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v7, "found"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getFound()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    const-string v7, "remove"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getRemove()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    const-string v7, "recommend"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getRecommend()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    const-string v7, "path"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 231
    const-string v7, "usage"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    const-string v7, "symlink"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "overwrite"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getOverWrite()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    .local v4, value:[Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "applets"

    const-string v9, "name= ?"

    invoke-virtual {v7, v8, v1, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    int-to-long v2, v7

    .line 248
    .local v2, lng:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 296
    .end local v1           #initialValues:Landroid/content/ContentValues;
    .end local v2           #lng:J
    .end local v4           #value:[Ljava/lang/String;
    :goto_0
    return v5

    .line 242
    .restart local v1       #initialValues:Landroid/content/ContentValues;
    .restart local v4       #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Could not Update "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    move v5, v6

    .line 245
    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #lng:J
    :cond_2
    :try_start_3
    const-string v7, "name"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v7, "usage"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->isIshardlink()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    const-string v7, "ishardlink"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->isIshardlink()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 263
    const-string v7, "inode"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getInode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v7, "backup_hardlink"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getBackupHardlink()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_3
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lstericson/busybox/donate/domain/Item;->setBackupFilePath(Ljava/lang/String;)V

    .line 276
    :goto_1
    const-string v7, "backup_file_path"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getBackupFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v7, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "applets"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    .line 280
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_1

    .line 293
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .end local v1           #initialValues:Landroid/content/ContentValues;
    .end local v2           #lng:J
    .end local v4           #value:[Ljava/lang/String;
    :goto_2
    move v5, v6

    .line 296
    goto/16 :goto_0

    .line 271
    .restart local v1       #initialValues:Landroid/content/ContentValues;
    .restart local v2       #lng:J
    .restart local v4       #value:[Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lstericson/busybox/donate/domain/Item;->setBackupFilePath(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lstericson/busybox/donate/domain/Item;->setBackupSymlink(Ljava/lang/String;)V

    .line 273
    const-string v7, "backup_symlink"

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Item;->getBackupSymlink()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 287
    .end local v1           #initialValues:Landroid/content/ContentValues;
    .end local v2           #lng:J
    .end local v4           #value:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 289
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_2

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 293
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 294
    throw v5
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->open()Lstericson/busybox/donate/services/DBService;

    .line 121
    iget-object v2, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from applets"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 128
    const/4 v2, 0x1

    .line 141
    .end local v0           #cur:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 141
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v2

    .line 138
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 139
    throw v2

    .line 138
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_1
.end method

.method public isReady()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lstericson/busybox/donate/services/DBService;->open()Lstericson/busybox/donate/services/DBService;

    .line 150
    iget-object v3, p0, Lstericson/busybox/donate/services/DBService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select count(*) from applets"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 172
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 158
    const/4 v2, 0x1

    .line 175
    .end local v0           #cur:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 172
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_0

    .line 166
    .end local v0           #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_0

    .line 171
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 172
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    .line 173
    throw v2

    .line 172
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lstericson/busybox/donate/services/DBService;->close()V

    goto :goto_0
.end method
