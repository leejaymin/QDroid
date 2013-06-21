.class public Lorg/appcelerator/titanium/util/TiSensorHelper;
.super Ljava/lang/Object;
.source "TiSensorHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiSensorHelper"

.field private static listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static hasDefaultSensor(Landroid/app/Activity;I)Z
    .locals 3
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, oneShot:Z
    const/4 v1, 0x0

    .line 87
    .local v1, result:Z
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 90
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 92
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_1

    .line 94
    sget-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 95
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    const/4 v2, 0x0

    sput-object v2, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 100
    :cond_1
    return v1

    .line 94
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public static registerListener(ILandroid/hardware/SensorEventListener;I)V
    .locals 4
    .parameter "type"
    .parameter "listener"
    .parameter "rate"

    .prologue
    const-string v3, "TiSensorHelper"

    .line 38
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 39
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 42
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 43
    .local v0, sensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 44
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    if-eqz v1, :cond_1

    .line 45
    const-string v1, "TiSensorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1, v0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_2
    const-string v1, "TiSensorHelper"

    const-string v1, "unable to register, sensor is null"

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerListener([ILandroid/hardware/SensorEventListener;I)V
    .locals 4
    .parameter "types"
    .parameter "listener"
    .parameter "rate"

    .prologue
    .line 31
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 32
    .local v3, type:I
    invoke-static {v3, p1, p2}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v3           #type:I
    :cond_0
    return-void
.end method

.method public static unregisterListener(ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .parameter "type"
    .parameter "listener"

    .prologue
    const-string v3, "TiSensorHelper"

    .line 63
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    .line 64
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 65
    .local v0, sensor:Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 66
    sget-boolean v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "TiSensorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 71
    sget-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->listenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const/4 v1, 0x0

    sput-object v1, Lorg/appcelerator/titanium/util/TiSensorHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 80
    .end local v0           #sensor:Landroid/hardware/Sensor;
    :cond_1
    :goto_0
    return-void

    .line 75
    .restart local v0       #sensor:Landroid/hardware/Sensor;
    :cond_2
    const-string v1, "TiSensorHelper"

    const-string v1, "unable to unregister, sensor is null"

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0           #sensor:Landroid/hardware/Sensor;
    :cond_3
    const-string v1, "TiSensorHelper"

    const-string v1, "unable to unregister, sensorManager is null"

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unregisterListener([ILandroid/hardware/SensorEventListener;)V
    .locals 4
    .parameter "types"
    .parameter "listener"

    .prologue
    .line 56
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 57
    .local v3, type:I
    invoke-static {v3, p1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v3           #type:I
    :cond_0
    return-void
.end method
