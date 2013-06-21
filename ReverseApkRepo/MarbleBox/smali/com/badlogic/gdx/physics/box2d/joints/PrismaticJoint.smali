.class public Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "PrismaticJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .parameter "world"
    .parameter "addr"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 17
    return-void
.end method

.method private native jniEnableLimit(JZ)V
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetLowerLimit(J)F
.end method

.method private native jniGetMotorForce(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetUpperLimit(J)F
.end method

.method private native jniIsLimitEnabled(J)Z
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetLimits(JFF)V
.end method

.method private native jniSetMaxMotorForce(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniEnableLimit(JZ)V

    .line 55
    return-void
.end method

.method public enableMotor(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniEnableMotor(JZ)V

    .line 105
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit()F
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetLowerLimit(J)F

    move-result v0

    return v0
.end method

.method public getMotorForce()F
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getUpperLimit()F
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniGetUpperLimit(J)F

    move-result v0

    return v0
.end method

.method public isLimitEnabled()Z
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniIsLimitEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setLimits(FF)V
    .locals 2
    .parameter "lower"
    .parameter "upper"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetLimits(JFF)V

    .line 85
    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 2
    .parameter "force"

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetMaxMotorForce(JF)V

    .line 135
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;->jniSetMotorSpeed(JF)V

    .line 115
    return-void
.end method
