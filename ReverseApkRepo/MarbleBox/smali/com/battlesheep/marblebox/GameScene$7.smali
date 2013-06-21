.class Lcom/battlesheep/marblebox/GameScene$7;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/GameScene;->death()V
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$7;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$7;->this$0:Lcom/battlesheep/marblebox/GameScene;

    #getter for: Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;
    invoke-static {v0}, Lcom/battlesheep/marblebox/GameScene;->access$0(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->gameOver()V

    .line 210
    return-void
.end method
