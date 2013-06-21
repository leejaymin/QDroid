.class Lcom/battlesheep/marblebox/GameScene$6;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 286
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mInputSyncRoot:Ljava/lang/Object;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$10(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$11(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/entities/Marble;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$11(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/entities/Marble;

    move-result-object v2

    instance-of v2, v2, Lcom/battlesheep/marblebox/entities/SurpriseMarble;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v4

    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$11(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/entities/Marble;

    move-result-object v2

    check-cast v2, Lcom/battlesheep/marblebox/entities/SurpriseMarble;

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->executeEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->toast(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/battlesheep/marblebox/SoundFX;->play(I)V

    .line 303
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const/4 v4, 0x0

    #setter for: Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-static {v2, v4}, Lcom/battlesheep/marblebox/GameScene;->access$16(Lcom/battlesheep/marblebox/GameScene;Lcom/battlesheep/marblebox/entities/Marble;)V

    .line 286
    :cond_1
    monitor-exit v3

    .line 306
    return-void

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    iget-object v4, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-static {v4}, Lcom/battlesheep/marblebox/GameScene;->access$11(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/entities/Marble;

    move-result-object v4

    #calls: Lcom/battlesheep/marblebox/GameScene;->removeSequence(Lcom/battlesheep/marblebox/entities/Marble;)J
    invoke-static {v2, v4}, Lcom/battlesheep/marblebox/GameScene;->access$12(Lcom/battlesheep/marblebox/GameScene;Lcom/battlesheep/marblebox/entities/Marble;)J

    move-result-wide v0

    .local v0, score:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mScore:J
    invoke-static {v2}, Lcom/battlesheep/marblebox/GameScene;->access$2(Lcom/battlesheep/marblebox/GameScene;)J

    move-result-wide v4

    add-long/2addr v4, v0

    #setter for: Lcom/battlesheep/marblebox/GameScene;->mScore:J
    invoke-static {v2, v4, v5}, Lcom/battlesheep/marblebox/GameScene;->access$13(Lcom/battlesheep/marblebox/GameScene;J)V

    .line 296
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    iget-object v4, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/battlesheep/marblebox/GameScene;->access$14(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 297
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    const-string v5, "+"

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/battlesheep/marblebox/activities/GameActivity;->toast(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/battlesheep/marblebox/GameScene$6;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;
    invoke-static {v5}, Lcom/battlesheep/marblebox/GameScene;->access$3(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/SpriteFactory;

    move-result-object v5

    sget-object v6, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v6, v6, Lcom/battlesheep/marblebox/LevelParameters;->newMarbles:I

    invoke-virtual {v5, v6}, Lcom/battlesheep/marblebox/SpriteFactory;->createMarbles(I)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/battlesheep/marblebox/GameScene;->add(ILjava/util/Collection;)V
    invoke-static {v2, v4, v5}, Lcom/battlesheep/marblebox/GameScene;->access$15(Lcom/battlesheep/marblebox/GameScene;ILjava/util/Collection;)V

    .line 299
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/battlesheep/marblebox/SoundFX;->play(I)V

    goto :goto_0

    .line 286
    .end local v0           #score:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 297
    .restart local v0       #score:J
    :cond_3
    :try_start_1
    const-string v5, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
