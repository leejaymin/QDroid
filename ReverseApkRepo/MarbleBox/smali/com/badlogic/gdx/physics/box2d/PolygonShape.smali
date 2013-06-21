.class public Lcom/badlogic/gdx/physics/box2d/PolygonShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "PolygonShape.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->newPolygonShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    .line 13
    return-void
.end method

.method private native jniSet(J[F)V
.end method

.method private native jniSetAsBox(JFF)V
.end method

.method private native jniSetAsBox(JFFFFF)V
.end method

.method private native jniSetAsEdge(JFFFF)V
.end method

.method private native newPolygonShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .parameter "vertices"

    .prologue
    .line 32
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [F

    .line 33
    .local v2, verts:[F
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 38
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v3, v4, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[F)V

    .line 39
    return-void

    .line 35
    :cond_0
    aget-object v3, p1, v1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v0

    .line 36
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v2, v3

    .line 33
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAsBox(FF)V
    .locals 2
    .parameter "hx"
    .parameter "hy"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFF)V

    .line 51
    return-void
.end method

.method public setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V
    .locals 8
    .parameter "hx"
    .parameter "hy"
    .parameter "center"
    .parameter "angle"

    .prologue
    .line 64
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFFFFF)V

    .line 65
    return-void
.end method

.method public setAsEdge(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 7
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 74
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsEdge(JFFFF)V

    .line 75
    return-void
.end method
