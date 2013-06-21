.class public Lcom/battlesheep/marblebox/entities/ExplosiveMarble;
.super Lcom/battlesheep/marblebox/entities/SurpriseMarble;
.source "ExplosiveMarble.java"


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;-><init>(FFF)V

    .line 17
    return-void
.end method


# virtual methods
.method public executeEffect()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/battlesheep/marblebox/entities/ExplosiveMarble;->findContacts(Z)Ljava/util/Set;

    move-result-object v1

    .line 27
    .local v1, neighbours:Ljava/util/Set;,"Ljava/util/Set<Lcom/battlesheep/marblebox/entities/Marble;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-super {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->executeEffect()Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ExplosiveMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 27
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    .line 28
    .local v0, marble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-virtual {v0}, Lcom/battlesheep/marblebox/entities/Marble;->remove()V

    goto :goto_0
.end method
