.class public Lcom/stickycoding/rokon/PhysicsDef;
.super Ljava/lang/Object;
.source "PhysicsDef.java"


# static fields
.field public static final MAX_FIXTURE_DEF_COUNT:I = 0x40


# instance fields
.field public bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

.field protected fixtureCount:I

.field public fixtureDefs:[Lcom/badlogic/gdx/physics/box2d/FixtureDef;

.field public shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureDefs:[Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    .line 26
    new-array v0, v1, [Lcom/badlogic/gdx/physics/box2d/Shape;

    iput-object v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/physics/box2d/Shape;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V
    .locals 2
    .parameter "shape"
    .parameter "fixtureDef"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureDefs:[Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    aput-object p2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->shapes:[Lcom/badlogic/gdx/physics/box2d/Shape;

    iget v1, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    aput-object p1, v0, v1

    .line 33
    iget v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    .line 34
    return-void
.end method

.method public getFixtureCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    return v0
.end method
