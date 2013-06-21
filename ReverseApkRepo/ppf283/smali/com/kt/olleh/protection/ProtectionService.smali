.class public Lcom/kt/olleh/protection/ProtectionService;
.super Ljava/lang/Object;
.source "ProtectionService.java"


# static fields
.field public static final APP_ILLEGAL_COPY:I = -0x1

.field public static final APP_REGAL:I = 0x0

.field private static final CN_NAME:Ljava/lang/String; = "name"

.field private static final CN_VALUE:Ljava/lang/String; = "value"

.field public static final FUNC_INITIALIZING:I = -0x4

.field private static final IKAF_MANAGER_CONTENT_URI:Ljava/lang/String; = "content://com.kaf.kafmanagerprovider"

.field public static final INVALID_CONTEXT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "KTArmService"

.field public static final OLLEHMARKET_NOT_INSTALLED:I = -0x3

.field private static final RELEASE_DATE:Ljava/lang/String; = "111207"

.field public static final UNKNOWN_ERROR:I = -0x5

.field private static pService:Lcom/kt/olleh/protection/ProtectionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/olleh/protection/ProtectionService;->pService:Lcom/kt/olleh/protection/ProtectionService;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIstore(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 338
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.kt.olleh.istore"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 340
    const/4 v2, 0x1

    .line 348
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 342
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 344
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 345
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInitializeStatus_IKaf(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 309
    const/4 v8, 0x0

    .line 310
    .local v8, ret:I
    const/4 v6, 0x0

    .line 312
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "name= \'kaf_init_status\'"

    .line 313
    .local v3, whereClause:Ljava/lang/String;
    const-string v0, "content://com.kaf.kafmanagerprovider/kaf_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 314
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "value"

    aput-object v5, v2, v4

    .line 316
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 314
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    if-eqz v6, :cond_0

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_2

    .line 321
    const/4 v8, 0x0

    .line 330
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v6, 0x0

    .line 332
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #whereClause:Ljava/lang/String;
    :goto_1
    return v8

    .line 323
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #whereClause:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, status:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_0

    .line 327
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v9           #status:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 328
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 329
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 330
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v6, 0x0

    .line 331
    throw v0
.end method

.method private getJarFilePath(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "appInfo"

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, jarFilePath:Ljava/lang/String;
    :try_start_0
    const-string v3, "JarFile"

    invoke-direct {p0, p1, v3}, Lcom/kt/olleh/protection/ProtectionService;->getStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    :goto_0
    if-nez v2, :cond_1

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/lib/libkafdex.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    :goto_1
    return-object v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, jarFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/lib/libkafdex.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getOldKafDexClassLoader(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 249
    .local v6, pm:Landroid/content/pm/PackageManager;
    const-string v8, "com.kt.olleh.istore"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 251
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 252
    .local v2, dataDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/kafcache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, cacheDir:Ljava/io/File;
    invoke-direct {p0, p1, v0}, Lcom/kt/olleh/protection/ProtectionService;->getJarFilePath(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, jarFilePath:Ljava/lang/String;
    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v4, v5, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #cacheDir:Ljava/io/File;
    .end local v2           #dataDir:Ljava/lang/String;
    .end local v5           #jarFilePath:Ljava/lang/String;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 258
    :catch_0
    move-exception v3

    .line 259
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 260
    goto :goto_0
.end method

.method public static declared-synchronized getProtection()Lcom/kt/olleh/protection/ProtectionService;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/kt/olleh/protection/ProtectionService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kt/olleh/protection/ProtectionService;->pService:Lcom/kt/olleh/protection/ProtectionService;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/kt/olleh/protection/ProtectionService;

    invoke-direct {v0}, Lcom/kt/olleh/protection/ProtectionService;-><init>()V

    sput-object v0, Lcom/kt/olleh/protection/ProtectionService;->pService:Lcom/kt/olleh/protection/ProtectionService;

    .line 43
    :cond_0
    sget-object v0, Lcom/kt/olleh/protection/ProtectionService;->pService:Lcom/kt/olleh/protection/ProtectionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, status:Ljava/lang/String;
    const/4 v6, 0x0

    .line 290
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.kaf.kafmanagerprovider/kaf_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 293
    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 302
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v6, 0x0

    .line 305
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 299
    :catch_0
    move-exception v7

    .line 300
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 301
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 302
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v6, 0x0

    .line 303
    throw v0
.end method

.method private loadIKAF(Landroid/content/Context;)Lcom/kaf/IKafManager;
    .locals 17
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.kt.olleh.istore"

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 204
    :goto_0
    if-nez v1, :cond_0

    .line 205
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "NameNotFoundException"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 208
    :cond_0
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 209
    .local v4, dataDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/kafcache"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, cacheDir:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/lib/libkafdex.so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v11, jarFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/kafcache/device_info.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, devInfoFile:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/kafcache/kaf_conf.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v12, kafConfFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 215
    .local v8, ikaf:Lcom/kaf/IKafManager;
    invoke-direct/range {p0 .. p1}, Lcom/kt/olleh/protection/ProtectionService;->checkIstore(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 216
    invoke-direct/range {p0 .. p1}, Lcom/kt/olleh/protection/ProtectionService;->getInitializeStatus_IKaf(Landroid/content/Context;)I

    move-result v9

    .line 217
    .local v9, initStatus:I
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 218
    :cond_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "com.kaf.action.KAF_LIB_INSTALL"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/4 v14, 0x3

    if-eq v9, v14, :cond_2

    .line 221
    const-string v14, "initialize_command"

    const-string v15, "1"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :goto_1
    const-string v14, "package_name"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "Initialize"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 223
    :cond_2
    const-string v14, "initialize_command"

    const-string v15, "2"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 233
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/kt/olleh/protection/ProtectionService;->getOldKafDexClassLoader(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v6

    .line 234
    .local v6, dex:Ldalvik/system/DexClassLoader;
    const-string v14, "com.kt.ikaf.KafManager"

    invoke-virtual {v6, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 235
    .local v3, clz:Ljava/lang/Class;
    const-string v14, "getInstance"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v3, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 236
    .local v13, mthd:Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lt3SkSFUAg5/OCuIf6LzbGL;->DXWlrQRnmK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/kaf/IKafManager;

    move-object v8, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    .end local v3           #clz:Ljava/lang/Class;
    .end local v6           #dex:Ldalvik/system/DexClassLoader;
    .end local v9           #initStatus:I
    .end local v13           #mthd:Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    return-object v8

    .line 237
    .restart local v9       #initStatus:I
    :catch_0
    move-exception v7

    .line 238
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 201
    .end local v2           #cacheDir:Ljava/io/File;
    .end local v4           #dataDir:Ljava/lang/String;
    .end local v5           #devInfoFile:Ljava/io/File;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #ikaf:Lcom/kaf/IKafManager;
    .end local v9           #initStatus:I
    .end local v11           #jarFile:Ljava/io/File;
    .end local v12           #kafConfFile:Ljava/io/File;
    :catch_1
    move-exception v14

    goto/16 :goto_0
.end method

.method private start(Landroid/content/Context;)I
    .locals 16
    .parameter "context"

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 53
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v15, -0x2

    .line 193
    :cond_0
    :goto_0
    return v15

    .line 57
    :cond_1
    new-instance v10, Ljava/io/File;

    const-string v1, "/system/framework/kafdex.jar"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v10, kafdexfile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    const/4 v15, -0x5

    .line 62
    .local v15, ret:I
    :try_start_0
    invoke-static {}, Lcom/kaf/KafManager;->getInstance()Lcom/kaf/KafManager;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/kaf/KafManager;->Initialize(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v15

    .line 64
    if-nez v15, :cond_2

    .line 65
    const/4 v15, 0x0

    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, -0x2

    if-ne v15, v1, :cond_3

    .line 67
    const/4 v15, 0x0

    goto :goto_0

    .line 68
    :cond_3
    const/4 v1, -0x3

    if-ne v15, v1, :cond_4

    .line 69
    const/4 v15, -0x1

    goto :goto_0

    .line 71
    :cond_4
    const/4 v15, -0x5

    goto :goto_0

    .line 73
    :catch_0
    move-exception v8

    .line 74
    .local v8, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, messgae:Ljava/lang/String;
    const-string v1, "Context value is null"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v15, -0x2

    goto :goto_0

    .line 79
    :cond_5
    const-string v1, "Invalid copyright"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] Invalid copyright."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v15, -0x2

    goto :goto_0

    .line 84
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #messgae:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 85
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v15, -0x5

    goto :goto_0

    .line 87
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 88
    .local v8, e:Ljava/lang/Throwable;
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v15, -0x5

    goto/16 :goto_0

    .line 94
    .end local v8           #e:Ljava/lang/Throwable;
    .end local v15           #ret:I
    :cond_6
    const/4 v15, -0x5

    .line 95
    .restart local v15       #ret:I
    const/4 v7, 0x0

    .line 97
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.kt.olleh.istore.API_PROVIDER/API?method=verifyApp&packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&copyRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 103
    :goto_1
    if-nez v7, :cond_10

    .line 105
    const/4 v9, 0x0

    .line 107
    .local v9, ikaf:Lcom/kaf/IKafManager;
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/kt/olleh/protection/ProtectionService;->loadIKAF(Landroid/content/Context;)Lcom/kaf/IKafManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    .line 122
    :goto_2
    if-eqz v9, :cond_0

    .line 124
    const/4 v1, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lcom/kaf/IKafManager;->Initialize(Landroid/content/Context;I)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    move-result v15

    .line 126
    if-nez v15, :cond_9

    .line 127
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 99
    .end local v9           #ikaf:Lcom/kaf/IKafManager;
    :catch_3
    move-exception v8

    .line 100
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #ikaf:Lcom/kaf/IKafManager;
    :catch_4
    move-exception v8

    .line 109
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, message:Ljava/lang/String;
    const-string v1, "NameNotFoundException"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] com.kt.olleh.istore Name Not Found Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v15, -0x3

    goto :goto_2

    .line 113
    :cond_7
    const-string v1, "Initialize"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 115
    const/4 v15, -0x4

    goto :goto_2

    .line 117
    :cond_8
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v15, -0x5

    goto :goto_2

    .line 128
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #message:Ljava/lang/String;
    :cond_9
    const/4 v1, -0x1

    if-ne v15, v1, :cond_a

    .line 129
    const/4 v15, -0x5

    goto/16 :goto_0

    .line 130
    :cond_a
    const/4 v1, -0x2

    if-ne v15, v1, :cond_b

    .line 131
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 132
    :cond_b
    const/4 v1, -0x3

    if-ne v15, v1, :cond_c

    .line 133
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 134
    :cond_c
    const/4 v1, -0x4

    if-ne v15, v1, :cond_d

    .line 135
    const/4 v15, -0x3

    goto/16 :goto_0

    .line 136
    :cond_d
    const/4 v1, -0x5

    if-ne v15, v1, :cond_e

    .line 138
    const/4 v15, -0x4

    goto/16 :goto_0

    .line 140
    :cond_e
    const/4 v15, -0x5

    goto/16 :goto_0

    .line 142
    :catch_5
    move-exception v8

    .line 143
    .local v8, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 144
    .restart local v12       #messgae:Ljava/lang/String;
    const-string v1, "Context value is null"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 146
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v15, -0x2

    goto/16 :goto_0

    .line 148
    :cond_f
    const-string v1, "Invalid copyright"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "KTArmService"

    const-string v2, "[ArmService.verifyApp] Invalid copyright."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v15, -0x2

    goto/16 :goto_0

    .line 153
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #messgae:Ljava/lang/String;
    :catch_6
    move-exception v8

    .line 154
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v15, -0x5

    goto/16 :goto_0

    .line 156
    .end local v8           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v8

    .line 157
    .local v8, e:Ljava/lang/Throwable;
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v15, -0x5

    goto/16 :goto_0

    .line 169
    .end local v8           #e:Ljava/lang/Throwable;
    .end local v9           #ikaf:Lcom/kaf/IKafManager;
    :cond_10
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    const-string v1, "ResultCode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 172
    .local v14, resultCode:I
    if-nez v14, :cond_13

    .line 173
    const-string v1, "AuthResult"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result v13

    .line 174
    .local v13, result:I
    if-nez v13, :cond_12

    .line 175
    const/4 v15, 0x0

    .line 188
    .end local v13           #result:I
    .end local v14           #resultCode:I
    :cond_11
    :goto_3
    if-eqz v7, :cond_0

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 177
    .restart local v13       #result:I
    .restart local v14       #resultCode:I
    :cond_12
    const/4 v15, -0x1

    goto :goto_3

    .line 180
    .end local v13           #result:I
    :cond_13
    :try_start_5
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] verifyApp fail.. ResultCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 181
    const/4 v15, -0x1

    goto :goto_3

    .line 184
    .end local v14           #resultCode:I
    :catch_8
    move-exception v8

    .line 185
    .local v8, e:Ljava/lang/Exception;
    :try_start_6
    const-string v1, "KTArmService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ArmService.verifyApp] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    const/4 v15, -0x5

    .line 188
    if-eqz v7, :cond_0

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 187
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 188
    if-eqz v7, :cond_14

    .line 189
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_14
    throw v1
.end method


# virtual methods
.method public verifyApp(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "KTArmService"

    const-string v1, "**** KT App Protection Service (Release Date: 111207) ****"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/kt/olleh/protection/ProtectionService;->start(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
