.class public Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;
.super Ljava/lang/Object;
.source "HwSensorManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTablet:Z

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field public sensorX:F

.field public sensorY:F

.field public sensorZ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isTablet"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;

    invoke-direct {v0, p0}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;-><init>(Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 27
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mContext:Landroid/content/Context;

    .line 28
    iput-boolean p2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mIsTablet:Z

    .line 29
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->reset()V

    .line 31
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->register()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mIsTablet:Z

    return v0
.end method


# virtual methods
.method public get()[F
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 67
    .local v0, sensors:[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorX:F

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x1

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorY:F

    aput v2, v0, v1

    .line 69
    const/4 v1, 0x2

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorZ:F

    aput v2, v0, v1

    .line 70
    return-object v0
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 56
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorX:F

    .line 76
    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorY:F

    .line 77
    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorZ:F

    .line 78
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 61
    return-void
.end method
