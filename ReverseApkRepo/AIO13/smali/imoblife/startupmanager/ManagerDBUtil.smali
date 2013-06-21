.class public Limoblife/startupmanager/ManagerDBUtil;
.super Ljava/lang/Object;


# instance fields
.field public activity:Landroid/app/Activity;

.field public cursor:Landroid/database/Cursor;

.field public item:Limoblife/startupmanager/j;

.field public packageManager:Landroid/content/pm/PackageManager;

.field public packageName:Ljava/lang/String;

.field public sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Limoblife/startupmanager/j;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/startupmanager/ManagerDBUtil;->activity:Landroid/app/Activity;

    iput-object p2, p0, Limoblife/startupmanager/ManagerDBUtil;->item:Limoblife/startupmanager/j;

    iput-object p3, p0, Limoblife/startupmanager/ManagerDBUtil;->packageName:Ljava/lang/String;

    const-string v0, "CUSTOMIZEDATA"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/app/Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from KILLLIST where packagename = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->cursor:Landroid/database/Cursor;

    iput-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->cursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public initSQLiteDB(Landroid/content/pm/PackageManager;)V
    .locals 3

    iget-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS KILLLIST(packageName TEXT,name TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Limoblife/startupmanager/ManagerDBUtil;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/ManagerDBUtil;->item:Limoblife/startupmanager/j;

    const/4 v2, 0x1

    iput-boolean v2, v0, Limoblife/startupmanager/j;->b:Z

    goto :goto_0
.end method
