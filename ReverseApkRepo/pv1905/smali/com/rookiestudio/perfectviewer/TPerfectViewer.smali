.class public Lcom/rookiestudio/perfectviewer/TPerfectViewer;
.super Landroid/app/Application;
.source "TPerfectViewer.java"


# static fields
.field private static final DBVersion:I = 0x5

.field private static SDCardStatus:Lcom/rookiestudio/perfectviewer/TSDCardStatus;

.field private static batteryReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private CurrentDBVersion:I

.field private MainPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/rookiestudio/perfectviewer/TSDCardStatus;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TSDCardStatus;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->SDCardStatus:Lcom/rookiestudio/perfectviewer/TSDCardStatus;

    .line 62
    new-instance v0, Lcom/rookiestudio/perfectviewer/TPerfectViewer$1;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer$1;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CurrentDBVersion:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->MainPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    return-void
.end method

.method public static CheckFPU()I
    .locals 6

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 255
    .local v0, Result:I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 257
    .local v3, reader:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, line:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v0

    .line 261
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_2
    const-string v4, "Features"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    const-string v4, "neon"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_3
    const-string v4, "vfpv3d16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const/4 v0, 0x2

    goto :goto_0

    .line 270
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private CheckPDFSupport(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 310
    :try_start_0
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->MainPackageManager:Landroid/content/pm/PackageManager;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Config;->PDFPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 311
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Config;->PDFPackageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".TPluginHandler"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, className:Ljava/lang/String;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 314
    .local v1, apkName:Ljava/lang/String;
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v4, v1, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 315
    .local v4, myClassLoader:Ldalvik/system/PathClassLoader;
    const/4 v8, 0x1

    invoke-static {v2, v8, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    .local v0, TPDFHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 317
    .local v3, constructors:[Ljava/lang/reflect/Constructor;
    new-instance v8, Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget v12, Lcom/rookiestudio/perfectviewer/Global;->FPUType:I

    if-ne v12, v6, :cond_0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v1, v10, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    aput-object v7, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v8, v0, v6}, Lcom/rookiestudio/perfectviewer/TPDFHandler;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    .line 318
    const/4 v6, 0x1

    sput-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->EnablePDF:Z

    .line 319
    const-string v6, "perfectviewer"

    const-string v7, "PDF plugin found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0           #TPDFHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #apkName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #constructors:[Ljava/lang/reflect/Constructor;
    .end local v4           #myClassLoader:Ldalvik/system/PathClassLoader;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .restart local v0       #TPDFHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #apkName:Ljava/lang/String;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #constructors:[Ljava/lang/reflect/Constructor;
    .restart local v4       #myClassLoader:Ldalvik/system/PathClassLoader;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    move v6, v7

    .line 317
    goto :goto_0

    .line 325
    .end local v0           #TPDFHandlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #apkName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #constructors:[Ljava/lang/reflect/Constructor;
    .end local v4           #myClassLoader:Ldalvik/system/PathClassLoader;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 324
    :catch_1
    move-exception v6

    goto :goto_1

    .line 323
    :catch_2
    move-exception v6

    goto :goto_1

    .line 322
    :catch_3
    move-exception v6

    goto :goto_1

    .line 321
    :catch_4
    move-exception v6

    goto :goto_1

    .line 320
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method public static FirstStartCheck(Landroid/app/Activity;)V
    .locals 3
    .parameter "Parent"

    .prologue
    const/4 v2, 0x0

    .line 278
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->FirstStart:Z

    if-eqz v0, :cond_0

    .line 279
    sput-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->FirstStart:Z

    .line 280
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->CurrentVersion:I

    if-nez v0, :cond_1

    .line 281
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->CurrentVersion:I

    .line 282
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowAbout(Landroid/app/Activity;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->CurrentVersion:I

    sget v1, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    if-eq v0, v1, :cond_2

    .line 284
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    sput v0, Lcom/rookiestudio/perfectviewer/Config;->CurrentVersion:I

    .line 285
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowAbout(Landroid/app/Activity;I)V

    goto :goto_0

    .line 286
    :cond_2
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowWarning:Z

    if-eqz v0, :cond_0

    .line 287
    sput-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->ShowWarning:Z

    .line 288
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowWarning(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static OpenMainDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .parameter "PathName"

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "perfectviewer.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, DatabaseFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 191
    .local v0, DB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 223
    :goto_1
    return-object v3

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_1

    .line 196
    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v2

    .line 197
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1

    .line 201
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 204
    :try_start_2
    const-string v4, "CREATE TABLE bookshelf (book_index INTEGER PRIMARY KEY AUTOINCREMENT,book_path TEXT,book_name TEXT)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v4, "CREATE TABLE bookmark (bookmark_index INTEGER PRIMARY KEY AUTOINCREMENT, book_index INTEGER,bookmark_name TEXT,add_date TEXT,bookmark_value1 TEXT,bookmark_value2 TEXT)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v4, "CREATE TABLE bookhistory (book_index INTEGER PRIMARY KEY AUTOINCREMENT, full_path TEXT,file_name TEXT,last_date INTEGER,read_page INTEGER,total_page INTEGER)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    const-string v4, "CREATE TABLE bookfolder (book_index INTEGER PRIMARY KEY AUTOINCREMENT,book_path TEXT,book_cate TEXT,isdirectory INTEGER,isfolder INTEGER,book_cover BLOB)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 215
    :catch_2
    move-exception v3

    goto :goto_0

    .line 217
    :catch_3
    move-exception v2

    .line 218
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_1

    .line 219
    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_4
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method private RegisterNeedReceiver()V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->SDCardStatus:Lcom/rookiestudio/perfectviewer/TSDCardStatus;

    invoke-virtual {p0, v1, v0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    sget-object v1, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    return-void
.end method


# virtual methods
.method public CheckDatabase(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->OpenMainDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 236
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->OpenMainDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->AppDataFolder:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->OpenMainDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 244
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainBookDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CurrentDBVersion:I

    .line 248
    return-void
.end method

.method public CreateFunctionDesc()V
    .locals 4

    .prologue
    .line 330
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 331
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x2

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 332
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 333
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x3

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 334
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x4

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 335
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x6

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 336
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x5

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 337
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x8

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 338
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/4 v1, 0x7

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 339
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x9

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 340
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xa

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 341
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xb

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 342
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xc

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 343
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xd

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 344
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xe

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 345
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0xf

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 346
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x10

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 347
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x11

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 348
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x12

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 349
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x13

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 350
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x14

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 351
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x15

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 352
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x16

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 353
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x17

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 354
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x18

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 355
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x19

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 356
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1a

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 357
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1b

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 358
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1c

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 359
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1d

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 360
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1e

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 361
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x1f

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 362
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x20

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 363
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x21

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 364
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x22

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 365
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x23

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 366
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x24

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 367
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x25

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 368
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x26

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 369
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x27

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 370
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x28

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 371
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x29

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2a

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 373
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2b

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2c

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 375
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2d

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 376
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2e

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x2f

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 378
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x30

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x31

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    const/16 v1, 0x32

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 381
    return-void
.end method

.method public CreateFunctionList()V
    .locals 3

    .prologue
    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x33

    if-lt v0, v1, :cond_0

    .line 388
    return-void

    .line 386
    :cond_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitApplication(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 116
    .local v0, AppInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->InstallFolder:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    .line 118
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppDataFolder:Ljava/lang/String;

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/shared_prefs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppPerfFolder:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, aa:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->MainPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 123
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->InstallVersion:I

    .line 124
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->InstallVersionStr:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/PerfectViewer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    .line 135
    :goto_1
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppDatabaseFolder:Ljava/lang/String;

    .line 136
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    .line 137
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v7, 0xa

    if-lt v3, v7, :cond_3

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/wallpaper1.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName1:Ljava/lang/String;

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFolderName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/wallpaper2.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName2:Ljava/lang/String;

    .line 142
    const-string v7, "perfect_viewer_settings"

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 143
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Landroid/content/SharedPreferences;)V

    .line 144
    invoke-static {v6}, Lcom/rookiestudio/perfectviewer/Config;->LoadQuickBarButtons(Landroid/content/SharedPreferences;)V

    .line 145
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->LoadBookmarks(Landroid/content/Context;)V

    .line 146
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->LoadHistories(Landroid/content/Context;)V

    .line 147
    new-instance v7, Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-direct {v7, p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    .line 148
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v7, v6}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->LoadSetting(Landroid/content/SharedPreferences;)V

    .line 149
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddDefaultKey()V

    .line 150
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/TUtility;->ForceCreateFolder(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 151
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    .line 157
    :cond_0
    :goto_3
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CheckFPU()I

    move-result v7

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->FPUType:I

    .line 158
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->RegisterNeedReceiver()V

    .line 159
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CheckDatabase(Landroid/content/Context;)V

    .line 160
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainDisplay:Landroid/view/Display;

    .line 162
    :try_start_1
    const-class v7, Landroid/view/animation/TranslateAnimation;

    const-string v8, "cancel"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/TAnimateData;->Translate_Cancel:Ljava/lang/reflect/Method;

    .line 163
    const-class v7, Landroid/view/animation/AlphaAnimation;

    const-string v8, "cancel"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/TAnimateData;->Alpha_Cancel:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_4
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v4, metrics:Landroid/util/DisplayMetrics;
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainDisplay:Landroid/view/Display;

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget v7, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->ScreenDPI:F

    .line 169
    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->TextScale:F

    .line 171
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f020009

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->BookIconDefault:Landroid/graphics/Bitmap;

    .line 172
    sget v7, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v8, 0x20

    if-lt v7, v8, :cond_5

    .line 173
    sput v10, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    .line 179
    :goto_5
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    const-string v8, "**"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 180
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/rookiestudio/perfectviewer/TUtility;->setLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CreateFunctionDesc()V

    .line 183
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CreateFunctionList()V

    .line 185
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainDisplay:Landroid/view/Display;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/TBookshelf;->CalculateSize(Landroid/view/Display;)V

    .line 186
    return-void

    .line 125
    .end local v3           #i:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 132
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v7, "/"

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    .line 133
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    goto/16 :goto_1

    .line 138
    .restart local v3       #i:I
    :cond_3
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v3

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 153
    .restart local v6       #settings:Landroid/content/SharedPreferences;
    :cond_4
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/TUtility;->CreateNomediaFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 154
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->AppFilesFolder:Ljava/lang/String;

    sput-object v7, Lcom/rookiestudio/perfectviewer/Global;->ExternalDataFolder:Ljava/lang/String;

    goto/16 :goto_3

    .line 174
    .restart local v4       #metrics:Landroid/util/DisplayMetrics;
    :cond_5
    sget v7, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_6

    .line 175
    const/4 v7, 0x1

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    goto :goto_5

    .line 177
    :cond_6
    const/4 v7, 0x2

    sput v7, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    goto :goto_5

    .line 164
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x400

    .line 76
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 78
    sput-object p0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 80
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    .line 81
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidCPU_ABI:Ljava/lang/String;

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    .line 83
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->MainPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    invoke-virtual {p0, p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->InitApplication(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0, p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->CheckPDFSupport(Landroid/content/Context;)V

    .line 87
    :try_start_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/THistoryManager;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/THistoryManager;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    .line 91
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAnimator;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TAnimator;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    .line 92
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TAnimator;->setPriority(I)V

    .line 93
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    new-instance v0, Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TImageCache;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    .line 96
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TImageCache;->setPriority(I)V

    .line 97
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    new-instance v0, Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TSlideshow;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    .line 100
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TSlideshow;->setPriority(I)V

    .line 101
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "-1"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "200000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "jcifs.netbios.soTimeout"

    const-string v1, "200000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "jcifs.smb.client.tcpNoDelay"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "jcifs.smb.lmCompatibility"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
