.class public Lcom/battlesheep/marblebox/entities/ExtraLifeMarble;
.super Lcom/battlesheep/marblebox/entities/SurpriseMarble;
.source "ExtraLifeMarble.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;-><init>(FFF)V

    .line 15
    return-void
.end method


# virtual methods
.method public executeEffect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->executeEffect()Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ExtraLifeMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/GameScene;->affectLives(I)V

    .line 21
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ExtraLifeMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
