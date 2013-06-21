.class Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;
.super Ljava/lang/Object;
.source "HwSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;


# direct methods
.method constructor <init>(Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 50
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "se"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    #getter for: Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->mIsTablet:Z
    invoke-static {v0}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->access$0(Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorX:F

    .line 40
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorY:F

    .line 41
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorZ:F

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorX:F

    .line 45
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorY:F

    .line 46
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager$1;->this$0:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->sensorZ:F

    goto :goto_0
.end method
