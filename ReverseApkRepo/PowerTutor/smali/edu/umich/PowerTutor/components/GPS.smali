.class public Ledu/umich/PowerTutor/components/GPS;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/GPS$GpsData;,
        Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    }
.end annotation


# static fields
.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static HOOK_GPS_STATUS_FILE:Ljava/lang/String; = null

.field private static final HOOK_GPS_STATUS_LISTENER:I = 0x2

.field private static final HOOK_LIBGPS:I = 0x1

.field private static final HOOK_NOTIFICATIONS:I = 0x4

.field private static final HOOK_TIMER:I = 0x8

.field public static final POWER_STATES:I = 0x3

.field public static final POWER_STATE_NAMES:[Ljava/lang/String; = null

.field public static final POWER_STATE_OFF:I = 0x0

.field public static final POWER_STATE_ON:I = 0x2

.field public static final POWER_STATE_SLEEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GPS"


# instance fields
.field private context:Landroid/content/Context;

.field private gpsListener:Landroid/location/GpsStatus$Listener;

.field private gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

.field private hasUidInfo:Z

.field private lastStatus:Landroid/location/GpsStatus;

.field private lastTime:J

.field private locationManager:Landroid/location/LocationManager;

.field private notificationReceiver:Ledu/umich/PowerTutor/PowerNotifications;

.field private sleepTime:J

.field private statusThread:Ljava/lang/Thread;

.field private uidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SLEEP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ON"

    aput-object v2, v0, v1

    sput-object v0, Ledu/umich/PowerTutor/components/GPS;->POWER_STATE_NAMES:[Ljava/lang/String;

    .line 106
    const-string v0, "/data/misc/gps.status"

    sput-object v0, Ledu/umich/PowerTutor/components/GPS;->HOOK_GPS_STATUS_FILE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 7
    .parameter "context"
    .parameter "constants"

    .prologue
    .line 127
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 128
    iput-object p1, p0, Ledu/umich/PowerTutor/components/GPS;->context:Landroid/content/Context;

    .line 129
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    .line 130
    const-wide v3, 0x408f400000000000L

    invoke-interface {p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->gpsSleepTime()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    iput-wide v3, p0, Ledu/umich/PowerTutor/components/GPS;->sleepTime:J

    .line 132
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v3

    iput-boolean v3, p0, Ledu/umich/PowerTutor/components/GPS;->hasUidInfo:Z

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, hookMethod:I
    new-instance v1, Ljava/io/File;

    sget-object v3, Ledu/umich/PowerTutor/components/GPS;->HOOK_GPS_STATUS_FILE:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, gpsStatusFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    const/4 v2, 0x1

    .line 162
    :cond_0
    :goto_0
    and-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_1

    .line 163
    or-int/lit8 v2, v2, 0x8

    .line 167
    :cond_1
    new-instance v3, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/GPS;->sleepTime:J

    invoke-direct {v3, v2, v4, v5}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;-><init>(IJ)V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    .line 174
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->locationManager:Landroid/location/LocationManager;

    .line 175
    new-instance v3, Ledu/umich/PowerTutor/components/GPS$1;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/components/GPS$1;-><init>(Ledu/umich/PowerTutor/components/GPS;)V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->gpsListener:Landroid/location/GpsStatus$Listener;

    .line 189
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->locationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Ledu/umich/PowerTutor/components/GPS;->gpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 194
    iget-boolean v3, p0, Ledu/umich/PowerTutor/components/GPS;->hasUidInfo:Z

    if-eqz v3, :cond_2

    .line 195
    new-instance v3, Ledu/umich/PowerTutor/components/GPS$2;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/components/GPS$2;-><init>(Ledu/umich/PowerTutor/components/GPS;)V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->notificationReceiver:Ledu/umich/PowerTutor/PowerNotifications;

    .line 218
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->notificationReceiver:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v3}, Ledu/umich/PowerTutor/util/NotificationService;->addHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    .line 221
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    new-instance v3, Ledu/umich/PowerTutor/components/GPS$3;

    invoke-direct {v3, p0, v1}, Ledu/umich/PowerTutor/components/GPS$3;-><init>(Ledu/umich/PowerTutor/components/GPS;Ljava/io/File;)V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->statusThread:Ljava/lang/Thread;

    .line 243
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS;->statusThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 245
    :cond_3
    return-void

    .line 148
    :cond_4
    const/4 v2, 0x2

    .line 150
    :try_start_0
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 152
    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse sdk version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/components/GPS;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/components/GPS;)Landroid/location/GpsStatus;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/components/GPS;Landroid/location/GpsStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;

    return-void
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/components/GPS;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Ledu/umich/PowerTutor/components/GPS;->updateUidEvent(III)V

    return-void
.end method

.method private updateUidEvent(III)V
    .locals 7
    .parameter "uid"
    .parameter "event"
    .parameter "source"

    .prologue
    .line 248
    iget-object v6, p0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    monitor-enter v6

    .line 249
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    .line 250
    .local v0, state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    .end local v0           #state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    const/16 v1, 0xc

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/GPS;->sleepTime:J

    .line 252
    iget-wide v4, p0, Ledu/umich/PowerTutor/components/GPS;->lastTime:J

    .line 251
    invoke-direct/range {v0 .. v5}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;-><init>(IJJ)V

    .line 253
    .restart local v0       #state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_0
    invoke-virtual {v0, p2, p3}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    .line 248
    monitor-exit v6

    .line 257
    return-void

    .line 248
    .end local v0           #state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 17
    .parameter "iteration"

    .prologue
    .line 275
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v4

    .line 278
    .local v4, result:Ledu/umich/PowerTutor/service/IterationData;
    const/4 v6, 0x0

    .line 279
    .local v6, satellites:I
    monitor-enter p0

    .line 280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;

    if-eqz v11, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;

    invoke-virtual {v11}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 279
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {}, Ledu/umich/PowerTutor/components/GPS$GpsData;->obtain()Ledu/umich/PowerTutor/components/GPS$GpsData;

    move-result-object v3

    .line 289
    .local v3, power:Ledu/umich/PowerTutor/components/GPS$GpsData;
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    monitor-enter v12

    .line 290
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    invoke-virtual {v11}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->getStateTimesLocked()[D

    move-result-object v8

    .line 291
    .local v8, stateTimes:[D
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    invoke-virtual {v11}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->getCurrentStateLocked()I

    move-result v1

    .line 292
    .local v1, curState:I
    const/4 v11, 0x2

    if-ne v1, v11, :cond_3

    move v11, v6

    :goto_1
    invoke-virtual {v3, v8, v11}, Ledu/umich/PowerTutor/components/GPS$GpsData;->init([DI)V

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    invoke-virtual {v11}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->resetTimesLocked()V

    .line 289
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    invoke-virtual {v4, v3}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 298
    move-object/from16 v0, p0

    iget-boolean v11, v0, Ledu/umich/PowerTutor/components/GPS;->hasUidInfo:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    monitor-enter v12

    .line 299
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Ledu/umich/PowerTutor/components/GPS;->beginTime:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Ledu/umich/PowerTutor/components/GPS;->iterationInterval:J

    mul-long v15, v15, p1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Ledu/umich/PowerTutor/components/GPS;->lastTime:J

    .line 300
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-lt v2, v11, :cond_4

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 320
    .end local v2           #i:I
    :cond_1
    return-object v4

    .line 281
    .end local v1           #curState:I
    .end local v3           #power:Ledu/umich/PowerTutor/components/GPS$GpsData;
    .end local v8           #stateTimes:[D
    :cond_2
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .line 282
    .local v5, satellite:Landroid/location/GpsSatellite;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    .end local v5           #satellite:Landroid/location/GpsSatellite;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 292
    .restart local v1       #curState:I
    .restart local v3       #power:Ledu/umich/PowerTutor/components/GPS$GpsData;
    .restart local v8       #stateTimes:[D
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 289
    .end local v1           #curState:I
    .end local v8           #stateTimes:[D
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 301
    .restart local v1       #curState:I
    .restart local v2       #i:I
    .restart local v8       #stateTimes:[D
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 302
    .local v9, uid:I
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    .line 304
    .local v7, state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-virtual {v7}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->getStateTimesLocked()[D

    move-result-object v8

    .line 305
    invoke-virtual {v7}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->getCurrentStateLocked()I

    move-result v1

    .line 306
    invoke-static {}, Ledu/umich/PowerTutor/components/GPS$GpsData;->obtain()Ledu/umich/PowerTutor/components/GPS$GpsData;

    move-result-object v10

    .line 307
    .local v10, uidPower:Ledu/umich/PowerTutor/components/GPS$GpsData;
    const/4 v11, 0x2

    if-ne v1, v11, :cond_6

    move v11, v6

    :goto_3
    invoke-virtual {v10, v8, v11}, Ledu/umich/PowerTutor/components/GPS$GpsData;->init([DI)V

    .line 308
    invoke-virtual {v7}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->resetTimesLocked()V

    .line 310
    invoke-virtual {v4, v9, v10}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    .line 313
    if-nez v1, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/GPS;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 315
    add-int/lit8 v2, v2, -0x1

    .line 300
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 300
    .end local v2           #i:I
    .end local v7           #state:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    .end local v9           #uid:I
    .end local v10           #uidPower:Ledu/umich/PowerTutor/components/GPS$GpsData;
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, "GPS"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Ledu/umich/PowerTutor/components/GPS;->hasUidInfo:Z

    return v0
.end method

.method protected onExit()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->gpsListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS;->gpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->statusThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->statusThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 267
    :cond_1
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->notificationReceiver:Ledu/umich/PowerTutor/PowerNotifications;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS;->notificationReceiver:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v0}, Ledu/umich/PowerTutor/util/NotificationService;->removeHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    .line 270
    :cond_2
    invoke-super {p0}, Ledu/umich/PowerTutor/components/PowerComponent;->onExit()V

    .line 271
    return-void
.end method
