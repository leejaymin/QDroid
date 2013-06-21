.class Lcom/battlesheep/marblebox/GameScene$9;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/GameScene;->onAccelerometerChange(FFF)V
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$9;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->getX()F

    move-result v1

    .line 391
    .local v1, tiltX:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x40333333

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$9;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/World;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 394
    .local v0, gravity:Lcom/badlogic/gdx/math/Vector2;
    neg-float v2, v1

    const/high16 v3, 0x3e80

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 395
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$9;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 401
    :goto_0
    return-void

    .line 397
    .end local v0           #gravity:Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$9;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/World;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 398
    .restart local v0       #gravity:Lcom/badlogic/gdx/math/Vector2;
    const/4 v2, 0x0

    iput v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 399
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$9;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method
