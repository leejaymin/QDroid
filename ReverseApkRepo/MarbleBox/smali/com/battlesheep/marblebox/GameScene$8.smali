.class Lcom/battlesheep/marblebox/GameScene$8;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/GameScene;->blockTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/GameScene;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/GameScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$8;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z
    .locals 2
    .parameter "fixture"

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/battlesheep/marblebox/entities/Marble;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    .line 226
    .local v0, marble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-virtual {v0}, Lcom/battlesheep/marblebox/entities/Marble;->removeTouchable()V

    .line 229
    .end local v0           #marble:Lcom/battlesheep/marblebox/entities/Marble;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
