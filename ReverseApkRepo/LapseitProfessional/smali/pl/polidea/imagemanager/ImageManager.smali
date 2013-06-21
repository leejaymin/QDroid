.class public Lpl/polidea/imagemanager/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/polidea/imagemanager/ImageManager$DownloadThread;,
        Lpl/polidea/imagemanager/ImageManager$LoadThread;,
        Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config:[I

.field private static final TAG:Ljava/lang/String;

.field private static application:Landroid/app/Application;

.field private static downloadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static loadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lpl/polidea/imagemanager/ImageManagerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static loaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lpl/polidea/imagemanager/ImageManagerRequest;",
            "Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingReqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/polidea/imagemanager/ImageManagerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static logging:Z

.field private static final opts:Landroid/graphics/BitmapFactory$Options;

.field private static requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/polidea/imagemanager/ImageManagerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static start:J


# direct methods
.method static synthetic $SWITCH_TABLE$android$graphics$Bitmap$Config()[I
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->$SWITCH_TABLE$android$graphics$Bitmap$Config:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const-class v0, Lpl/polidea/imagemanager/ImageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->requests:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->loadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->loadingReqs:Ljava/util/List;

    .line 236
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    .line 237
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadingUris:Ljava/util/List;

    .line 240
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lpl/polidea/imagemanager/ImageManager;->start:J

    .line 853
    new-instance v0, Lpl/polidea/imagemanager/ImageManager$LoadThread;

    invoke-direct {v0, v2}, Lpl/polidea/imagemanager/ImageManager$LoadThread;-><init>(Lpl/polidea/imagemanager/ImageManager$LoadThread;)V

    invoke-virtual {v0}, Lpl/polidea/imagemanager/ImageManager$LoadThread;->start()V

    .line 856
    new-instance v0, Lpl/polidea/imagemanager/ImageManager$DownloadThread;

    invoke-direct {v0, v2}, Lpl/polidea/imagemanager/ImageManager$DownloadThread;-><init>(Lpl/polidea/imagemanager/ImageManager$DownloadThread;)V

    invoke-virtual {v0}, Lpl/polidea/imagemanager/ImageManager$DownloadThread;->start()V

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 232
    sget-boolean v0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    return v0
.end method

.method static synthetic access$2()Ljava/util/List;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loadingReqs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loadQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$4(Lpl/polidea/imagemanager/ImageManagerRequest;)Z
    .locals 1
    .parameter

    .prologue
    .line 258
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->isImageLoaded(Lpl/polidea/imagemanager/ImageManagerRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->getLoadedBitmap(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6()Ljava/util/Map;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7()Ljava/util/List;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadingUris:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$9(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized cleanUp()V
    .locals 13

    .prologue
    .line 578
    const-class v10, Lpl/polidea/imagemanager/ImageManager;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 580
    .local v7, t:J
    sget-boolean v9, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v9, :cond_0

    .line 582
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    const-string v11, "Image manager clean up"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    .line 631
    :cond_1
    :goto_0
    monitor-exit v10

    return-void

    .line 590
    :cond_2
    :try_start_1
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 591
    .local v6, reqs:Ljava/util/Set;,"Ljava/util/Set<Lpl/polidea/imagemanager/ImageManagerRequest;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 597
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/image_manager/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 601
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v3

    if-ne v4, v9, :cond_8

    .line 606
    sget-boolean v9, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v9, :cond_3

    .line 608
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Deleting directory "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    sget-boolean v9, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v9, :cond_4

    .line 613
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Directory "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " couldn\'t be deleted"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_4
    sget-boolean v9, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v9, :cond_5

    .line 618
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Directory "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " deleted"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 624
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v1, v11, v7

    .line 626
    .local v1, dt:J
    sget-boolean v9, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v9, :cond_1

    .line 628
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Image manager clean up finished, took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "[msec]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->logImageManagerStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 578
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dt:J
    .end local v6           #reqs:Ljava/util/Set;,"Ljava/util/Set<Lpl/polidea/imagemanager/ImageManagerRequest;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 591
    .restart local v6       #reqs:Ljava/util/Set;,"Ljava/util/Set<Lpl/polidea/imagemanager/ImageManagerRequest;>;"
    :cond_7
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/polidea/imagemanager/ImageManagerRequest;

    .line 593
    .local v5, req:Lpl/polidea/imagemanager/ImageManagerRequest;
    invoke-static {v5}, Lpl/polidea/imagemanager/ImageManager;->unloadImage(Lpl/polidea/imagemanager/ImageManagerRequest;)V

    goto/16 :goto_1

    .line 603
    .end local v5           #req:Lpl/polidea/imagemanager/ImageManagerRequest;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    :cond_8
    aget-object v9, v3, v4

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lpl/polidea/imagemanager/ImageManager;->deleteImage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method public static deleteImage(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 556
    sget-boolean v1, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v1, :cond_0

    .line 558
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v1, :cond_1

    .line 564
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    sget-boolean v1, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v1, :cond_2

    .line 569
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    return-void
.end method

.method public static downloadImage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .parameter "uri"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    sget-boolean v8, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v8, :cond_0

    .line 504
    sget-object v8, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Downloading image from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 509
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v8, Ljava/net/URI;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 510
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 511
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 512
    .local v7, statusCode:I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 514
    sget-object v8, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while retrieving file from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v5, parent:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_2

    .line 522
    sget-object v8, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    const-string v9, "Parent directory doesn\'t exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 527
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_3

    .line 529
    sget-object v8, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Null entity received when downloading "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 534
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v9, 0x400

    invoke-direct {v8, v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v2, v8}, Lpl/polidea/imagemanager/ImageManager;->readFile(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 539
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 542
    sget-boolean v8, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v8, :cond_4

    .line 544
    sget-object v8, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Image from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " downloaded to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_4
    return-void

    .line 537
    :catchall_0
    move-exception v8

    .line 538
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 539
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 540
    throw v8
.end method

.method private static getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image_manager/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImage(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "req"

    .prologue
    const/4 v2, 0x0

    .line 781
    const/4 v0, 0x0

    .line 784
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->requests:Ljava/util/List;

    monitor-enter v3

    .line 786
    :try_start_0
    sget-object v4, Lpl/polidea/imagemanager/ImageManager;->requests:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 787
    sget-object v4, Lpl/polidea/imagemanager/ImageManager;->requests:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->isImageLoaded(Lpl/polidea/imagemanager/ImageManagerRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->getLoadedBitmap(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    :cond_0
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 844
    :cond_1
    :goto_0
    return-object v2

    .line 784
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 803
    :cond_2
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->isImageDownloaded(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 806
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->isImageDownloading(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 808
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->queueImageDownload(Lpl/polidea/imagemanager/ImageManagerRequest;)V

    goto :goto_0

    .line 814
    :cond_3
    iget-boolean v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    if-eqz v3, :cond_4

    .line 818
    const/4 v3, 0x1

    :try_start_2
    invoke-static {p0, v3}, Lpl/polidea/imagemanager/ImageManager;->loadImage(Lpl/polidea/imagemanager/ImageManagerRequest;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_1

    .line 825
    sget-object v2, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    new-instance v3, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;

    iget-boolean v4, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    invoke-direct {v3, v0, v4}, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 839
    :cond_4
    :goto_1
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->isImageLoading(Lpl/polidea/imagemanager/ImageManagerRequest;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 841
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->queueImageLoad(Lpl/polidea/imagemanager/ImageManagerRequest;)V

    :cond_5
    move-object v2, v0

    .line 844
    goto :goto_0

    .line 827
    :catch_0
    move-exception v1

    .line 830
    .local v1, err:Ljava/lang/OutOfMemoryError;
    sget-boolean v2, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v2, :cond_4

    .line 832
    sget-object v2, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while loading preview image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Out of memory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->logImageManagerStatus()V

    goto :goto_1
.end method

.method public static getImageSize(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Point;
    .locals 4
    .parameter "req"

    .prologue
    .line 747
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 748
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 749
    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 753
    :cond_0
    iget v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    if-ltz v1, :cond_1

    .line 755
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 757
    :cond_1
    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lpl/polidea/imagemanager/ImageManager;->isImageDownloaded(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 759
    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lpl/polidea/imagemanager/ImageManager;->getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 761
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private static getLoadedBitmap(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "req"

    .prologue
    .line 279
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->isImageLoaded(Lpl/polidea/imagemanager/ImageManagerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;

    invoke-virtual {v0}, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 255
    sput-object p0, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    .line 256
    return-void
.end method

.method private static isImageDownloaded(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->isImageDownloading(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isImageDownloading(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 300
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadingUris:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isImageLoaded(Lpl/polidea/imagemanager/ImageManagerRequest;)Z
    .locals 1
    .parameter "req"

    .prologue
    .line 260
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isImageLoading(Lpl/polidea/imagemanager/ImageManagerRequest;)Z
    .locals 1
    .parameter "req"

    .prologue
    .line 265
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loadingReqs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 640
    sget-boolean v0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    return v0
.end method

.method public static loadImage(Lpl/polidea/imagemanager/ImageManagerRequest;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "req"
    .parameter "preview"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 324
    if-nez p0, :cond_0

    move-object v0, v4

    .line 426
    :goto_0
    return-object v0

    .line 329
    :cond_0
    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_1

    .line 331
    sget-object v5, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Loading "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v3, "preview"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " image "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    const/4 v0, 0x0

    .line 340
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-object v5, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    if-eqz p1, :cond_5

    const/16 v3, 0x8

    :goto_2
    iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 345
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 347
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 350
    :cond_2
    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_3

    .line 352
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while loading image "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". File does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    iput-object v4, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    move-object v0, v4

    .line 355
    goto :goto_0

    .line 331
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #file:Ljava/io/File;
    :cond_4
    const-string v3, "full"

    goto :goto_1

    .line 340
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_5
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    goto :goto_2

    .line 358
    .restart local v1       #file:Ljava/io/File;
    :cond_6
    if-nez p1, :cond_7

    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    if-lez v3, :cond_7

    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    if-lez v3, :cond_7

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    iget v5, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    invoke-static {v3, v4, v5, v7}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    goto/16 :goto_0

    .line 363
    :cond_7
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    sget-object v5, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    if-nez v0, :cond_8

    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_8

    .line 366
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while decoding image from file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v1           #file:Ljava/io/File;
    :cond_8
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    if-ltz v3, :cond_9

    .line 374
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    sget-object v6, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    if-nez v0, :cond_9

    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_9

    .line 377
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while decoding image from resources id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_9
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_c

    .line 384
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->getFilenameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, filename:Ljava/lang/String;
    iget-object v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->isImageDownloaded(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 388
    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_a

    .line 390
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while loading image "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". File was not downloaded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object v0, v4

    .line 392
    goto/16 :goto_0

    .line 395
    :cond_b
    if-nez p1, :cond_d

    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    if-lez v3, :cond_d

    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    if-lez v3, :cond_d

    .line 397
    const-string v3, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v3, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    iget v5, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    invoke-static {v2, v3, v5, v7}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 405
    .end local v2           #filename:Ljava/lang/String;
    :cond_c
    :goto_3
    if-nez v0, :cond_e

    move-object v0, v4

    .line 407
    goto/16 :goto_0

    .line 400
    .restart local v2       #filename:Ljava/lang/String;
    :cond_d
    sget-object v3, Lpl/polidea/imagemanager/ImageManager;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 421
    .end local v2           #filename:Ljava/lang/String;
    :cond_e
    sget-boolean v3, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v3, :cond_f

    .line 423
    sget-object v4, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    const-string v3, "Preview"

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " image "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " loaded"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_f
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bla "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    :cond_10
    const-string v3, "Full"

    goto :goto_4
.end method

.method public static logImageManagerStatus()V
    .locals 14

    .prologue
    .line 664
    const v9, 0x3a83126f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lpl/polidea/imagemanager/ImageManager;->start:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    mul-float v7, v9, v10

    .line 666
    .local v7, t:F
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Uptime: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[s]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 670
    .local v5, imgn:I
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Loaded images: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-lez v5, :cond_1

    .line 673
    const/4 v8, 0x0

    .line 674
    .local v8, totalSize:I
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 708
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Estimated loaded images size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v11, v8, 0x400

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[kB]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v8           #totalSize:I
    :cond_1
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Queued images: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lpl/polidea/imagemanager/ImageManager;->loadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v11}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lpl/polidea/imagemanager/ImageManager;->application:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/image_manager/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 718
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 720
    .local v3, files:[Ljava/io/File;
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Downloaded images: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    array-length v9, v3

    if-lez v9, :cond_2

    .line 724
    const/4 v8, 0x0

    .line 725
    .restart local v8       #totalSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v3

    if-ne v4, v9, :cond_5

    .line 729
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Estimated downloaded images size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v11, v8, 0x400

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[kB]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    .end local v8           #totalSize:I
    :cond_2
    :goto_2
    return-void

    .line 674
    .end local v2           #dir:Ljava/io/File;
    .restart local v8       #totalSize:I
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;

    .line 676
    .local v6, limg:Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;
    invoke-virtual {v6}, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, bpp:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 688
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->$SWITCH_TABLE$android$graphics$Bitmap$Config()[I

    move-result-object v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 699
    :pswitch_0
    const/4 v1, 0x4

    .line 705
    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/2addr v10, v1

    add-int/2addr v8, v10

    goto/16 :goto_0

    .line 691
    :pswitch_1
    const/4 v1, 0x1

    .line 692
    goto :goto_3

    .line 695
    :pswitch_2
    const/4 v1, 0x2

    .line 696
    goto :goto_3

    .line 727
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bpp:I
    .end local v6           #limg:Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    :cond_5
    int-to-long v9, v8

    aget-object v11, v3, v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v9, v11

    long-to-int v8, v9

    .line 725
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 734
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    .end local v8           #totalSize:I
    :cond_6
    sget-object v9, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    const-string v10, "Downloaded images: 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static queueImageDownload(Lpl/polidea/imagemanager/ImageManagerRequest;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 305
    sget-boolean v0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queuing image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->downloadQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private static queueImageLoad(Lpl/polidea/imagemanager/ImageManagerRequest;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 270
    sget-boolean v0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queuing image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to load"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    sget-object v0, Lpl/polidea/imagemanager/ImageManager;->loadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private static readFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 4
    .parameter "filename"
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 462
    .local v0, buffer:[B
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 465
    .local v1, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 466
    .local v2, r:I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 477
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 484
    return-void

    .line 468
    :cond_0
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 469
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 470
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0

    .line 474
    .end local v2           #r:I
    :catchall_0
    move-exception v3

    .line 477
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 483
    throw v3

    .line 480
    :catchall_1
    move-exception v3

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 482
    throw v3

    .line 480
    .restart local v2       #r:I
    :catchall_2
    move-exception v3

    .line 481
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 482
    throw v3
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .parameter "logging"

    .prologue
    .line 651
    sput-boolean p0, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    .line 652
    return-void
.end method

.method public static unloadImage(Lpl/polidea/imagemanager/ImageManagerRequest;)V
    .locals 4
    .parameter "req"

    .prologue
    .line 437
    sget-boolean v1, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v1, :cond_0

    .line 439
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unloading image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    invoke-static {p0}, Lpl/polidea/imagemanager/ImageManager;->getLoadedBitmap(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    const/4 v0, 0x0

    .line 449
    :cond_1
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->loaded:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 453
    sget-boolean v1, Lpl/polidea/imagemanager/ImageManager;->logging:Z

    if-eqz v1, :cond_2

    .line 455
    sget-object v1, Lpl/polidea/imagemanager/ImageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    return-void
.end method
