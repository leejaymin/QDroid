.class Lcom/battlesheep/marblebox/GameScene$4$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/GameScene$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/battlesheep/marblebox/GameScene$4;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/GameScene$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$4$1;->this$1:Lcom/battlesheep/marblebox/GameScene$4;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z
    .locals 4
    .parameter "fixture"

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/battlesheep/marblebox/entities/Marble;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    const/high16 v3, -0x3fe0

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 260
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
