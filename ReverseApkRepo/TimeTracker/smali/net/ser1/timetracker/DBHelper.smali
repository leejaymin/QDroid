.class public Lnet/ser1/timetracker/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final CREATE_TASK_TABLE:Ljava/lang/String; = "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

.field public static final DBVERSION:I = 0x5

.field public static final END:Ljava/lang/String; = "end"

.field public static final ID_NAME:Ljava/lang/String; = "_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final RANGES_TABLE:Ljava/lang/String; = "ranges"

.field public static final RANGE_COLUMNS:[Ljava/lang/String; = null

.field public static final START:Ljava/lang/String; = "start"

.field public static final TASK_COLUMNS:[Ljava/lang/String; = null

.field public static final TASK_ID:Ljava/lang/String; = "task_id"

.field public static final TASK_NAME:Ljava/lang/String; = "name"

.field public static final TASK_TABLE:Ljava/lang/String; = "tasks"

.field public static final TIMETRACKER_DB_NAME:Ljava/lang/String; = "timetracker.db"

.field private static instance:Lnet/ser1/timetracker/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "start"

    aput-object v1, v0, v2

    const-string v1, "end"

    aput-object v1, v0, v3

    sput-object v0, Lnet/ser1/timetracker/DBHelper;->RANGE_COLUMNS:[Ljava/lang/String;

    .line 18
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ROWID"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lnet/ser1/timetracker/DBHelper;->TASK_COLUMNS:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "timetracker.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    sput-object p0, Lnet/ser1/timetracker/DBHelper;->instance:Lnet/ser1/timetracker/DBHelper;

    .line 29
    return-void
.end method

.method public static getInstance()Lnet/ser1/timetracker/DBHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lnet/ser1/timetracker/DBHelper;->instance:Lnet/ser1/timetracker/DBHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 46
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "tasks"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "CREATE TABLE ranges(task_id INTEGER NOT NULL,start INTEGER NOT NULL,end INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "arg0"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "drop table temp;"

    const-string v5, "drop table tasks;"

    const-string v4, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    .line 56
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 57
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "temp"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "insert into temp(rowid,name) select rowid,name from tasks;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "drop table tasks;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "tasks"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "insert into tasks(_id,name) select rowid,name from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "drop table temp;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 66
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "temp"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "insert into temp(_id,name) select rowid,name from tasks;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "drop table tasks;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED NOT NULL);"

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "tasks"

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "insert into tasks(_id,name) select _id,name from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "drop table temp;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
