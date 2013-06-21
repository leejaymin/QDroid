.class public Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
.super Landroid/app/Application;
.source "FastBurstCameraApplication.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field public static final DIRECTORY_NAME:Ljava/lang/String; = "FastBurstCamera"

.field public static final DIRECTORY_NAME_ULTRA:Ljava/lang/String; = "UltraBurstCamera"

.field protected static final THUMBDIV:I = 0x8

.field private static cameraSetup:Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

.field public static displayHeight:I

.field public static displayWidth:I

.field public static instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

.field private static selectedMemModifier:I

.field private static selectedSize:Landroid/hardware/Camera$Size;

.field private static trial:Z


# instance fields
.field private activePreviewControl:Lcom/spritefish/camera/controls/PreviewControl;

.field private bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

.field private bm:Lcom/spritefish/camera/memory/BufferManager;

.field private cameraId:I

.field private currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/text/DateFormat;

.field private dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private frontActivity:Landroid/app/Activity;

.field private height:I

.field private initTime:J

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public lastUsedSize:Landroid/hardware/Camera$Size;

.field private mediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private newPicListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/activities/NewPictureListener;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/spritefish/fastburstcamera/activities/RecordMode;",
            ">;"
        }
    .end annotation
.end field

.field private resolutions:[Ljava/lang/String;

.field private rgbHandler:Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;

.field private rgbi:[I

.field private rgbs:[I

.field private shortdateFormat:Ljava/text/DateFormat;

.field private supportedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private width:I

.field private writeQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private writeWorker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "nativearrays"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$1;

    invoke-direct {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$1;-><init>()V

    invoke-static {v0}, Lcom/spritefish/camera/LO;->installExceptionReporter(Lcom/spritefish/camera/ExceptionReporter;)V

    .line 91
    const/16 v0, -0x3e8

    sput v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedMemModifier:I

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dateFormat:Ljava/text/DateFormat;

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->shortdateFormat:Ljava/text/DateFormat;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    new-instance v0, Lcom/spritefish/fastburstcamera/core/cameras/DefaultCamera;

    invoke-direct {v0}, Lcom/spritefish/fastburstcamera/core/cameras/DefaultCamera;-><init>()V

    sput-object v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraSetup:Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    .line 143
    const-string v0, "constructed application"

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 145
    sput-object p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/memory/NewByteArrayManager;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->frontActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/camera/controls/PreviewControl;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->activePreviewControl:Lcom/spritefish/camera/controls/PreviewControl;

    return-object v0
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbHandler:Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;[BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-direct/range {p0 .. p7}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeYuvAsJpg([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;[BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct/range {p0 .. p8}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeYuvAsJpgPlatform([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    return v0
.end method

.method static synthetic access$9(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)I
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    return v0
.end method

.method public static enableTrial()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x1

    sput-boolean v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->trial:Z

    .line 929
    return-void
.end method

.method public static getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraSetup:Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    return-object v0
.end method

.method public static getResolution()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 844
    sget-object v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public static getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 935
    sget-object v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 936
    const/4 v0, 0x0

    .line 939
    :goto_0
    return-object v0

    .line 937
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    .line 938
    .local v0, tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    const-string v1, "UA-26924903-1"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static getUsedMemoryModifier()I
    .locals 1

    .prologue
    .line 848
    sget v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedMemModifier:I

    return v0
.end method

.method public static handleMemoryError(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 878
    const-string v4, "insta"

    const-string v5, "handling memory error (?)"

    invoke-static {v4, v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    sget-object v4, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 881
    .local v0, context:Landroid/content/Context;
    const-string v2, "Memory error!"

    .line 882
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 884
    .local v1, duration:I
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 885
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 886
    return-void
.end method

.method public static isTrialEnabled()Z
    .locals 1

    .prologue
    .line 818
    sget-boolean v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->trial:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 802
    const-string v0, "insta"

    const-string v1, "*****************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "** BURST - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v0, "insta"

    const-string v1, "*****************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method private writeYuvAsJpg([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "yuv"
    .parameter "timestamp"
    .parameter "rotation"
    .parameter "blackWhite"
    .parameter "handler"
    .parameter "tag"

    .prologue
    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 542
    .local v9, start:J
    if-nez p5, :cond_2

    .line 543
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbi:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v13, v0, v14, v15, v1}, Lcom/spritefish/camera/Util;->decodeYUV([I[BIILcom/spritefish/camera/RotationManager$Rotation;)V

    .line 547
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dateFormat:Ljava/text/DateFormat;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, dateAsString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getActualStoragePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 551
    .local v11, useStoragePath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 552
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, fullPath:Ljava/lang/String;
    const/4 v12, 0x0

    .line 558
    .local v12, writeToDiskBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v13, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-eq v0, v13, :cond_0

    sget-object v13, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbi:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v13 .. v16}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 561
    :goto_1
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    .local v5, destination:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 564
    .local v7, fos:Ljava/io/FileOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 565
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v12, v8, v13}, Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;->handlePicture(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 567
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 568
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v13}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    .end local v5           #destination:Ljava/io/File;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    const/4 v12, 0x0

    .line 585
    const-string v13, "insta"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "capture took "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " msec"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v8

    .line 545
    .end local v4           #dateAsString:Ljava/lang/String;
    .end local v8           #fullPath:Ljava/lang/String;
    .end local v11           #useStoragePath:Ljava/lang/String;
    .end local v12           #writeToDiskBitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbi:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v13, v0, v14, v15, v1}, Lcom/spritefish/camera/Util;->decodeYUVasBlackWhite([I[BIILcom/spritefish/camera/RotationManager$Rotation;)V

    goto/16 :goto_0

    .line 558
    .restart local v4       #dateAsString:Ljava/lang/String;
    .restart local v8       #fullPath:Ljava/lang/String;
    .restart local v11       #useStoragePath:Ljava/lang/String;
    .restart local v12       #writeToDiskBitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbi:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v13 .. v16}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_1

    .line 572
    :catch_0
    move-exception v6

    .line 573
    .local v6, e:Ljava/lang/Exception;
    const-string v8, ""

    .line 574
    const-string v13, "insta"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "error writing file "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->makeErrorToast()V

    .line 576
    const-string v13, "save"

    invoke-static {v13, v6}, Lcom/bugsense/trace/BugSenseHandler;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 580
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 583
    const/4 v12, 0x0

    .line 584
    throw v13
.end method

.method private writeYuvAsJpgPlatform([BJLcom/spritefish/camera/RotationManager$Rotation;ZLcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;Ljava/lang/String;I)Ljava/lang/String;
    .locals 29
    .parameter "yuv"
    .parameter "timestamp"
    .parameter "rotation"
    .parameter "blackWhite"
    .parameter "handler"
    .parameter "tag"
    .parameter "camId"

    .prologue
    .line 389
    new-instance v4, Landroid/graphics/YuvImage;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 390
    .local v4, y:Landroid/graphics/YuvImage;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dateFormat:Ljava/text/DateFormat;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 391
    .local v13, dateAsString:Ljava/lang/String;
    const-string v28, ""

    .line 392
    .local v28, useTag:Ljava/lang/String;
    if-eqz p7, :cond_0

    const-string v5, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 393
    move-object/from16 v28, p7

    .line 395
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getActualStoragePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 397
    .local v27, useStoragePath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, ""

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 405
    .local v19, fullPath:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 407
    .local v25, timestart:J
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v14, destination:Ljava/io/File;
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 410
    .local v18, fos:Ljava/io/FileOutputStream;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbs:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    const/16 v10, 0x8

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move/from16 v11, p8

    invoke-static/range {v5 .. v11}, Lcom/spritefish/camera/Util;->decodeYUVSmaller([I[BIILcom/spritefish/camera/RotationManager$Rotation;II)V

    .line 421
    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-eq v0, v5, :cond_1

    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbs:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    div-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    div-int/lit8 v7, v7, 0x8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 440
    .local v12, b:Landroid/graphics/Bitmap;
    :goto_1
    new-instance v17, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 441
    .local v17, exif:Landroid/media/ExifInterface;
    const/16 v22, 0x1

    .line 442
    .local v22, rotval:I
    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_2

    .line 443
    const/16 v22, 0x3

    .line 444
    :cond_2
    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_3

    .line 445
    const/16 v22, 0x8

    .line 446
    :cond_3
    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_4

    .line 447
    const/16 v22, 0x1

    .line 448
    :cond_4
    sget-object v5, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    move-object/from16 v0, p4

    if-ne v0, v5, :cond_5

    .line 449
    const/16 v22, 0x6

    .line 451
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 452
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 454
    const/4 v5, 0x1

    move/from16 v0, p8

    if-ne v0, v5, :cond_6

    .line 456
    const/4 v5, 0x6

    move/from16 v0, v22

    if-ne v0, v5, :cond_c

    .line 457
    const/16 v22, 0x8

    .line 462
    :cond_6
    :goto_2
    const-string v5, "Orientation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v15, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 466
    .local v15, df:Ljava/text/SimpleDateFormat;
    const-string v5, "DateTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v5, "Make"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Fast Burst Camera for Android "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Fast Burst Camera for Android "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-wide/16 v5, 0x3e8

    rem-long v20, p2, v5

    .line 470
    .local v20, ms:J
    const-string v5, "SubsecTimeOriginal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {v17 .. v17}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 472
    if-eqz p6, :cond_7

    .line 473
    const/4 v5, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v12, v1, v5}, Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;->handlePicture(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 474
    :cond_7
    const/4 v12, 0x0

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v23, v5, v25

    .line 479
    .local v23, timeSpent:J
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isTrialEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 481
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v23, v5, v25

    .line 486
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v5}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v12           #b:Landroid/graphics/Bitmap;
    .end local v14           #destination:Ljava/io/File;
    .end local v15           #df:Ljava/text/SimpleDateFormat;
    .end local v17           #exif:Landroid/media/ExifInterface;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v20           #ms:J
    .end local v22           #rotval:I
    .end local v23           #timeSpent:J
    .end local v25           #timestart:J
    :cond_9
    :goto_3
    return-object v19

    .line 398
    .end local v19           #fullPath:Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 423
    .restart local v14       #destination:Ljava/io/File;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #fullPath:Ljava/lang/String;
    .restart local v25       #timestart:J
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbs:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    div-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    div-int/lit8 v7, v7, 0x8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 459
    .restart local v12       #b:Landroid/graphics/Bitmap;
    .restart local v17       #exif:Landroid/media/ExifInterface;
    .restart local v22       #rotval:I
    :cond_c
    const/16 v5, 0x8

    move/from16 v0, v22

    if-ne v0, v5, :cond_6

    .line 460
    const/16 v22, 0x6

    goto/16 :goto_2

    .line 489
    .end local v12           #b:Landroid/graphics/Bitmap;
    .end local v14           #destination:Ljava/io/File;
    .end local v17           #exif:Landroid/media/ExifInterface;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v22           #rotval:I
    .end local v25           #timestart:J
    :catch_0
    move-exception v16

    .line 490
    .local v16, e:Ljava/lang/Exception;
    const-string v19, ""

    .line 491
    const-string v5, "insta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error writing file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/spritefish/camera/Util;->whoCalledMe(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->makeErrorToast()V

    .line 493
    const-string v5, "save"

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/bugsense/trace/BugSenseHandler;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method


# virtual methods
.method public checkIfDeleted(Ljava/lang/String;)V
    .locals 2
    .parameter "fullPath"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method public ensureMediaScannerStarted()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 912
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 915
    :cond_0
    return-void
.end method

.method public ensureMediaScannerStopped()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 924
    :cond_0
    return-void
.end method

.method public getActualStoragePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "timestamp"
    .parameter "useTag"

    .prologue
    const/4 v6, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSaveLocation()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, storagePath:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 517
    .local v2, useStoragePath:Ljava/lang/String;
    const-string v3, "datesubfolder"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->shortdateFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .end local p3
    :goto_2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 536
    :cond_0
    return-object v2

    .line 519
    .restart local p3
    :cond_1
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 524
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p3, ""

    .end local p3
    :cond_4
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getBam()Lcom/spritefish/camera/memory/NewByteArrayManager;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not get byte array manager - initialize not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    return-object v0
.end method

.method public getBm()Lcom/spritefish/camera/memory/BufferManager;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not get buffer manager - initialize not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bm:Lcom/spritefish/camera/memory/BufferManager;

    return-object v0
.end method

.method public getInfoBoxString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 680
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 684
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "labelprefix"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, label:Ljava/lang/String;
    const-string v2, "Fast Burst Camera\n\n"

    .line 687
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Buffers :\t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v4}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Resolution :\t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ExternalCacheDir :\t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Save location :\t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getActualStoragePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Developed by : SpriteFish inc.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .end local v0           #label:Ljava/lang/String;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Not yet initialized"

    goto :goto_0
.end method

.method public getResolutions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->resolutions:[Ljava/lang/String;

    return-object v0
.end method

.method public getSaveLocation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 705
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 706
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "locationtype"

    const-string v6, "default"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, locationType:Ljava/lang/String;
    const-string v5, "gallery"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 710
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 712
    .local v3, sdcard:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, storagePath:Ljava/lang/String;
    const-string v5, "insta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PATH = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v3           #sdcard:Ljava/io/File;
    .end local v4           #storagePath:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 717
    :cond_0
    const-string v5, "custom"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 719
    const-string v5, "customlocation"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, customLocation:Ljava/lang/String;
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 723
    goto :goto_0

    .line 727
    .end local v0           #customLocation:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 728
    .restart local v3       #sdcard:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "UltraBurstCamera"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    .restart local v4       #storagePath:Ljava/lang/String;
    goto :goto_0

    .line 728
    .end local v4           #storagePath:Ljava/lang/String;
    :cond_3
    const-string v5, "FastBurstCamera"

    goto :goto_1
.end method

.method public getSelectedSize(Landroid/hardware/Camera;)Landroid/hardware/Camera$Size;
    .locals 10
    .parameter "camera"

    .prologue
    .line 636
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 637
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraId:I

    .line 640
    .local v0, camId:I
    const-string v6, "resolutionPref"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, res:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 642
    const-string v4, ""

    .line 644
    :cond_0
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 646
    sget v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayWidth:I

    sget v7, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayHeight:I

    invoke-static {p1, v6, v7}, Lcom/spritefish/camera/Util;->getLargestPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;

    move-result-object v6

    sput-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    if-nez v0, :cond_1

    .line 649
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "resolutionPref"

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    :cond_1
    :goto_0
    :try_start_2
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    .line 673
    .end local v0           #camId:I
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #res:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 651
    .restart local v0       #camId:I
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #res:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 653
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "insta"

    const-string v7, "failed to set resolutionPref"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 669
    .end local v0           #camId:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #res:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 671
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "save"

    invoke-static {v6, v1}, Lcom/bugsense/trace/BugSenseHandler;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 672
    sget v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayWidth:I

    sget v7, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayHeight:I

    invoke-static {p1, v6, v7}, Lcom/spritefish/camera/Util;->getLargestPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;

    move-result-object v6

    sput-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    .line 673
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    goto :goto_1

    .line 657
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #camId:I
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #res:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 658
    .local v5, w:Ljava/lang/String;
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v2, v6, v7

    .line 661
    .local v2, h:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {p1, v6, v7}, Lcom/spritefish/camera/Util;->isValidPreviewSize(Landroid/hardware/Camera;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 663
    sget v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayWidth:I

    sget v7, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayHeight:I

    invoke-static {p1, v6, v7}, Lcom/spritefish/camera/Util;->getLargestPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;

    move-result-object v6

    sput-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    .line 664
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    goto :goto_1

    .line 666
    :cond_3
    new-instance v6, Landroid/hardware/Camera$Size;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    sput-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;

    .line 667
    sget-object v6, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedSize:Landroid/hardware/Camera$Size;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public getWriteQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public initResolutions(Z)V
    .locals 8
    .parameter "highres"

    .prologue
    .line 612
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v2, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, i:I
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->supportedSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 623
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->resolutions:[Ljava/lang/String;

    .line 624
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 627
    return-void

    .line 614
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 616
    .local v3, size:Landroid/hardware/Camera$Size;
    if-nez p1, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_1

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    const v7, 0x7a120

    if-le v6, v7, :cond_1

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "skipping "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 625
    .local v4, string:Ljava/lang/String;
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->resolutions:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v4, v6, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public initialize(Landroid/hardware/Camera;)V
    .locals 15
    .parameter "camera"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->cleanSafelocation(Landroid/content/Context;)V

    .line 206
    new-instance v7, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v7, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 208
    .local v7, bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-static {v7}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->isTrialEnabled(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)Z

    move-result v0

    sput-boolean v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->trial:Z

    .line 211
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 212
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayWidth:I

    .line 213
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayHeight:I

    .line 214
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh rate is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->supportedSizes:Ljava/util/List;

    .line 217
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 218
    .local v11, prefs:Landroid/content/SharedPreferences;
    const-string v0, "memoryPref"

    const-string v1, "-100"

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, memPref:Ljava/lang/String;
    const-string v0, "highres"

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 221
    .local v4, highResEnabled:Z
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, memModifier:I
    const/16 v5, -0x64

    .line 223
    const/4 v9, 0x1

    .line 225
    .local v9, initArrays:Z
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual/range {p0 .. p1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSelectedSize(Landroid/hardware/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 229
    .local v13, selected:Landroid/hardware/Camera$Size;
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    iget v1, v13, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    iget v1, v13, Landroid/hardware/Camera$Size;->width:I

    if-eq v0, v1, :cond_6

    .line 232
    :cond_0
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    .line 233
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    .line 234
    new-instance v0, Lcom/spritefish/camera/memory/BufferManager;

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->getTempBufCount()I

    move-result v1

    iget v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/spritefish/camera/memory/BufferManager;-><init>(III)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bm:Lcom/spritefish/camera/memory/BufferManager;

    .line 236
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getWriteQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 237
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->deallocateArrays()V

    .line 244
    .end local v13           #selected:Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 248
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSaveLocation()Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v14, storagePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 250
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->preferences:Landroid/content/SharedPreferences;

    .line 252
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "mediascanner"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 255
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 259
    :cond_2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    .line 261
    invoke-virtual {p0, v4}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initResolutions(Z)V

    .line 262
    sput v5, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->selectedMemModifier:I

    .line 263
    invoke-virtual/range {p0 .. p1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSelectedSize(Landroid/hardware/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 265
    .restart local v13       #selected:Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    .line 266
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    .line 267
    new-instance v0, Lcom/spritefish/camera/memory/BufferManager;

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->getTempBufCount()I

    move-result v1

    iget v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/spritefish/camera/memory/BufferManager;-><init>(III)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bm:Lcom/spritefish/camera/memory/BufferManager;

    .line 269
    const/16 v0, -0x64

    if-ne v5, v0, :cond_3

    .line 271
    const-string v0, "nativearrays"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 276
    :cond_3
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    new-instance v6, Lcom/spritefish/camera/memory/DirectBuffersArrays;

    invoke-direct {v6}, Lcom/spritefish/camera/memory/DirectBuffersArrays;-><init>()V

    .line 282
    .local v6, bami:Lcom/spritefish/camera/memory/BAMInterface;
    :goto_1
    new-instance v0, Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-direct {v0, v6}, Lcom/spritefish/camera/memory/NewByteArrayManager;-><init>(Lcom/spritefish/camera/memory/BAMInterface;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    .line 286
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeWorker:Ljava/lang/Thread;

    if-nez v0, :cond_4

    .line 291
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$2;-><init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeWorker:Ljava/lang/Thread;

    .line 368
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 372
    .end local v6           #bami:Lcom/spritefish/camera/memory/BAMInterface;
    .end local v13           #selected:Landroid/hardware/Camera$Size;
    .end local v14           #storagePath:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 374
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbi:[I

    .line 375
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbs:[I

    .line 376
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    iget v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->width:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->height:I

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/spritefish/camera/memory/NewByteArrayManager;->allocateArrays(IIZZI)V

    .line 379
    :cond_5
    const-string v0, "preshotbuffersize"

    const/16 v1, 0x19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 380
    .local v12, preshotbuffers:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v0, v12}, Lcom/spritefish/camera/memory/NewByteArrayManager;->setPreshotQueueSize(I)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initTime:J

    .line 385
    return-void

    .line 240
    .end local v12           #preshotbuffers:I
    .restart local v13       #selected:Landroid/hardware/Camera$Size;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 279
    .restart local v14       #storagePath:Ljava/lang/String;
    :cond_7
    new-instance v6, Lcom/spritefish/fbc/NativeArrays;

    invoke-direct {v6}, Lcom/spritefish/fbc/NativeArrays;-><init>()V

    .restart local v6       #bami:Lcom/spritefish/camera/memory/BAMInterface;
    goto/16 :goto_1
.end method

.method public isLiteVersion()Z
    .locals 2

    .prologue
    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, pName:Ljava/lang/String;
    const-string v1, "lite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public isNextVersion()Z
    .locals 3

    .prologue
    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, pName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->preshotAlwaysEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSavingIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->currentWritingByteArray:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public isUltraVersion()Z
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, pName:Ljava/lang/String;
    const-string v1, "ultra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public isWriteQueueEmpty()Z
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public makeErrorToast()V
    .locals 4

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->frontActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->frontActivity:Landroid/app/Activity;

    new-instance v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$3;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$3;-><init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, e1:Ljava/lang/Exception;
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error making toast "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public newPictureRegistered(JJ)V
    .locals 5
    .parameter "burstid"
    .parameter "pictureid"

    .prologue
    .line 860
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    monitor-enter v2

    .line 861
    :try_start_0
    const-string v1, "insta"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new picture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    monitor-exit v2

    .line 867
    return-void

    .line 862
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/activities/NewPictureListener;

    .line 863
    .local v0, listener:Lcom/spritefish/fastburstcamera/activities/NewPictureListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/spritefish/fastburstcamera/activities/NewPictureListener;->onNewPicture(JJ)V

    goto :goto_0

    .line 860
    .end local v0           #listener:Lcom/spritefish/fastburstcamera/activities/NewPictureListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 810
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config changed : orient = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 744
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 746
    const-string v8, "onCreate application"

    invoke-direct {p0, v8}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 747
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 748
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v8, "memoryPref"

    const-string v9, "-100"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, p:Ljava/lang/String;
    invoke-static {v6}, Lcom/spritefish/camera/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 751
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 752
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "memoryPref"

    const-string v9, "-100"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :try_start_0
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const-string v8, "firststart"

    const-string v9, "-1"

    invoke-virtual {v0, v8, v9}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, firstStart:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 760
    .local v3, firstStartN:J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_2

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 763
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->findOldestPicture()Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v5

    .line 764
    .local v5, latestPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v5, :cond_1

    .line 765
    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getTimestamp()J

    move-result-wide v3

    .line 766
    :cond_1
    const-string v8, "firststart"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v0           #bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    .end local v2           #firstStart:Ljava/lang/String;
    .end local v3           #firstStartN:J
    .end local v5           #latestPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 776
    const-string v8, "2be440a1"

    invoke-static {p0, v8}, Lcom/bugsense/trace/BugSenseHandler;->setup(Landroid/content/Context;Ljava/lang/String;)Z

    .line 778
    :cond_3
    return-void

    .line 770
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 782
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 784
    const-string v0, "System low memory. Suicide!"

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 786
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 2

    .prologue
    .line 899
    const-string v0, "insta"

    const-string v1, "connected to media scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 904
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media scan completed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 790
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 791
    const-string v0, "onTerminate application"

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->log(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 798
    :cond_0
    return-void
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 943
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->frontActivity:Landroid/app/Activity;

    .line 945
    return-void
.end method

.method public registerNewPictureListener(Lcom/spritefish/fastburstcamera/activities/NewPictureListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    monitor-exit v1

    .line 856
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPictureHandler(Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->rgbHandler:Lcom/spritefish/fastburstcamera/activities/RgbCallbackHandler;

    .line 177
    return-void
.end method

.method public registerRecorderStateHandler(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/spritefish/fastburstcamera/activities/RecordMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, recording:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/spritefish/fastburstcamera/activities/RecordMode;>;"
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->recorderStateHandler:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0
.end method

.method public setPreviewControl(Lcom/spritefish/camera/controls/PreviewControl;)V
    .locals 0
    .parameter "previewControl"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->activePreviewControl:Lcom/spritefish/camera/controls/PreviewControl;

    .line 167
    return-void
.end method

.method public switchCamera()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraId:I

    .line 950
    iget v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->cameraId:I

    return v0

    .line 949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FastBurstCameraApplication - init time = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BAM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getStats()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unregisterNewPictureListener(Lcom/spritefish/fastburstcamera/activities/NewPictureListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 870
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPicListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 870
    monitor-exit v1

    .line 875
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
