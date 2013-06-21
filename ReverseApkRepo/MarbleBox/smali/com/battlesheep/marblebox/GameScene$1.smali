.class Lcom/battlesheep/marblebox/GameScene$1;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$1;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$1;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$0(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene$1;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mLives:I
    invoke-static {v1}, Lcom/battlesheep/marblebox/GameScene;->access$1(Lcom/battlesheep/marblebox/GameScene;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->updateLives(I)V

    .line 129
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$1;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$0(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene$1;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mScore:J
    invoke-static {v1}, Lcom/battlesheep/marblebox/GameScene;->access$2(Lcom/battlesheep/marblebox/GameScene;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->updateScore(J)V

    .line 130
    return-void
.end method
