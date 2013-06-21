.class public abstract Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;
.super Ljava/lang/Object;
.source "OrientationSensorComponent.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/SensorComponent;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field protected accuracy:I

.field protected enabled:Z

.field protected pitch:F

.field protected roll:F

.field protected yaw:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->enabled:Z

    .line 31
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->pitch:F

    float-to-double v0, v0

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->roll:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public abstract Available()Z
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation
.end method

.method public Enabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->enabled:Z

    .line 92
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->enabled:Z

    return v0
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public Magnitude()F
    .locals 11
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/high16 v7, 0x42b4

    .line 169
    const/16 v0, 0x5a

    .line 170
    .local v0, MAX_VALUE:I
    iget v5, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->pitch:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 171
    .local v1, npitch:D
    iget v5, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->roll:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 172
    .local v3, nroll:D
    const-wide/high16 v5, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v5, v5

    return v5
.end method

.method public OrientationChanged(FFF)V
    .locals 4
    .parameter "yaw"
    .parameter "pitch"
    .parameter "roll"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "yaw As Single, pitch As Single, roll As Single"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 54
    const-string v0, "OrientationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->pitch:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->roll:F

    return v0
.end method

.method public Yaw()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;->yaw:F

    return v0
.end method
