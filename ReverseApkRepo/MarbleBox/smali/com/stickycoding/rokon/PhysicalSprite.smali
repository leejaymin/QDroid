.class public Lcom/stickycoding/rokon/PhysicalSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "PhysicalSprite.java"

# interfaces
.implements Lcom/stickycoding/rokon/Updateable;


# instance fields
.field public body:Lcom/badlogic/gdx/physics/box2d/Body;

.field public bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

.field protected usePhysics:Z


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 34
    return-void
.end method


# virtual methods
.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 1
    .parameter "bodyDef"
    .parameter "fixture"

    .prologue
    .line 43
    sget-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 44
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 45
    iput-object p1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    .line 47
    return-void
.end method

.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/Shape;)V
    .locals 2
    .parameter "bodyDef"
    .parameter "shape"

    .prologue
    .line 56
    sget-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 57
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/Shape;F)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 58
    iput-object p1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    .line 60
    return-void
.end method

.method public createBoxShape()Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 77
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 78
    .local v0, poly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 79
    return-object v0
.end method

.method public createCircleShape()Lcom/badlogic/gdx/physics/box2d/CircleShape;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 68
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 69
    return-object v0
.end method

.method public createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixture"

    .prologue
    const/high16 v3, 0x4000

    .line 88
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 89
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 90
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 92
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 93
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 94
    return-void
.end method

.method public createDynamicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V
    .locals 4
    .parameter "shape"

    .prologue
    const/high16 v3, 0x4000

    .line 102
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 103
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 104
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 105
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 106
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 107
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 108
    return-void
.end method

.method public createDynamicBox()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 252
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 253
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 255
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 256
    return-void
.end method

.method public createDynamicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixtureDef"

    .prologue
    const/high16 v3, 0x4000

    .line 241
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 242
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 243
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 244
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 245
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 246
    return-void
.end method

.method public createDynamicCircle()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 184
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 186
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 187
    return-void
.end method

.method public createDynamicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .parameter "fixtureDef"

    .prologue
    .line 172
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 173
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 174
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 175
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createDynamicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 176
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 177
    return-void
.end method

.method public createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixture"

    .prologue
    const/high16 v3, 0x4000

    .line 144
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 145
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 146
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 147
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 148
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 149
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 150
    return-void
.end method

.method public createKinematicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V
    .locals 4
    .parameter "shape"

    .prologue
    const/high16 v3, 0x4000

    .line 158
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 159
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 160
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 161
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 162
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 163
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 164
    return-void
.end method

.method public createKinematicBox()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 298
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 299
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 301
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 302
    return-void
.end method

.method public createKinematicBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixtureDef"

    .prologue
    const/high16 v3, 0x4000

    .line 287
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 288
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 289
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 290
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 291
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 292
    return-void
.end method

.method public createKinematicCircle()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 230
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 232
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 233
    return-void
.end method

.method public createKinematicCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .parameter "fixtureDef"

    .prologue
    .line 218
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 219
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 220
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 221
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createKinematicBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 222
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 223
    return-void
.end method

.method public createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixture"

    .prologue
    const/high16 v3, 0x4000

    .line 116
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 117
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 118
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 119
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 120
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 121
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 122
    return-void
.end method

.method public createStaticBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V
    .locals 4
    .parameter "shape"

    .prologue
    const/high16 v3, 0x4000

    .line 130
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 131
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 132
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 133
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->getY()F

    move-result v1

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 134
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    .line 135
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {p0, v0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 136
    return-void
.end method

.method public createStaticBox()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 275
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 276
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 278
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 279
    return-void
.end method

.method public createStaticBox(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 4
    .parameter "fixtureDef"

    .prologue
    const/high16 v3, 0x4000

    .line 264
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 265
    .local v0, boxPoly:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FF)V

    .line 266
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 267
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 268
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->dispose()V

    .line 269
    return-void
.end method

.method public createStaticCircle()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 207
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/Shape;)V

    .line 209
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 210
    return-void
.end method

.method public createStaticCircle(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 3
    .parameter "fixtureDef"

    .prologue
    .line 195
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 196
    .local v0, circle:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 197
    iput-object v0, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 198
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PhysicalSprite;->createStaticBody(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 199
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->dispose()V

    .line 200
    return-void
.end method

.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public noPhysics()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    .line 341
    return-void
.end method

.method public onRemove()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/stickycoding/rokon/Sprite;->onRemove()V

    .line 362
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 366
    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 348
    invoke-super {p0}, Lcom/stickycoding/rokon/Sprite;->onUpdate()V

    .line 349
    iget-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->setX(F)V

    .line 351
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->height:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/PhysicalSprite;->setY(F)V

    .line 352
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->rotation:F

    .line 354
    :cond_0
    return-void
.end method

.method public setBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/stickycoding/rokon/PhysicalSprite;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    .line 323
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->stop()V

    .line 324
    return-void
.end method

.method public usePhysics()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/PhysicalSprite;->usePhysics:Z

    .line 333
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->stop()V

    .line 334
    return-void
.end method
