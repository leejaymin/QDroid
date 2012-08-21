.class public Ledu/umich/PowerTutor/service/PowerEstimator;
.super Ljava/lang/Object;
.source "PowerEstimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ALL_COMPONENTS:I = -0x1

.field private static final DEFLATE_DICTIONARY:Ljava/lang/String; = "onoffidleoff-hookringinglowairplane-modebatteryedgeGPRS3Gunknownin-serviceemergency-onlyout-of-servicepower-offdisconnectedconnectingassociateconnectedsuspendedphone-callservicenetworkbegin.0123456789GPSAudioWifi3GLCDCPU-power "

.field public static final ITERATION_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerEstimator"


# instance fields
.field private context:Ledu/umich/PowerTutor/service/UMLoggerService;

.field private deflateStream:Ljava/util/zip/DeflaterOutputStream;

.field private fileWriteLock:Ljava/lang/Object;

.field private histories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ledu/umich/PowerTutor/util/HistoryBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private iterationLock:Ljava/lang/Object;

.field private lastWrittenIteration:J

.field private logStream:Ljava/io/OutputStreamWriter;

.field private logUploader:Ledu/umich/PowerTutor/service/LogUploader;

.field private oledScoreHistory:Ledu/umich/PowerTutor/util/HistoryBuffer;

.field private plugged:Z

.field private powerComponents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ledu/umich/PowerTutor/components/PowerComponent;",
            ">;"
        }
    .end annotation
.end field

