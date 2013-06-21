.class public Lcom/sugree/psychogun/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sugree/psychogun/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShakeListener"


# instance fields
.field private mAccelerationSensor:Landroid/hardware/Sensor;

.field private mForceThreshHold:D

.field private mOnShakeListener:Lcom/sugree/psychogun/ShakeListener$OnShakeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTotalForcePrev:D


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 3
    .parameter "sm"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sugree/psychogun/ShakeListener;->mOnShakeListener:Lcom/sugree/psychogun/ShakeListener$OnShakeListener;

    .line 16
    const-wide/high16 v1, 0x3ff8

    iput-wide v1, p0, Lcom/sugree/psychogun/ShakeListener;->mForceThreshHold:D

    .line 21
    iput-object p1, p0, Lcom/sugree/psychogun/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 23
    iget-object v1, p0, Lcom/sugree/psychogun/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 24
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/sugree/psychogun/ShakeListener;->mAccelerationSensor:Landroid/hardware/Sensor;

    .line 26
    invoke-virtual {p0}, Lcom/sugree/psychogun/ShakeListener;->enable()V

    .line 29
    :cond_0
    return-void
.end method

.method private OnShake()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sugree/psychogun/ShakeListener;->mOnShakeListener:Lcom/sugree/psychogun/ShakeListener$OnShakeListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sugree/psychogun/ShakeListener;->mOnShakeListener:Lcom/sugree/psychogun/ShakeListener$OnShakeListener;

    invoke-interface {v0}, Lcom/sugree/psychogun/ShakeListener$OnShakeListener;->onShake()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sugree/psychogun/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 37
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sugree/psychogun/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sugree/psychogun/ShakeListener;->mAccelerationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 33
    return-void
.end method

.method public getForceThreshHold()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sugree/psychogun/ShakeListener;->mForceThreshHold:D

    return-wide v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 46
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const v6, 0x411ce80a

    const-wide/high16 v4, 0x4000

    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .local v0, totalForce:D
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 51
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 52
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/sugree/psychogun/ShakeListener;->mForceThreshHold:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/sugree/psychogun/ShakeListener;->mTotalForcePrev:D

    iget-wide v4, p0, Lcom/sugree/psychogun/ShakeListener;->mForceThreshHold:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/sugree/psychogun/ShakeListener;->OnShake()V

    .line 59
    :cond_0
    iput-wide v0, p0, Lcom/sugree/psychogun/ShakeListener;->mTotalForcePrev:D

    .line 60
    return-void
.end method

.method public setForceThreshHold(D)V
    .locals 0
    .parameter "threshhold"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/sugree/psychogun/ShakeListener;->mForceThreshHold:D

    .line 41
    return-void
.end method

.method public setOnShakeListener(Lcom/sugree/psychogun/ShakeListener$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sugree/psychogun/ShakeListener;->mOnShakeListener:Lcom/sugree/psychogun/ShakeListener$OnShakeListener;

    .line 64
    return-void
.end method
