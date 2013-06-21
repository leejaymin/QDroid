.class public Lcom/badlogic/gdx/physics/box2d/World;
.super Ljava/lang/Object;
.source "World.java"


# instance fields
.field private final addr:J

.field protected final bodies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final contact:Lcom/badlogic/gdx/physics/box2d/Contact;

.field private contactAddrs:[J

.field protected contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

.field protected contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field private final contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final fixtures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field private final freeContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private freeIdx:I

.field final gravity:Lcom/badlogic/gdx/math/Vector2;

.field protected final joints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

.field final tmpGravity:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "gdx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 6
    .parameter "gravity"
    .parameter "doSleep"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Ljava/util/HashMap;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Ljava/util/HashMap;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Ljava/util/HashMap;

    .line 54
    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 57
    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 491
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    .line 492
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 544
    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 563
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    .line 566
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeIdx:I

    .line 615
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v1, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 66
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v1, v2, p2}, Lcom/badlogic/gdx/physics/box2d/World;->newWorld(FFZ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 70
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    new-instance v2, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v2, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private beginContact(J)V
    .locals 2
    .parameter "contactAddr"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 622
    :cond_0
    return-void
.end method

.method private contactFilter(JJ)Z
    .locals 4
    .parameter "fixtureA"
    .parameter "fixtureB"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v1, v0, p0}, Lcom/badlogic/gdx/physics/box2d/ContactFilter;->shouldCollide(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v0

    .line 612
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J
    .locals 24
    .parameter "def"

    .prologue
    .line 200
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_0

    .line 202
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;

    move-object/from16 v23, v0

    .line 203
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->collideConnected:Z

    move v9, v0

    .line 204
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 205
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 206
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    move v14, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->frequencyHz:F

    move v15, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->dampingRatio:F

    move/from16 v16, v0

    move-object/from16 v2, p0

    .line 203
    invoke-direct/range {v2 .. v16}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateDistanceJoint(JJJZFFFFFFF)J

    move-result-wide v2

    .line 297
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;
    :goto_0
    return-wide v2

    .line 208
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_1

    .line 210
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;

    move-object/from16 v23, v0

    .line 211
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->collideConnected:Z

    move v9, v0

    .line 212
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 213
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 214
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxForce:F

    move v14, v0

    .line 215
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxTorque:F

    move v15, v0

    move-object/from16 v2, p0

    .line 211
    invoke-direct/range {v2 .. v15}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateFrictionJoint(JJJZFFFFFF)J

    move-result-wide v2

    goto :goto_0

    .line 217
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_2

    .line 219
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    move-object/from16 v23, v0

    .line 220
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->collideConnected:Z

    move v9, v0

    .line 221
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    move-object v2, v0

    iget-wide v10, v2, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    move-object v2, v0

    iget-wide v12, v2, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->ratio:F

    move v14, v0

    move-object/from16 v2, p0

    .line 220
    invoke-direct/range {v2 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateGearJoint(JJJZJJF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 223
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_3

    .line 225
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;

    move-object/from16 v23, v0

    .line 226
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->collideConnected:Z

    move v9, v0

    .line 227
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 228
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 229
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v15, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 230
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->enableLimit:Z

    move/from16 v16, v0

    .line 231
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->lowerTranslation:F

    move/from16 v17, v0

    .line 232
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->upperTranslation:F

    move/from16 v18, v0

    .line 233
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->enableMotor:Z

    move/from16 v19, v0

    .line 234
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->maxMotorForce:F

    move/from16 v20, v0

    .line 235
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;->motorSpeed:F

    move/from16 v21, v0

    move-object/from16 v2, p0

    .line 226
    invoke-direct/range {v2 .. v21}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateLineJoint(JJJZFFFFFFZFFZFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 238
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/LineJointDef;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_4

    .line 240
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;

    move-object/from16 v23, v0

    .line 241
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->collideConnected:Z

    move v9, v0

    .line 242
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->maxForce:F

    move v12, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->frequencyHz:F

    move v13, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->dampingRatio:F

    move v14, v0

    move-object/from16 v2, p0

    .line 241
    invoke-direct/range {v2 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMouseJoint(JJJZFFFFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 244
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_5

    .line 246
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;

    move-object/from16 v23, v0

    .line 247
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->collideConnected:Z

    move v9, v0

    .line 248
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 249
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 250
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxis1:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxis1:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v15, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 251
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->referenceAngle:F

    move/from16 v16, v0

    .line 252
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableLimit:Z

    move/from16 v17, v0

    .line 253
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->lowerTranslation:F

    move/from16 v18, v0

    .line 254
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->upperTranslation:F

    move/from16 v19, v0

    .line 255
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableMotor:Z

    move/from16 v20, v0

    .line 256
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->maxMotorForce:F

    move/from16 v21, v0

    .line 257
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->motorSpeed:F

    move/from16 v22, v0

    move-object/from16 v2, p0

    .line 247
    invoke-direct/range {v2 .. v22}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 259
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_6

    .line 261
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;

    move-object/from16 v23, v0

    .line 262
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->collideConnected:Z

    move v9, v0

    .line 263
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 264
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 265
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v14, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v15, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 266
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v17, v0

    .line 267
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    move/from16 v18, v0

    .line 268
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthA:F

    move/from16 v19, v0

    .line 269
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    move/from16 v20, v0

    .line 270
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->maxLengthB:F

    move/from16 v21, v0

    .line 271
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    move/from16 v22, v0

    move-object/from16 v2, p0

    .line 262
    invoke-direct/range {v2 .. v22}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePulleyJoint(JJJZFFFFFFFFFFFFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 274
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_7

    .line 276
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    move-object/from16 v23, v0

    .line 277
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->collideConnected:Z

    move v9, v0

    .line 278
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 279
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 280
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    move v14, v0

    .line 281
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    move v15, v0

    .line 282
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    move/from16 v16, v0

    .line 283
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    move/from16 v17, v0

    .line 284
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    move/from16 v18, v0

    .line 285
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->motorSpeed:F

    move/from16 v19, v0

    .line 286
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    move/from16 v20, v0

    move-object/from16 v2, p0

    .line 277
    invoke-direct/range {v2 .. v20}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 288
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-object v2, v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v2, v3, :cond_8

    .line 290
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;

    move-object/from16 v23, v0

    .line 291
    .local v23, d:Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v3, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v5, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    move-object v2, v0

    iget-wide v7, v2, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->collideConnected:Z

    move v9, v0

    .line 292
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 293
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    move-object v2, v0

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 294
    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    move v14, v0

    move-object/from16 v2, p0

    .line 291
    invoke-direct/range {v2 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWeldJoint(JJJZFFFFF)J

    move-result-wide v2

    goto/16 :goto_0

    .line 297
    .end local v23           #d:Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_0
.end method

.method private endContact(J)V
    .locals 2
    .parameter "contactAddr"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Contact;->GetWorldManifold()Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 630
    :cond_0
    return-void
.end method

.method private native jniClearForces(J)V
.end method

.method private native jniCreateBody(JIFFFFFFFFZZZZZF)J
.end method

.method private native jniCreateDistanceJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateFrictionJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateGearJoint(JJJZJJF)J
.end method

.method private native jniCreateLineJoint(JJJZFFFFFFZFFZFF)J
.end method

.method private native jniCreateMouseJoint(JJJZFFFFF)J
.end method

.method private native jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J
.end method

.method private native jniCreatePulleyJoint(JJJZFFFFFFFFFFFFF)J
.end method

.method private native jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J
.end method

.method private native jniCreateWeldJoint(JJJZFFFFF)J
.end method

.method private native jniDestroyBody(JJ)V
.end method

.method private native jniDestroyJoint(JJ)V
.end method

.method private native jniDispose(J)V
.end method

.method private native jniGetAutoClearForces(J)Z
.end method

.method private native jniGetBodyCount(J)I
.end method

.method private native jniGetContactCount(J)I
.end method

.method private native jniGetContactList(J[J)V
.end method

.method private native jniGetGravity(J[F)V
.end method

.method private native jniGetJointcount(J)I
.end method

.method private native jniGetProxyCount(J)I
.end method

.method private native jniIsLocked(J)Z
.end method

.method private native jniQueryAABB(JFFFF)V
.end method

.method private native jniSetAutoClearForces(JZ)V
.end method

.method private native jniSetContiousPhysics(JZ)V
.end method

.method private native jniSetGravity(JFF)V
.end method

.method private native jniSetWarmStarting(JZ)V
.end method

.method private native jniStep(JFII)V
.end method

.method private native newWorld(FFZ)J
.end method

.method private reportFixture(J)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/physics/box2d/QueryCallback;->reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result v0

    .line 637
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V
    .locals 7
    .parameter "callback"
    .parameter "lowerX"
    .parameter "lowerY"
    .parameter "upperX"
    .parameter "upperY"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 541
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniQueryAABB(JFFFF)V

    .line 542
    return-void
.end method

.method public clearForces()V
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniClearForces(J)V

    .line 414
    return-void
.end method

.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 23
    .parameter "def"

    .prologue
    .line 109
    new-instance v22, Lcom/badlogic/gdx/physics/box2d/Body;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-wide v5, v0

    .line 110
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v7

    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    move-object v4, v0

    iget v8, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    move-object v4, v0

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 112
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    move v10, v0

    .line 113
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    move-object v4, v0

    iget v11, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    move-object v4, v0

    iget v12, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 114
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    move v13, v0

    .line 115
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    move v14, v0

    .line 116
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    move v15, v0

    .line 117
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    move/from16 v16, v0

    .line 118
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->awake:Z

    move/from16 v17, v0

    .line 119
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    move/from16 v18, v0

    .line 120
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    move/from16 v19, v0

    .line 121
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    move/from16 v20, v0

    .line 122
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->inertiaScale:F

    move/from16 v21, v0

    move-object/from16 v4, p0

    .line 109
    invoke-direct/range {v4 .. v21}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateBody(JIFFFFFFFFZZZZZF)J

    move-result-wide v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide v2, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Body;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 123
    .local v22, body:Lcom/badlogic/gdx/physics/box2d/Body;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Ljava/util/HashMap;

    move-object v4, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object v22
.end method

.method public createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;
    .locals 8
    .parameter "def"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J

    move-result-wide v1

    .line 168
    .local v1, jointAddr:J
    const/4 v0, 0x0

    .line 169
    .local v0, joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_0

    .line 170
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 171
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_0
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_1

    .line 172
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 173
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_1
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_2

    .line 174
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 175
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_2
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->LineJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_3

    .line 176
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 177
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_3
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_4

    .line 178
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 179
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_4
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_5

    .line 180
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 181
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_5
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_6

    .line 182
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 183
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_6
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_7

    .line 184
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 185
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_7
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v5, v6, :cond_8

    .line 186
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;

    .end local v0           #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 187
    .restart local v0       #joint:Lcom/badlogic/gdx/physics/box2d/Joint;
    :cond_8
    if-eqz v0, :cond_9

    .line 188
    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_9
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v3, v5, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 190
    .local v3, jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;
    new-instance v4, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 191
    .local v4, jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;
    iput-object v3, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 192
    iput-object v4, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 193
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v5, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-object v0
.end method

.method public destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 153
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 155
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyBody(JJ)V

    .line 156
    return-void

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-wide v3, v1, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v3, v1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 4
    .parameter "joint"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyJoint(JJ)V

    .line 385
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 596
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniDispose(J)V

    .line 597
    return-void
.end method

.method public getAutoClearForces()Z
    .locals 2

    .prologue
    .line 527
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetAutoClearForces(J)Z

    move-result v0

    return v0
.end method

.method public getBodyCount()I
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetBodyCount(J)I

    move-result v0

    return v0
.end method

.method public getContactCount()I
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactCount(J)I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World;->getContactCount()I

    move-result v3

    .line 571
    .local v3, numContacts:I
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 572
    new-array v4, v3, [J

    iput-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 573
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 575
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 576
    .local v1, freeConts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sub-int v4, v3, v1

    if-lt v2, v4, :cond_2

    .line 579
    .end local v1           #freeConts:I
    .end local v2           #i:I
    :cond_1
    iget-wide v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v6, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    invoke-direct {p0, v4, v5, v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactList(J[J)V

    .line 581
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 582
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 589
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    return-object v4

    .line 577
    .restart local v1       #freeConts:I
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    new-instance v5, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v6, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1           #freeConts:I
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 585
    .local v0, contact:Lcom/badlogic/gdx/physics/box2d/Contact;
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    aget-wide v4, v4, v2

    iput-wide v4, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 586
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetGravity(J[F)V

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getJointCount()I
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetJointcount(J)I

    move-result v0

    return v0
.end method

.method public getProxyCount()I
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetProxyCount(J)I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniIsLocked(J)Z

    move-result v0

    return v0
.end method

.method public setAutoClearForces(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetAutoClearForces(JZ)V

    .line 518
    return-void
.end method

.method public setContactFilter(Lcom/badlogic/gdx/physics/box2d/ContactFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 91
    return-void
.end method

.method public setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    .line 100
    return-void
.end method

.method public setContinuousPhysics(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetContiousPhysics(JZ)V

    .line 434
    return-void
.end method

.method public setDestructionListener(Lcom/badlogic/gdx/physics/box2d/DestructionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    return-void
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter "gravity"

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetGravity(JFF)V

    .line 484
    return-void
.end method

.method public setWarmStarting(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetWarmStarting(JZ)V

    .line 424
    return-void
.end method

.method public step(FII)V
    .locals 6
    .parameter "timeStep"
    .parameter "velocityIterations"
    .parameter "positionIterations"

    .prologue
    .line 400
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->jniStep(JFII)V

    .line 401
    return-void
.end method