.field private powerFunctions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ledu/umich/PowerTutor/phone/PowerFunction;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private uidAppIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->fileWriteLock:Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->iterationLock:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 99
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->prefs:Landroid/content/SharedPreferences;

    .line 100
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    .line 101
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerFunctions:Ljava/util/Vector;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    .line 103
    iget-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    iget-object v2, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerFunctions:Ljava/util/Vector;

    invoke-static {p1, v1, v2}, Ledu/umich/PowerTutor/phone/PhoneSelector;->generateComponents(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 105
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v1, Ledu/umich/PowerTutor/util/HistoryBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ledu/umich/PowerTutor/util/HistoryBuffer;-><init>(I)V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->oledScoreHistory:Ledu/umich/PowerTutor/util/HistoryBuffer;

    .line 111
    new-instance v1, Ledu/umich/PowerTutor/service/LogUploader;

    invoke-direct {v1, p1}, Ledu/umich/PowerTutor/service/LogUploader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    .line 112
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->openLog(Z)V

    .line 113
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    new-instance v2, Ledu/umich/PowerTutor/util/HistoryBuffer;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Ledu/umich/PowerTutor/util/HistoryBuffer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private openLog(Z)V
    .locals 7
    .parameter "init"

    .prologue
    .line 118
    :try_start_0
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 119
    const-string v4, "PowerTrace.log"

    .line 118
    invoke-virtual {v3, v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, logFilename:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "sendPermission"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 125
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    invoke-virtual {v3, v2}, Ledu/umich/PowerTutor/service/LogUploader;->upload(Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 128
    .local v0, deflater:Ljava/util/zip/Deflater;
    const-string v3, "onoffidleoff-hookringinglowairplane-modebatteryedgeGPRS3Gunknownin-serviceemergency-onlyout-of-servicepower-offdisconnectedconnectingassociateconnectedsuspendedphone-callservicenetworkbegin.0123456789GPSAudioWifi3GLCDCPU-power "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 129
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    .line 130
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    iput-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->deflateStream:Ljava/util/zip/DeflaterOutputStream;

    .line 131
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->deflateStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .end local v2           #logFilename:Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    .line 134
    const-string v3, "PowerEstimator"

    const-string v4, "Failed to open log file.  No log will be kept."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sumArray([JI)J
    .locals 5
    .parameter "A"
    .parameter "ignoreMask"

    .prologue
    .line 556
    const-wide/16 v1, 0x0

    .line 557
    .local v1, ret:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 562
    return-wide v1

    .line 558
    :cond_0
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    .line 559
    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    .line 557
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getComponentHistory(IIIJ)[I
    .locals 7
    .parameter "count"
    .parameter "componentId"
    .parameter "uid"
    .parameter "iteration"

    .prologue
    .line 479
    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-nez v5, :cond_0

    iget-object v6, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->iterationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 480
    :try_start_0
    iget-wide p4, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->lastWrittenIteration:J

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_0
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 483
    .local v1, components:I
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 484
    new-array v4, p1, [I

    .line 485
    .local v4, result:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 494
    .end local v2           #i:I
    .end local v4           #result:[I
    :goto_1
    return-object v4

    .line 480
    .end local v1           #components:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 486
    .restart local v1       #components:I
    .restart local v2       #i:I
    .restart local v4       #result:[I
    :cond_1
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v5, p3, p4, p5, p1}, Ledu/umich/PowerTutor/util/HistoryBuffer;->get(IJI)[I

    move-result-object v0

    .line 487
    .local v0, comp:[I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-lt v3, p1, :cond_2

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_2
    aget v5, v4, v3

    aget v6, v0, v3

    add-int/2addr v5, v6

    aput v5, v4, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 493
    .end local v0           #comp:[I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #result:[I
    :cond_3
    if-ltz p2, :cond_4

    if-gt v1, p2, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 494
    :cond_5
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v5, p3, p4, p5, p1}, Ledu/umich/PowerTutor/util/HistoryBuffer;->get(IJI)[I

    move-result-object v4

    goto :goto_1
.end method

.method public getComponents()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 448
    .local v0, components:I
    new-array v2, v0, [Ljava/lang/String;

    .line 449
    .local v2, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 452
    return-object v2

    .line 450
    :cond_0
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getComponentsMaxPower()[I
    .locals 6

    .prologue
    .line 456
    iget-object v4, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-static {v4}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getConstants(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-result-object v1

    .line 457
    .local v1, constants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    iget-object v4, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 458
    .local v0, components:I
    new-array v3, v0, [I

    .line 459
    .local v3, ret:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 463
    return-object v3

    .line 461
    :cond_0
    iget-object v4, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-interface {v1, v4}, Ledu/umich/PowerTutor/phone/PhoneConstants;->getMaxPower(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    aput v4, v3, v2

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMeans(II)[J
    .locals 6
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getTotals(II)[J

    move-result-object v1

    .line 519
    .local v1, ret:[J
    invoke-virtual {p0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getRuntime(II)J

    move-result-wide v2

    .line 520
    .local v2, runningTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    .line 521
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_1

    .line 524
    return-object v1

    .line 522
    :cond_1
    aget-wide v4, v1, v0

    div-long/2addr v4, v2

    aput-wide v4, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNoUidMask()I
    .locals 4

    .prologue
    .line 467
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 468
    .local v0, components:I
    const/4 v2, 0x0

    .line 469
    .local v2, ret:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 474
    return v2

    .line 470
    :cond_0
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/components/PowerComponent;->hasUidInformation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 469
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRuntime(II)J
    .locals 10
    .parameter "uid"
    .parameter "windowType"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 508
    const-wide/16 v4, 0x0

    .line 509
    .local v4, runningTime:J
    iget-object v6, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    .line 510
    .local v0, components:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 514
    mul-long v6, v4, v8

    div-long/2addr v6, v8

    return-wide v6

    .line 511
    :cond_0
    iget-object v6, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v6, p1, p2}, Ledu/umich/PowerTutor/util/HistoryBuffer;->getCount(II)J

    move-result-wide v1

    .line 512
    .local v1, entries:J
    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    move-wide v4, v1

    .line 510
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getTotals(II)[J
    .locals 7
    .parameter "uid"
    .parameter "windowType"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 498
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 499
    .local v0, components:I
    new-array v2, v0, [J

    .line 500
    .local v2, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 504
    return-object v2

    .line 501
    :cond_0
    iget-object v3, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v3, p1, p2}, Ledu/umich/PowerTutor/util/HistoryBuffer;->getTotal(II)J

    move-result-wide v3

    .line 502
    mul-long/2addr v3, v5

    div-long/2addr v3, v5

    .line 501
    aput-wide v3, v2, v1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getUidExtra(Ljava/lang/String;I)J
    .locals 11
    .parameter "name"
    .parameter "uid"

    .prologue
    const/4 v7, 0x3

    .line 566
    const-string v5, "OLEDSCORE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->oledScoreHistory:Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v5, p2, v7}, Ledu/umich/PowerTutor/util/HistoryBuffer;->getCount(II)J

    move-result-wide v0

    .line 568
    .local v0, entries:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_0

    const-wide/16 v5, -0x2

    .line 577
    .end local v0           #entries:J
    :goto_0
    return-wide v5

    .line 569
    .restart local v0       #entries:J
    :cond_0
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->oledScoreHistory:Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual {v5, p2, v7}, Ledu/umich/PowerTutor/util/HistoryBuffer;->getTotal(II)J

    move-result-wide v5

    long-to-double v5, v5

    .line 570
    const-wide v7, 0x408f400000000000L

    .line 569
    div-double v3, v5, v7

    .line 571
    .local v3, result:D
    long-to-double v5, v0

    div-double/2addr v3, v5

    .line 572
    iget-object v5, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-static {v5}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getConstants(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-result-object v2

    .line 573
    .local v2, phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    const-wide v5, 0x406fe00000000000L

    const-string v7, "OLED"

    invoke-interface {v2, v7}, Ledu/umich/PowerTutor/phone/PhoneConstants;->getMaxPower(Ljava/lang/String;)D

    move-result-wide v7

    .line 574
    invoke-interface {v2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->oledBasePower()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    .line 575
    const-wide/high16 v5, 0x4059

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    goto :goto_0

    .line 577
    .end local v0           #entries:J
    .end local v2           #phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    .end local v3           #result:D
    :cond_1
    const-wide/16 v5, -0x1

    goto :goto_0
.end method

.method public getUidInfo(II)[Ledu/umich/PowerTutor/service/UidInfo;
    .locals 23
    .parameter "windowType"
    .parameter "ignoreMask"

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->iterationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 530
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v11, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->lastWrittenIteration:J

    .line 529
    .local v11, iteration:J
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v9

    .line 533
    .local v9, components:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 534
    const/4 v13, 0x0

    .line 535
    .local v13, pos:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v15, v3, [Ledu/umich/PowerTutor/service/UidInfo;

    .line 536
    .local v15, result:[Ledu/umich/PowerTutor/service/UidInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    move v14, v13

    .end local v13           #pos:I
    .local v14, pos:I
    :goto_0
    :try_start_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v15

    .line 529
    .end local v9           #components:I
    .end local v11           #iteration:J
    .end local v14           #pos:I
    .end local v15           #result:[Ledu/umich/PowerTutor/service/UidInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 536
    .restart local v9       #components:I
    .restart local v11       #iteration:J
    .restart local v14       #pos:I
    .restart local v15       #result:[Ledu/umich/PowerTutor/service/UidInfo;
    :cond_0
    :try_start_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 537
    .local v18, uid:Ljava/lang/Integer;
    invoke-static {}, Ledu/umich/PowerTutor/service/UidInfo;->obtain()Ledu/umich/PowerTutor/service/UidInfo;

    move-result-object v2

    .line 538
    .local v2, info:Ledu/umich/PowerTutor/service/UidInfo;
    const/4 v4, 0x0

    .line 539
    .local v4, currentPower:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v9, :cond_1

    .line 544
    const-wide/high16 v16, 0x3ff0

    .line 545
    .local v16, scale:D
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 546
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->getTotals(II)[J

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->sumArray([JI)J

    move-result-wide v5

    .line 547
    const-wide/16 v7, 0x3e8

    .line 546
    mul-long/2addr v5, v7

    .line 547
    const-wide/16 v7, 0x3e8

    .line 546
    div-long/2addr v5, v7

    .line 548
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->getRuntime(II)J

    move-result-wide v7

    const-wide/16 v21, 0x3e8

    mul-long v7, v7, v21

    const-wide/16 v21, 0x3e8

    div-long v7, v7, v21

    .line 545
    invoke-virtual/range {v2 .. v8}, Ledu/umich/PowerTutor/service/UidInfo;->init(IIJJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 549
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pos:I
    .restart local v13       #pos:I
    :try_start_5
    aput-object v2, v15, v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v14, v13

    .end local v13           #pos:I
    .restart local v14       #pos:I
    goto :goto_0

    .line 540
    .end local v16           #scale:D
    :cond_1
    const/4 v3, 0x1

    shl-int/2addr v3, v10

    and-int v3, v3, p2

    if-nez v3, :cond_2

    .line 541
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/util/HistoryBuffer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v11, v12, v6}, Ledu/umich/PowerTutor/util/HistoryBuffer;->get(IJI)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v3, v3, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/2addr v4, v3

    .line 539
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 533
    .end local v2           #info:Ledu/umich/PowerTutor/service/UidInfo;
    .end local v4           #currentPower:I
    .end local v10           #i:I
    .end local v14           #pos:I
    .end local v15           #result:[Ledu/umich/PowerTutor/service/UidInfo;
    .end local v18           #uid:Ljava/lang/Integer;
    .restart local v13       #pos:I
    :catchall_1
    move-exception v3

    :goto_2
    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .end local v13           #pos:I
    .restart local v14       #pos:I
    .restart local v15       #result:[Ledu/umich/PowerTutor/service/UidInfo;
    :catchall_2
    move-exception v3

    move v13, v14

    .end local v14           #pos:I
    .restart local v13       #pos:I
    goto :goto_2
.end method

.method public plug(Z)V
    .locals 1
    .parameter "plugged"

    .prologue
    .line 433
    iget-object v0, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    invoke-virtual {v0, p1}, Ledu/umich/PowerTutor/service/LogUploader;->plug(Z)V

    .line 434
    return-void
.end method

.method public run()V
    .locals 57

    .prologue
    .line 141
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v45

    .line 142
    .local v45, sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    .line 143
    .local v42, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v18

    .line 145
    .local v18, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v21

    .line 146
    .local v21, components:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 147
    .local v15, beginTime:J
    const/16 v32, 0x0

    .local v32, i:I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 151
    move/from16 v0, v21

    new-array v0, v0, [Ledu/umich/PowerTutor/service/IterationData;

    move-object/from16 v26, v0

    .line 153
    .local v26, dataTemp:[Ledu/umich/PowerTutor/service/IterationData;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-static {v4}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getConstants(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-result-object v41

    .line 154
    .local v41, phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    const/4 v4, 0x4

    new-array v0, v4, [J

    move-object/from16 v36, v0

    .line 156
    .local v36, memInfo:[J
    const/16 v40, -0x1

    .line 157
    .local v40, oledId:I
    const/16 v32, 0x0

    :goto_1
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 165
    :goto_2
    const/16 v28, 0x1

    .line 166
    .local v28, firstLogIteration:Z
    const-wide/16 v33, -0x1

    .local v33, iter:J
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 402
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-static {v4}, Ledu/umich/PowerTutor/widget/PowerWidget;->updateWidgetDone(Landroid/content/Context;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/LogUploader;->interrupt()V

    .line 406
    const/16 v32, 0x0

    :goto_5
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_29

    .line 410
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/LogUploader;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    .line 413
    :goto_6
    const/16 v32, 0x0

    :goto_7
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_2a

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->fileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 424
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v4, :cond_0

    .line 425
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 423
    :cond_0
    :goto_8
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 430
    return-void

    .line 148
    .end local v26           #dataTemp:[Ledu/umich/PowerTutor/service/IterationData;
    .end local v28           #firstLogIteration:Z
    .end local v33           #iter:J
    .end local v36           #memInfo:[J
    .end local v40           #oledId:I
    .end local v41           #phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    const-wide/16 v5, 0x3e8

    move-wide v0, v15

    invoke-virtual {v4, v0, v1, v5, v6}, Ledu/umich/PowerTutor/components/PowerComponent;->init(JJ)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->start()V

    .line 147
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_0

    .line 158
    .restart local v26       #dataTemp:[Ledu/umich/PowerTutor/service/IterationData;
    .restart local v36       #memInfo:[J
    .restart local v40       #oledId:I
    .restart local v41       #phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    :cond_2
    const-string v5, "OLED"

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    move/from16 v40, v32

    .line 160
    goto/16 :goto_2

    .line 157
    :cond_3
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 167
    .restart local v28       #firstLogIteration:Z
    .restart local v33       #iter:J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 172
    .local v23, curTime:J
    const-wide/16 v4, 0x1

    add-long v4, v4, v33

    .line 173
    sub-long v6, v23, v15

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 172
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    .line 176
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 177
    const-wide/16 v4, 0x1

    add-long v4, v4, v33

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v15

    sub-long v4, v4, v23

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 182
    const/16 v47, 0x0

    .line 183
    .local v47, totalPower:I
    const/16 v32, 0x0

    :goto_9
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->fileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 214
    const/16 v32, 0x0

    :goto_a
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 213
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->iterationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 245
    :try_start_8
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledu/umich/PowerTutor/service/PowerEstimator;->lastWrittenIteration:J

    .line 244
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 249
    const-wide/16 v4, 0xf

    rem-long v4, v33, v4

    const-wide/16 v6, 0xe

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 250
    const-wide v10, 0x3f947ae147ae147bL

    .line 251
    .local v10, POLY_WEIGHT:D
    const/16 v22, 0x0

    .line 252
    .local v22, count:I
    const/16 v5, 0x12c

    const/4 v6, -0x1

    .line 253
    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v4, p0

    .line 252
    invoke-virtual/range {v4 .. v9}, Ledu/umich/PowerTutor/service/PowerEstimator;->getComponentHistory(IIIJ)[I

    move-result-object v30

    .line 254
    .local v30, history:[I
    const-wide/16 v51, 0x0

    .line 255
    .local v51, weightedAvgPower:D
    move-object/from16 v0, v30

    array-length v4, v0

    add-int/lit8 v32, v4, -0x1

    :goto_b
    if-gez v32, :cond_21

    .line 262
    const-wide/high16 v13, -0x4010

    .line 263
    .local v13, avgPower:D
    if-eqz v22, :cond_5

    .line 265
    const-wide/high16 v4, 0x3ff0

    const-wide v6, 0x3fef5c28f5c28f5cL

    move/from16 v0, v22

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 264
    div-double v13, v51, v4

    .line 267
    :cond_5
    const-wide v4, 0x408f400000000000L

    mul-double/2addr v13, v4

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    const-wide/high16 v5, 0x4020

    const-wide/high16 v7, 0x3ff0

    .line 270
    const-wide/high16 v53, 0x4020

    mul-double v53, v53, v13

    invoke-interface/range {v41 .. v41}, Ledu/umich/PowerTutor/phone/PhoneConstants;->maxPower()D

    move-result-wide v55

    div-double v53, v53, v55

    add-double v7, v7, v53

    .line 269
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5, v13, v14}, Ledu/umich/PowerTutor/service/UMLoggerService;->updateNotification(ID)V

    .line 275
    .end local v10           #POLY_WEIGHT:D
    .end local v13           #avgPower:D
    .end local v22           #count:I
    .end local v30           #history:[I
    .end local v51           #weightedAvgPower:D
    :cond_6
    const-wide/16 v4, 0x3c

    rem-long v4, v33, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Ledu/umich/PowerTutor/widget/PowerWidget;->updateWidget(Landroid/content/Context;Ledu/umich/PowerTutor/service/PowerEstimator;)V

    .line 279
    :cond_7
    const-wide/16 v4, 0x12c

    rem-long v4, v33, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 280
    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "batt_current "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->getCurrent()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 283
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->hasTemp()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "batt_temp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->getTemp()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 286
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "batt_charge "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 290
    :cond_a
    const-wide/16 v4, 0x708

    rem-long v4, v33, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 292
    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    .line 291
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_23

    .line 293
    const-string v4, "setting_brightness automatic\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 303
    :cond_b
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 304
    const-string v5, "screen_off_timeout"

    const/4 v6, -0x1

    .line 302
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    .line 305
    .local v46, timeout:I
    const/4 v4, -0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_c

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting_screen_timeout "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 309
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 310
    const-string v5, "http_proxy"

    .line 308
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 311
    .local v31, httpProxy:Ljava/lang/String;
    if-eqz v31, :cond_d

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting_httpproxy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 319
    .end local v31           #httpProxy:Ljava/lang/String;
    .end local v46           #timeout:I
    :cond_d
    const/16 v29, 0x0

    .line 320
    .local v29, hasMem:Z
    const-wide/16 v4, 0xa

    rem-long v4, v33, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_e

    .line 321
    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/util/SystemInfo;->getMemInfo([J)Z

    move-result v29

    .line 324
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->fileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 325
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_14

    .line 326
    if-eqz v28, :cond_12

    .line 327
    const/16 v28, 0x0

    .line 328
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "time "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 329
    new-instance v19, Ljava/util/GregorianCalendar;

    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;-><init>()V

    .line 330
    .local v19, cal:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "localtime_offset "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    const/16 v7, 0xf

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 332
    const/16 v8, 0x10

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 331
    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "model "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v41 .. v41}, Ledu/umich/PowerTutor/phone/PhoneConstants;->modelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    const-string v6, "notifications-active\n"

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 337
    :cond_f
    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->hasFullCapacity()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "batt_full_capacity "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ledu/umich/PowerTutor/util/BatteryStats;->getFullCapacity()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 339
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 341
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 342
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    .line 341
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 351
    .end local v19           #cal:Ljava/util/Calendar;
    :cond_12
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "total-power "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v47

    int-to-float v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 353
    if-eqz v29, :cond_13

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "meminfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-wide v7, v36, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v7, v36, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 355
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-wide v7, v36, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-wide v7, v36, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 357
    :cond_13
    const/16 v32, 0x0

    :goto_e
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_25

    .line 381
    :cond_14
    :goto_f
    const-wide/16 v6, 0xf

    :try_start_d
    rem-long v6, v33, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "sendPermission"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/LogUploader;->shouldUpload()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v4

    if-eqz v4, :cond_15

    .line 387
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 391
    :goto_10
    const/4 v4, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logUploader:Ledu/umich/PowerTutor/service/LogUploader;

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 393
    const-string v7, "PowerTrace.log"

    .line 392
    invoke-virtual {v6, v7}, Ledu/umich/PowerTutor/service/UMLoggerService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 393
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 392
    invoke-virtual {v4, v6}, Ledu/umich/PowerTutor/service/LogUploader;->upload(Ljava/lang/String;)V

    .line 394
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->openLog(Z)V

    .line 395
    const/16 v28, 0x1

    .line 324
    :cond_15
    monitor-exit v5

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v4

    .line 178
    .end local v29           #hasMem:Z
    .end local v47           #totalPower:I
    :catch_0
    move-exception v27

    .line 179
    .local v27, e:Ljava/lang/InterruptedException;
    goto/16 :goto_4

    .line 184
    .end local v27           #e:Ljava/lang/InterruptedException;
    .restart local v47       #totalPower:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ledu/umich/PowerTutor/components/PowerComponent;

    .line 185
    .local v20, comp:Ledu/umich/PowerTutor/components/PowerComponent;
    move-object/from16 v0, v20

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/components/PowerComponent;->getData(J)Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v25

    .line 186
    .local v25, data:Ledu/umich/PowerTutor/service/IterationData;
    aput-object v25, v26, v32

    .line 187
    if-nez v25, :cond_18

    .line 183
    :cond_17
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_9

    .line 193
    :cond_18
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/service/IterationData;->getUidPowerData()Landroid/util/SparseArray;

    move-result-object v50

    .line 194
    .local v50, uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    const/16 v35, 0x0

    .local v35, j:I
    :goto_11
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v35

    if-ge v0, v4, :cond_17

    .line 195
    move-object/from16 v0, v50

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 196
    .local v48, uid:I
    move-object/from16 v0, v50

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ledu/umich/PowerTutor/service/PowerData;

    .line 197
    .local v44, powerData:Ledu/umich/PowerTutor/service/PowerData;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerFunctions:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/phone/PowerFunction;

    move-object/from16 v0, v44

    invoke-interface {v4, v0}, Ledu/umich/PowerTutor/phone/PowerFunction;->calculate(Ledu/umich/PowerTutor/service/PowerData;)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v43, v0

    .line 198
    .local v43, power:I
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerData;->setCachedPower(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->histories:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/util/HistoryBuffer;

    move/from16 v0, v48

    move-wide/from16 v1, v33

    move/from16 v3, v43

    invoke-virtual {v4, v0, v1, v2, v3}, Ledu/umich/PowerTutor/util/HistoryBuffer;->add(IJI)V

    .line 200
    const/4 v4, -0x1

    move/from16 v0, v48

    if-ne v0, v4, :cond_19

    .line 201
    add-int v47, v47, v43

    .line 203
    :cond_19
    move/from16 v0, v32

    move/from16 v1, v40

    if-ne v0, v1, :cond_1a

    move-object/from16 v39, v44

    .line 204
    check-cast v39, Ledu/umich/PowerTutor/components/OLED$OledData;

    .line 205
    .local v39, oledData:Ledu/umich/PowerTutor/components/OLED$OledData;
    move-object/from16 v0, v39

    iget-wide v4, v0, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1a

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->oledScoreHistory:Ledu/umich/PowerTutor/util/HistoryBuffer;

    const-wide v5, 0x408f400000000000L

    move-object/from16 v0, v39

    iget-wide v7, v0, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move/from16 v0, v48

    move-wide/from16 v1, v33

    invoke-virtual {v4, v0, v1, v2, v5}, Ledu/umich/PowerTutor/util/HistoryBuffer;->add(IJI)V

    .line 194
    .end local v39           #oledData:Ledu/umich/PowerTutor/components/OLED$OledData;
    :cond_1a
    add-int/lit8 v35, v35, 0x1

    goto :goto_11

    .line 215
    .end local v20           #comp:Ledu/umich/PowerTutor/components/PowerComponent;
    .end local v25           #data:Ledu/umich/PowerTutor/service/IterationData;
    .end local v35           #j:I
    .end local v43           #power:I
    .end local v44           #powerData:Ledu/umich/PowerTutor/service/PowerData;
    .end local v48           #uid:I
    .end local v50           #uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :cond_1b
    :try_start_10
    aget-object v25, v26, v32

    .line 216
    .restart local v25       #data:Ledu/umich/PowerTutor/service/IterationData;
    if-nez v25, :cond_1d

    .line 214
    :cond_1c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_a

    .line 219
    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/service/IterationData;->getUidPowerData()Landroid/util/SparseArray;

    move-result-object v50

    .line 220
    .restart local v50       #uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    const/16 v35, 0x0

    .restart local v35       #j:I
    :goto_12
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v35

    if-ge v0, v4, :cond_1c

    .line 221
    move-object/from16 v0, v50

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 222
    .restart local v48       #uid:I
    const/16 v4, 0x2710

    move/from16 v0, v48

    if-ge v0, v4, :cond_1e

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_13
    add-int/lit8 v35, v35, 0x1

    goto :goto_12

    .line 228
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 229
    .local v12, appId:Ljava/lang/String;
    move-object/from16 v0, v45

    move/from16 v1, v48

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/util/SystemInfo;->getAppId(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v38

    .line 230
    .local v38, newAppId:Ljava/lang/String;
    if-nez v28, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_20

    .line 231
    if-eqz v12, :cond_1f

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v4

    if-nez v4, :cond_20

    .line 233
    :cond_1f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "associate "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 238
    :cond_20
    :goto_14
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 214
    .end local v12           #appId:Ljava/lang/String;
    .end local v25           #data:Ledu/umich/PowerTutor/service/IterationData;
    .end local v35           #j:I
    .end local v38           #newAppId:Ljava/lang/String;
    .end local v48           #uid:I
    .end local v50           #uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    throw v4

    .line 213
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v4

    .line 234
    .restart local v12       #appId:Ljava/lang/String;
    .restart local v25       #data:Ledu/umich/PowerTutor/service/IterationData;
    .restart local v35       #j:I
    .restart local v38       #newAppId:Ljava/lang/String;
    .restart local v48       #uid:I
    .restart local v50       #uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :catch_1
    move-exception v27

    .line 235
    .local v27, e:Ljava/io/IOException;
    :try_start_14
    const-string v4, "PowerEstimator"

    const-string v7, "Failed to write to log file"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_14

    .line 244
    .end local v12           #appId:Ljava/lang/String;
    .end local v25           #data:Ledu/umich/PowerTutor/service/IterationData;
    .end local v27           #e:Ljava/io/IOException;
    .end local v35           #j:I
    .end local v38           #newAppId:Ljava/lang/String;
    .end local v48           #uid:I
    .end local v50           #uidPower:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :catchall_3
    move-exception v4

    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v4

    .line 256
    .restart local v10       #POLY_WEIGHT:D
    .restart local v22       #count:I
    .restart local v30       #history:[I
    .restart local v51       #weightedAvgPower:D
    :cond_21
    aget v4, v30, v32

    if-eqz v4, :cond_22

    .line 257
    add-int/lit8 v22, v22, 0x1

    .line 258
    const-wide v4, 0x3fef5c28f5c28f5cL

    mul-double v51, v51, v4

    .line 259
    const-wide v4, 0x3f947ae147ae147bL

    aget v6, v30, v32

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    add-double v51, v51, v4

    .line 255
    :cond_22
    add-int/lit8 v32, v32, -0x1

    goto/16 :goto_b

    .line 296
    .end local v10           #POLY_WEIGHT:D
    .end local v22           #count:I
    .end local v30           #history:[I
    .end local v51           #weightedAvgPower:D
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->context:Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 297
    const-string v5, "screen_brightness"

    const/4 v6, -0x1

    .line 295
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 298
    .local v17, brightness:I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_b

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting_brightness "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 342
    .end local v17           #brightness:I
    .restart local v19       #cal:Ljava/util/Calendar;
    .restart local v29       #hasMem:Z
    :cond_24
    :try_start_16
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v48

    .line 343
    .restart local v48       #uid:I
    const/16 v4, 0x2710

    move/from16 v0, v48

    if-lt v0, v4, :cond_11

    .line 346
    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "associate "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->uidAppIds:Ljava/util/Map;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {v8, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 341
    .end local v48           #uid:I
    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    .line 377
    .end local v19           #cal:Ljava/util/Calendar;
    :catch_2
    move-exception v27

    .line 378
    .restart local v27       #e:Ljava/io/IOException;
    :try_start_18
    const-string v4, "PowerEstimator"

    const-string v6, "Failed to write to log file"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_f

    .line 358
    .end local v27           #e:Ljava/io/IOException;
    :cond_25
    :try_start_19
    aget-object v25, v26, v32

    .line 359
    .restart local v25       #data:Ledu/umich/PowerTutor/service/IterationData;
    if-eqz v25, :cond_26

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v37

    .line 361
    .local v37, name:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/service/IterationData;->getUidPowerData()Landroid/util/SparseArray;

    move-result-object v49

    .line 362
    .local v49, uidData:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    const/16 v35, 0x0

    .restart local v35       #j:I
    :goto_15
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v35

    if-lt v0, v4, :cond_27

    .line 374
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/service/IterationData;->recycle()V

    .line 357
    .end local v35           #j:I
    .end local v37           #name:Ljava/lang/String;
    .end local v49           #uidData:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :cond_26
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_e

    .line 363
    .restart local v35       #j:I
    .restart local v37       #name:Ljava/lang/String;
    .restart local v49       #uidData:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :cond_27
    move-object/from16 v0, v49

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 364
    .restart local v48       #uid:I
    move-object/from16 v0, v49

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ledu/umich/PowerTutor/service/PowerData;

    .line 365
    .restart local v44       #powerData:Ledu/umich/PowerTutor/service/PowerData;
    const/4 v4, -0x1

    move/from16 v0, v48

    if-ne v0, v4, :cond_28

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 367
    invoke-virtual/range {v44 .. v44}, Ledu/umich/PowerTutor/service/PowerData;->getCachedPower()I

    move-result v7

    int-to-float v7, v7

    .line 366
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 367
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ledu/umich/PowerTutor/service/PowerData;->writeLogDataInfo(Ljava/io/OutputStreamWriter;)V

    .line 362
    :goto_16
    add-int/lit8 v35, v35, 0x1

    goto :goto_15

    .line 370
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 371
    invoke-virtual/range {v44 .. v44}, Ledu/umich/PowerTutor/service/PowerData;->getCachedPower()I

    move-result v7

    int-to-float v7, v7

    .line 370
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 371
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2

    goto :goto_16

    .line 388
    .end local v25           #data:Ledu/umich/PowerTutor/service/IterationData;
    .end local v35           #j:I
    .end local v37           #name:Ljava/lang/String;
    .end local v44           #powerData:Ledu/umich/PowerTutor/service/PowerData;
    .end local v48           #uid:I
    .end local v49           #uidData:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ledu/umich/PowerTutor/service/PowerData;>;"
    :catch_3
    move-exception v27

    .line 389
    .restart local v27       #e:Ljava/io/IOException;
    :try_start_1a
    const-string v4, "PowerEstimator"

    const-string v6, "Failed to flush and close log stream"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_10

    .line 407
    .end local v23           #curTime:J
    .end local v27           #e:Ljava/io/IOException;
    .end local v29           #hasMem:Z
    .end local v47           #totalPower:I
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->interrupt()V

    .line 406
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 415
    :cond_2a
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/service/PowerEstimator;->powerComponents:Ljava/util/Vector;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/umich/PowerTutor/components/PowerComponent;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/components/PowerComponent;->join()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_5

    .line 413
    :goto_17
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .line 426
    :catch_4
    move-exception v27

    .line 427
    .restart local v27       #e:Ljava/io/IOException;
    :try_start_1c
    const-string v4, "PowerEstimator"

    const-string v6, "Failed to flush log file on exit"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 423
    .end local v27           #e:Ljava/io/IOException;
    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    throw v4

    .line 416
    :catch_5
    move-exception v4

    goto :goto_17

    .line 411
    :catch_6
    move-exception v4

    goto/16 :goto_6
.end method

.method public writeToLog(Ljava/lang/String;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 437
    iget-object v2, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->fileWriteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 439
    :try_start_1
    iget-object v1, p0, Ledu/umich/PowerTutor/service/PowerEstimator;->logStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 437
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 444
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PowerEstimator"

    const-string v3, "Failed to write message to power log"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
