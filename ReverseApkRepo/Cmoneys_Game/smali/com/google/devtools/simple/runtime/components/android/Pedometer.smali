.class public Lcom/google/devtools/simple/runtime/components/android/Pedometer;
.super Ljava/lang/Object;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Landroid/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Component that can count steps."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION"
.end annotation


# static fields
.field private static final DIMENSIONS:I = 0x3

.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final MIN_SATELLITES:I = 0x4

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 4.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x14


# instance fields
.field private calibrateSteps:Z

.field private final context:Landroid/content/Context;

.field private currentLocation:Landroid/location/Location;

.field private distWhenGPSLost:F

.field private elapsedTimestamp:J

.field private firstGpsReading:Z

.field private foundNonStep:Z

.field private foundValley:[Z

.field private gpsAvailable:Z

.field private gpsDistance:F

.field private gpsStepTime:J

.field private intervalPos:I

.field private lastNumSteps:I

.field private lastValley:[F

.field private lastValues:[[F

.field private final locationManager:Landroid/location/LocationManager;

.field private locationWhenGPSLost:Landroid/location/Location;

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private peak:[I

.field private pedometerPaused:Z

.field private prevDiff:[F

.field private prevLocation:Landroid/location/Location;

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private statusMoving:Z

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private useGps:Z

.field private valley:[I

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 10
    .parameter "container"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stopDetectionTimeout:I

    .line 62
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->intervalPos:I

    .line 63
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    .line 64
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastNumSteps:I

    .line 65
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    .line 66
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->valley:[I

    .line 67
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValley:[F

    .line 68
    const/16 v0, 0x14

    filled-new-array {v0, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    .line 69
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    .line 70
    const v0, 0x3f3ae148

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    .line 71
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 72
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->distWhenGPSLost:F

    .line 73
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepInterval:[J

    .line 75
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepTimestamp:J

    .line 76
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->elapsedTimestamp:J

    .line 77
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    .line 78
    iput-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsStepTime:J

    .line 79
    new-array v0, v9, [Z

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundValley:[Z

    .line 80
    iput-boolean v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    .line 81
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundNonStep:Z

    .line 82
    iput-boolean v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    .line 83
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    .line 84
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    .line 85
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    .line 86
    iput-boolean v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    .line 87
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    .line 91
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->context:Landroid/content/Context;

    .line 93
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    .line 94
    iput-boolean v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    .line 95
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    .line 96
    iput v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    .line 98
    iput-boolean v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    .line 99
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    .line 101
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundValley:[Z

    aput-boolean v5, v0, v6

    .line 103
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValley:[F

    aput v4, v0, v6

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 106
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    .line 107
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 110
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 111
    .local v7, settings:Landroid/content/SharedPreferences;
    const-string v0, "Pedometer.stridelength"

    const v1, 0x3f3ae148

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    .line 112
    const-string v0, "Pedometer.distance"

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 113
    const-string v0, "Pedometer.prevStepCount"

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    .line 114
    const-string v0, "Pedometer.clockTime"

    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    .line 115
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    .line 117
    const-string v0, "Pedometer"

    const-string v1, "Pedometer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 9

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, avg:F
    const/4 v6, 0x0

    .line 442
    .local v6, num:I
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepInterval:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v0, v2

    .line 443
    .local v3, interval:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 444
    add-int/lit8 v6, v6, 0x1

    .line 445
    long-to-float v7, v3

    add-float/2addr v1, v7

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v3           #interval:J
    :cond_1
    int-to-float v7, v6

    div-float/2addr v1, v7

    .line 449
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepInterval:[J

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-wide v3, v0, v2

    .line 450
    .restart local v3       #interval:J
    long-to-float v7, v3

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x437a

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 451
    const/4 v7, 0x0

    .line 454
    .end local v3           #interval:J
    :goto_2
    return v7

    .line 449
    .restart local v3       #interval:J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    .end local v3           #interval:J
    :cond_3
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private getPeak()V
    .locals 5

    .prologue
    .line 462
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    add-int/lit8 v3, v3, 0xa

    rem-int/lit8 v2, v3, 0x14

    .line 463
    .local v2, mid:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 464
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    aput v2, v3, v1

    .line 465
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 466
    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 463
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private getValley()V
    .locals 5

    .prologue
    .line 478
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    add-int/lit8 v3, v3, 0xa

    rem-int/lit8 v2, v3, 0x14

    .line 479
    .local v2, mid:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->valley:[I

    aput v2, v3, v1

    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 482
    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 483
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->valley:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 479
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private setGpsAvailable(Z)V
    .locals 1
    .parameter "available"

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    .line 493
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->GPSAvailable()V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    .line 496
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->GPSLost()V

    goto :goto_0
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 1
    .parameter "cal"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->CalibrationFailed()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    if-eqz p1, :cond_1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    .line 302
    :cond_1
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    goto :goto_0
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    return v0
.end method

.method public CalibrationFailed()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 263
    const-string v0, "CalibrationFailed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 406
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 429
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    .line 431
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 273
    const-string v0, "GPSAvailable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public GPSLost()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 282
    const-string v0, "GPSLost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    return v0
.end method

.method public Pause()V
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    .line 177
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 178
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    .line 181
    :cond_0
    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    .line 154
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 156
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    .line 159
    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->Start()V

    .line 167
    return-void
.end method

.method public Save()V
    .locals 9
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone"
    .end annotation

    .prologue
    const-string v8, "Pedometer.clockTime"

    .line 189
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->context:Landroid/content/Context;

    const-string v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pedometer.stridelength"

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v2, "Pedometer.distance"

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v2, "Pedometer.prevStepCount"

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    if-eqz v2, :cond_0

    .line 195
    const-string v2, "Pedometer.clockTime"

    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    :goto_0
    const-string v2, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 197
    :cond_0
    const-string v2, "Pedometer.clockTime"

    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-interface {v0, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 4
    .parameter "simpleSteps"
    .parameter "distance"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    .prologue
    .line 222
    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 128
    iput-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    .line 129
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startTime:J

    .line 134
    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 244
    const-string v0, "StartedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->Pause()V

    .line 142
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 143
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    .line 144
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    .line 145
    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->setGpsAvailable(Z)V

    .line 146
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 364
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .parameter "timeout"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 354
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stopDetectionTimeout:I

    .line 355
    return-void
.end method

.method public StoppedMoving()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 253
    const-string v0, "StoppedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 1
    .parameter "length"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->CalibrateStrideLength(Z)V

    .line 330
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    .line 331
    return-void
.end method

.method public UseGPS(Z)V
    .locals 6
    .parameter "gps"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 379
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 385
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    .line 386
    return-void

    .line 381
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public UseGPS()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    return v0
.end method

.method public WalkStep(IF)V
    .locals 4
    .parameter "walkSteps"
    .parameter "distance"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected"
    .end annotation

    .prologue
    .line 235
    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 504
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 666
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 667
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10
    .parameter "loc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4120

    .line 601
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->pedometerPaused:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->useGps:Z

    if-nez v3, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const/4 v1, 0x0

    .line 605
    .local v1, distDelta:F
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    .line 606
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    .line 607
    invoke-direct {p0, v8}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->setGpsAvailable(Z)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-direct {p0, v9}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->setGpsAvailable(Z)V

    .line 612
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevLocation:Landroid/location/Location;

    if-eqz v3, :cond_4

    .line 613
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 614
    float-to-double v3, v1

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    cmpg-float v3, v1, v7

    if-gez v3, :cond_3

    .line 615
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 616
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevLocation:Landroid/location/Location;

    .line 628
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->calibrateSteps:Z

    if-eqz v3, :cond_7

    .line 629
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    if-nez v3, :cond_6

    .line 630
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    .line 631
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastNumSteps:I

    sub-int v2, v3, v4

    .line 632
    .local v2, stepsTaken:I
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    goto :goto_0

    .line 619
    .end local v2           #stepsTaken:I
    :cond_4
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    if-eqz v3, :cond_5

    .line 620
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 622
    .local v0, distDarkness:F
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->distWhenGPSLost:F

    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    iget v5, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->distWhenGPSLost:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 625
    .end local v0           #distDarkness:F
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsStepTime:J

    .line 626
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevLocation:Landroid/location/Location;

    goto :goto_1

    .line 634
    :cond_6
    iput-boolean v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    .line 635
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastNumSteps:I

    goto :goto_0

    .line 638
    :cond_7
    iput-boolean v9, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    .line 639
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsDistance:F

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 645
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->distWhenGPSLost:F

    .line 646
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->firstGpsReading:Z

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevLocation:Landroid/location/Location;

    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->setGpsAvailable(Z)V

    .line 650
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->setGpsAvailable(Z)V

    .line 655
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/16 v13, 0x13

    const/4 v12, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 509
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-eq v6, v11, :cond_0

    .line 594
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 515
    .local v5, values:[F
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->getPeak()V

    .line 517
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->getValley()V

    .line 521
    :cond_1
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    aget v7, v7, v11

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    move v0, v10

    .line 522
    .local v0, argmax:I
    :goto_1
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    aget v7, v7, v0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v0, v8

    .line 524
    :cond_2
    const/4 v1, 0x0

    .local v1, k:I
    :goto_2
    if-ge v1, v12, :cond_c

    .line 526
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    aget v6, v6, v1

    if-ltz v6, :cond_7

    .line 527
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundValley:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    aget v7, v7, v1

    aget-object v6, v6, v7

    aget v6, v6, v1

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValley:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    const/high16 v7, 0x4080

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 530
    if-ne v0, v1, :cond_6

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 532
    .local v3, timestamp:J
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepInterval:[J

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->intervalPos:I

    iget-wide v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepTimestamp:J

    sub-long v8, v3, v8

    aput-wide v8, v6, v7

    .line 533
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->intervalPos:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->intervalPos:I

    .line 534
    iput-wide v3, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepTimestamp:J

    .line 535
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->areStepsEquallySpaced()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 536
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundNonStep:Z

    if-eqz v6, :cond_4

    .line 537
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    .line 538
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    if-nez v6, :cond_3

    .line 539
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    const/high16 v8, 0x4000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 541
    :cond_3
    iput-boolean v10, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundNonStep:Z

    .line 543
    :cond_4
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    .line 544
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsWithFilter:I

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    invoke-virtual {p0, v6, v7}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->WalkStep(IF)V

    .line 545
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->gpsAvailable:Z

    if-nez v6, :cond_5

    .line 546
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->strideLength:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    .line 551
    :cond_5
    :goto_3
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    .line 552
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->numStepsRaw:I

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->totalDistance:F

    invoke-virtual {p0, v6, v7}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->SimpleStep(IF)V

    .line 553
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    if-nez v6, :cond_6

    .line 554
    iput-boolean v11, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    .line 555
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->StartedMoving()V

    .line 558
    .end local v3           #timestamp:J
    :cond_6
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundValley:[Z

    aput-boolean v10, v6, v1

    .line 559
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget-object v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->peak:[I

    aget v8, v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v1

    iget-object v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValley:[F

    aget v8, v8, v1

    sub-float/2addr v7, v8

    aput v7, v6, v1

    .line 565
    :cond_7
    :goto_4
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->valley:[I

    aget v6, v6, v1

    if-ltz v6, :cond_8

    .line 566
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundValley:[Z

    aput-boolean v11, v6, v1

    .line 567
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValley:[F

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget-object v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->valley:[I

    aget v8, v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v1

    aput v7, v6, v1

    .line 570
    :cond_8
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    aget-object v6, v6, v7

    aget v7, v5, v1

    aput v7, v6, v1

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .end local v0           #argmax:I
    .end local v1           #k:I
    :cond_9
    move v0, v11

    .line 521
    goto/16 :goto_1

    .line 549
    .restart local v0       #argmax:I
    .restart local v1       #k:I
    .restart local v3       #timestamp:J
    :cond_a
    iput-boolean v11, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->foundNonStep:Z

    goto :goto_3

    .line 561
    .end local v3           #timestamp:J
    :cond_b
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->prevDiff:[F

    const/4 v7, 0x0

    aput v7, v6, v1

    goto :goto_4

    .line 572
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->elapsedTimestamp:J

    .line 573
    iget-wide v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->elapsedTimestamp:J

    iget-wide v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepTimestamp:J

    sub-long/2addr v6, v8

    iget v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stopDetectionTimeout:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_e

    .line 574
    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    if-eqz v6, :cond_d

    .line 575
    iput-boolean v10, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->statusMoving:Z

    .line 576
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->StoppedMoving()V

    .line 578
    :cond_d
    iget-wide v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->elapsedTimestamp:J

    iput-wide v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->stepTimestamp:J

    .line 582
    :cond_e
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    sub-int/2addr v6, v11

    if-gez v6, :cond_10

    move v2, v13

    .line 583
    .local v2, prev:I
    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v12, :cond_11

    .line 584
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    aget-object v6, v6, v2

    aget v6, v6, v1

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget v8, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    aget-object v7, v7, v8

    aget v7, v7, v1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_f

    .line 585
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->lastValues:[[F

    iget v7, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    aget-object v6, v6, v7

    aget v7, v6, v1

    float-to-double v7, v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v6, v1

    .line 583
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 582
    .end local v2           #prev:I
    :cond_10
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    sub-int/2addr v6, v11

    move v2, v6

    goto :goto_5

    .line 589
    .restart local v2       #prev:I
    :cond_11
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    if-ne v6, v13, :cond_12

    iget-boolean v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    if-nez v6, :cond_12

    .line 590
    iput-boolean v11, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->startPeaking:Z

    .line 593
    :cond_12
    iget v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x14

    iput v6, p0, Lcom/google/devtools/simple/runtime/components/android/Pedometer;->winPos:I

    goto/16 :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "data"

    .prologue
    .line 659
    return-void
.end method
