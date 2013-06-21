.class public Lcom/bilont/android/andythefishrobot/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table titles (_id integer primary key autoincrement, isbn text not null, title text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "books"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "titles"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_ISBN:Ljava/lang/String; = "isbn"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "DBAdapter"


# instance fields
.field private DBHelper:Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->context:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->DBHelper:Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->DBHelper:Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;->close()V

    .line 73
    return-void
.end method

.method public deleteTitle(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "titles"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllTitles()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "titles"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 95
    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 96
    const-string v5, "isbn"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 97
    const-string v5, "title"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 94
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 110
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "titles"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 111
    const-string v6, "_id"

    aput-object v6, v3, v4

    .line 112
    const-string v4, "isbn"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    .line 113
    const-string v6, "title"

    aput-object v6, v3, v4

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 110
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 122
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 123
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    :cond_0
    return-object v10
.end method

.method public insertTitle(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "isbn"
    .parameter "title"

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "isbn"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "titles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()Lcom/bilont/android/andythefishrobot/DBAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->DBHelper:Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-object p0
.end method

.method public updateTitle(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "rowId"
    .parameter "isbn"
    .parameter "title"

    .prologue
    .line 132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "isbn"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/bilont/android/andythefishrobot/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "titles"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 135
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
