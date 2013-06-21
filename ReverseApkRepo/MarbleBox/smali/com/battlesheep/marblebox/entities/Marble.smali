.class public Lcom/battlesheep/marblebox/entities/Marble;
.super Lcom/stickycoding/rokon/PhysicalSprite;
.source "Marble.java"


# instance fields
.field private mApproximation:F

.field private mColor:I


# direct methods
.method public constructor <init>(FFFI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "size"
    .parameter "color"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/stickycoding/rokon/PhysicalSprite;-><init>(FFFF)V

    .line 33
    invoke-virtual {p0, p4}, Lcom/battlesheep/marblebox/entities/Marble;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->createDynamicCircle()V

    .line 37
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->setTouchable()V

    .line 41
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getWidth()F

    move-result v0

    const v1, 0x3f89999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/battlesheep/marblebox/entities/Marble;->mApproximation:F

    .line 43
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setSleepingAllowed(Z)V

    .line 47
    return-void
.end method

.method private isApproximate(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)Z
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, v4, v5

    .line 156
    .local v2, dx:F
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, v4, v5

    .line 157
    .local v3, dy:F
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 158
    .local v0, distance:D
    iget v4, p0, Lcom/battlesheep/marblebox/entities/Marble;->mApproximation:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aggregateSequence(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/battlesheep/marblebox/entities/Marble;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/battlesheep/marblebox/entities/Marble;>;"
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/entities/Marble;->findContacts(Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    .line 98
    .local v0, neighbour:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-virtual {v0, p1}, Lcom/battlesheep/marblebox/entities/Marble;->aggregateSequence(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected findContacts(Z)Ljava/util/Set;
    .locals 11
    .parameter "sameColorOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/battlesheep/marblebox/entities/Marble;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v7, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/battlesheep/marblebox/entities/Marble;>;"
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getParentScene()Lcom/stickycoding/rokon/Scene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stickycoding/rokon/Scene;->getWorld()Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 151
    return-object v7

    .line 112
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 114
    .local v4, contact:Lcom/badlogic/gdx/physics/box2d/Contact;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Contact;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 122
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 123
    .local v1, bodyA:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    .line 125
    .local v2, bodyB:Lcom/badlogic/gdx/physics/box2d/Body;
    invoke-direct {p0, v1, v2}, Lcom/battlesheep/marblebox/entities/Marble;->isApproximate(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 129
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 130
    .local v5, objA:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 132
    .local v6, objB:Ljava/lang/Object;
    if-ne v5, p0, :cond_3

    .line 133
    instance-of v9, v6, Lcom/battlesheep/marblebox/entities/Marble;

    if-eqz v9, :cond_0

    .line 134
    move-object v0, v6

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    move-object v3, v0

    .line 135
    .local v3, candidate:Lcom/battlesheep/marblebox/entities/Marble;
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/battlesheep/marblebox/entities/Marble;->getColor()I

    move-result v9

    iget v10, p0, Lcom/battlesheep/marblebox/entities/Marble;->mColor:I

    if-ne v9, v10, :cond_0

    .line 136
    :cond_2
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v3           #candidate:Lcom/battlesheep/marblebox/entities/Marble;
    :cond_3
    if-ne v6, p0, :cond_0

    .line 141
    instance-of v9, v5, Lcom/battlesheep/marblebox/entities/Marble;

    if-eqz v9, :cond_0

    .line 142
    move-object v0, v5

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    move-object v3, v0

    .line 143
    .restart local v3       #candidate:Lcom/battlesheep/marblebox/entities/Marble;
    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lcom/battlesheep/marblebox/entities/Marble;->getColor()I

    move-result v9

    iget v10, p0, Lcom/battlesheep/marblebox/entities/Marble;->mColor:I

    if-ne v9, v10, :cond_0

    .line 144
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/battlesheep/marblebox/entities/Marble;->mColor:I

    return v0
.end method

.method public onUpdate()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getParentScene()Lcom/stickycoding/rokon/Scene;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/GameScene;

    invoke-virtual {v0, p0}, Lcom/battlesheep/marblebox/GameScene;->outOfScene(Lcom/battlesheep/marblebox/entities/Marble;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->remove()V

    .line 84
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->getParentScene()Lcom/stickycoding/rokon/Scene;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/GameScene;

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/GameScene;->death()V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/stickycoding/rokon/PhysicalSprite;->onUpdate()V

    .line 88
    return-void
.end method

.method public refreshTexture()V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/battlesheep/marblebox/entities/Marble;->mColor:I

    invoke-static {v0}, Lcom/battlesheep/marblebox/Textures;->getMarbleTexture(I)Lcom/stickycoding/rokon/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/entities/Marble;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 71
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "newColor"

    .prologue
    .line 62
    iput p1, p0, Lcom/battlesheep/marblebox/entities/Marble;->mColor:I

    .line 63
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/Marble;->refreshTexture()V

    .line 64
    return-void
.end method
