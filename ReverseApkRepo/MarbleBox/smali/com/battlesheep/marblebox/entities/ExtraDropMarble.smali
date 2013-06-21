.class public Lcom/battlesheep/marblebox/entities/ExtraDropMarble;
.super Lcom/battlesheep/marblebox/entities/SurpriseMarble;
.source "ExtraDropMarble.java"


# static fields
.field private static final MAX_MARBLES:I = 0x5


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;-><init>(FFF)V

    .line 18
    return-void
.end method


# virtual methods
.method public executeEffect()Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    sget-object v1, Lcom/battlesheep/marblebox/entities/ExtraDropMarble;->smRandom:Ljava/util/Random;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 23
    .local v0, nMarbles:I
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ExtraDropMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/battlesheep/marblebox/GameScene;->dropMarbles(I)V

    .line 24
    invoke-super {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->executeEffect()Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ExtraDropMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
