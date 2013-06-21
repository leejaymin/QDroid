.class Lcom/battlesheep/marblebox/GameScene$3;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$3;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$3;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$3;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$3(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/SpriteFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/SpriteFactory;->createMarble()Lcom/stickycoding/rokon/GameObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/battlesheep/marblebox/GameScene;->add(ILcom/stickycoding/rokon/GameObject;)V

    .line 145
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$3;->this$0:Lcom/battlesheep/marblebox/GameScene;

    sget-object v1, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v1, v1, Lcom/battlesheep/marblebox/LevelParameters;->idleTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/battlesheep/marblebox/GameScene;->queueGame(JLjava/lang/Runnable;)Z

    .line 146
    return-void
.end method
