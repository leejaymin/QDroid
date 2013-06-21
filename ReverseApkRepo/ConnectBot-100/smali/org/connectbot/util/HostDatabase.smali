.class public Lorg/connectbot/util/HostDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HostDatabase.java"


# static fields
.field public static final COLOR_BLUE:Ljava/lang/String; = "blue"

.field public static final COLOR_GRAY:Ljava/lang/String; = "gray"

.field public static final COLOR_GREEN:Ljava/lang/String; = "green"

.field public static final COLOR_RED:Ljava/lang/String; = "red"

.field public static final DB_NAME:Ljava/lang/String; = "hosts"

.field public static final DB_VERSION:I = 0x8

.field public static final FIELD_HOST_COLOR:Ljava/lang/String; = "color"

.field public static final FIELD_HOST_HOSTKEY:Ljava/lang/String; = "hostkey"

.field public static final FIELD_HOST_HOSTNAME:Ljava/lang/String; = "hostname"

.field public static final FIELD_HOST_LASTCONNECT:Ljava/lang/String; = "lastconnect"

.field public static final FIELD_HOST_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final FIELD_HOST_PORT:Ljava/lang/String; = "port"

.field public static final FIELD_HOST_USEKEYS:Ljava/lang/String; = "usekeys"

.field public static final FIELD_HOST_USERNAME:Ljava/lang/String; = "username"

.field public static final FIELD_KEY_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_KEY_PRIVATE:Ljava/lang/String; = "private"

.field public static final TABLE_HOSTS:Ljava/lang/String; = "hosts"

.field public static final TABLE_PRIVKEYS:Ljava/lang/String; = "keys"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const-string v0, "hosts"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public allHosts(Z)Landroid/database/Cursor;
    .locals 9
    .parameter "sortColors"

    .prologue
    const/4 v3, 0x0

    const-string v7, "nickname"

    const-string v6, "color"

    .line 117
    if-eqz p1, :cond_0

    const-string v1, "color"

    move-object v8, v6

    .line 119
    .local v8, sortField:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hosts"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "nickname"

    aput-object v7, v2, v4

    const/4 v4, 0x2

    .line 121
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "hostname"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "port"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 122
    const-string v5, "hostkey"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "lastconnect"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "color"

    aput-object v6, v2, v4

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 120
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 117
    .end local v8           #sortField:Ljava/lang/String;
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, "nickname"

    move-object v8, v7

    goto :goto_0
.end method

.method public createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "nickname"
    .parameter "username"
    .parameter "hostname"
    .parameter "port"
    .parameter "color"

    .prologue
    .line 92
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 94
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "hostname"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "port"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "lastconnect"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "usekeys"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p6, :cond_1

    .line 102
    const-string v1, "color"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    const-string v1, "hosts"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public deleteHost(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hosts"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x16

    const-string v7, "blue"

    .line 44
    const-string v0, "CREATE TABLE hosts (_id INTEGER PRIMARY KEY, nickname TEXT, username TEXT, hostname TEXT, port INTEGER, hostkey TEXT, lastconnect INTEGER, color TEXT, usekeys TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE TABLE keys (_id INTEGER PRIMARY KEY, name TEXT, private TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v2, "connectbot@bravo"

    const-string v3, "connectbot"

    const-string v4, "192.168.254.230"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/HostDatabase;->createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 61
    const-string v2, "root@google.com"

    const-string v3, "root"

    const-string v4, "google.com"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/HostDatabase;->createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 62
    const-string v2, "cron@server.example.com"

    const-string v3, "cron"

    const-string v4, "server.example.com"

    const-string v0, "blue"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/HostDatabase;->createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 63
    const-string v2, "backup@example.net"

    const-string v3, "backup"

    const-string v4, "example.net"

    const-string v0, "blue"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/HostDatabase;->createHost(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    .line 65
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 69
    const-string v0, "DROP TABLE IF EXISTS hosts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "DROP TABLE IF EXISTS keys"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/connectbot/util/HostDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    return-void
.end method

.method public touchHost(Ljava/lang/String;)V
    .locals 10
    .parameter "nickname"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "touchHost(nickname=%s)"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lorg/connectbot/util/HostDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v1, v4, v6

    .line 81
    .local v1, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "lastconnect"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v4, "hosts"

    const-string v5, "nickname = ?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v8

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    return-void
.end method
