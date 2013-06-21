.class public Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "DistanceJointDef.java"


# instance fields
.field public dampingRatio:F

.field public frequencyHz:F

.field public length:F

.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 48
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    .line 53
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->frequencyHz:F

    .line 58
    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->dampingRatio:F

    .line 19
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 20
    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter "bodyA"
    .parameter "bodyB"
    .parameter "anchorA"
    .parameter "anchorB"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 29
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 32
    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    .line 33
    return-void
.end method
