.class Lcom/battlesheep/marblebox/GameScene$2;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene$2;->this$0:Lcom/battlesheep/marblebox/GameScene;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$2;->this$0:Lcom/battlesheep/marblebox/GameScene;

    new-instance v1, Lcom/stickycoding/rokon/background/FixedBackground;

    invoke-static {}, Lcom/battlesheep/marblebox/Textures;->getNextBackground()Lcom/stickycoding/rokon/Texture;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stickycoding/rokon/background/FixedBackground;-><init>(Lcom/stickycoding/rokon/Texture;)V

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/GameScene;->setBackground(Lcom/stickycoding/rokon/Background;)V

    .line 137
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene$2;->this$0:Lcom/battlesheep/marblebox/GameScene;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2, p0}, Lcom/battlesheep/marblebox/GameScene;->queueGame(JLjava/lang/Runnable;)Z

    .line 138
    return-void
.end method
