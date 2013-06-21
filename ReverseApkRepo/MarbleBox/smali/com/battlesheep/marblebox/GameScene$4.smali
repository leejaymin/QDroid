.class Lcom/battlesheep/marblebox/GameScene$4;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/battlesheep/marblebox/GameScene;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v4, 0x447a

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakes:I
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$4(Lcom/battlesheep/marblebox/GameScene;)I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$5(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakes:I
    invoke-static {v1}, Lcom/battlesheep/marblebox/GameScene;->access$4(Lcom/battlesheep/marblebox/GameScene;)I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    #setter for: Lcom/battlesheep/marblebox/GameScene;->mShakes:I
    invoke-static {v1, v3}, Lcom/battlesheep/marblebox/GameScene;->access$6(Lcom/battlesheep/marblebox/GameScene;I)V

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/World;->getGravity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 248
    .local v6, gravity:Lcom/badlogic/gdx/math/Vector2;
    iput v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 249
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 252
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    new-instance v1, Lcom/battlesheep/marblebox/GameScene$4$1;

    invoke-direct {v1, p0}, Lcom/battlesheep/marblebox/GameScene$4$1;-><init>(Lcom/battlesheep/marblebox/GameScene$4;)V

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V

    .line 265
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const-wide/16 v1, 0x1f4

    iget-object v3, p0, Lcom/battlesheep/marblebox/GameScene$4;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakeDrop:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/battlesheep/marblebox/GameScene;->access$8(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/battlesheep/marblebox/GameScene;->queueGame(JLjava/lang/Runnable;)Z

    .line 267
    .end local v6           #gravity:Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    return-void

    .line 242
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
