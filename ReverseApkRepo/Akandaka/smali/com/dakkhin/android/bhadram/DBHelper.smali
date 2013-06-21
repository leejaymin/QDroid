.class public Lcom/dakkhin/android/bhadram/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field public static final COL_DESC:Ljava/lang/String; = "DESC"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_INFO:Ljava/lang/String; = "INFO"

.field public static final COL_NAME:Ljava/lang/String; = "NAME"

.field public static final COL_PW:Ljava/lang/String; = "PW"

.field public static final COL_TITLE:Ljava/lang/String; = "TITLE"

.field public static final DB_NAME:Ljava/lang/String; = "akandaka"

.field public static final DB_TABLE:Ljava/lang/String; = "PWS"

.field public static final DB_VERSION:I = 0x1

.field private static final cols:[Ljava/lang/String;

.field private static final subCols:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbOpenHelper:Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "DESC"

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "TITLE"

    aput-object v1, v0, v4

    const-string v1, "NAME"

    aput-object v1, v0, v5

    const-string v1, "DESC"

    aput-object v7, v0, v6

    const/4 v1, 0x4

    const-string v2, "PW"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dakkhin/android/bhadram/DBHelper;->cols:[Ljava/lang/String;

    .line 33
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "TITLE"

    aput-object v1, v0, v4

    const-string v1, "DESC"

    aput-object v7, v0, v5

    sput-object v0, Lcom/dakkhin/android/bhadram/DBHelper;->subCols:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/DBHelper;->context:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->dbOpenHelper:Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;->close()V

    .line 50
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public deleteAll()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    const-string v2, "TITLE != \'_DAKKHIN__AKANDAKA_\'"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public deleteDb()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->dbOpenHelper:Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;->resetDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    return-void
.end method

.method public getAll()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    sget-object v2, Lcom/dakkhin/android/bhadram/DBHelper;->subCols:[Ljava/lang/String;

    const-string v3, "TITLE != \'_DAKKHIN__AKANDAKA_\'"

    const-string v7, "TITLE"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllWithText(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    const-string v7, "TITLE"

    .line 91
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    sget-object v2, Lcom/dakkhin/android/bhadram/DBHelper;->subCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "upper(TITLE) LIKE \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "TITLE"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " !=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_DAKKHIN__AKANDAKA_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TITLE"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMaster()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    sget-object v2, Lcom/dakkhin/android/bhadram/DBHelper;->cols:[Ljava/lang/String;

    const-string v3, "TITLE == \'_DAKKHIN__AKANDAKA_\'"

    const-string v7, "TITLE"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getWithId(J)Landroid/database/Cursor;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PWS"

    sget-object v2, Lcom/dakkhin/android/bhadram/DBHelper;->cols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;[BLjava/lang/String;[B[B)V
    .locals 4
    .parameter "title"
    .parameter "name"
    .parameter "desc"
    .parameter "pw"
    .parameter "info"

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, vals:Landroid/content/ContentValues;
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 60
    const-string v1, "DESC"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "PW"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 62
    const-string v1, "INFO"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 64
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PWS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 65
    return-void
.end method

.method public open()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/DBHelper;->context:Landroid/content/Context;

    const-string v2, "akandaka"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->dbOpenHelper:Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;

    .line 45
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->dbOpenHelper:Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/DBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method

.method public update(JLjava/lang/String;[BLjava/lang/String;[B[B)V
    .locals 5
    .parameter "id"
    .parameter "title"
    .parameter "name"
    .parameter "desc"
    .parameter "pw"
    .parameter "info"

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, vals:Landroid/content/ContentValues;
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "NAME"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 71
    const-string v1, "DESC"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "PW"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 73
    const-string v1, "INFO"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 75
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PWS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    return-void
.end method
