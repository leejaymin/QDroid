.class Lcom/battlesheep/marblebox/GameScene$5;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/GameScene;->dropMarbles(I)V

    .line 275
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$5(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShakes:I
    invoke-static {v1}, Lcom/battlesheep/marblebox/GameScene;->access$4(Lcom/battlesheep/marblebox/GameScene;)I

    move-result v1

    if-lez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const-wide/16 v2, 0x5dc

    iget-object v4, p0, Lcom/battlesheep/marblebox/GameScene$5;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mShake:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/battlesheep/marblebox/GameScene;->access$9(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/battlesheep/marblebox/GameScene;->queueGame(JLjava/lang/Runnable;)Z

    .line 275
    :cond_0
    monitor-exit v0

    .line 280
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
