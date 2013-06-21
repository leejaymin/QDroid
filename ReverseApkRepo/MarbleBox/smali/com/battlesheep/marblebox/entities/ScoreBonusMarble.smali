.class public Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;
.super Lcom/battlesheep/marblebox/entities/SurpriseMarble;
.source "ScoreBonusMarble.java"


# static fields
.field private static final NEGATIVE_CHANCE:F = 0.15f


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;-><init>(FFF)V

    .line 16
    return-void
.end method


# virtual methods
.method public executeEffect()Ljava/lang/String;
    .locals 7

    .prologue
    .line 23
    invoke-super {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->executeEffect()Ljava/lang/String;

    .line 26
    sget-object v1, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;->smRandom:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 28
    .local v0, effect:I
    int-to-double v1, v0

    int-to-double v3, v0

    sget-object v5, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;->smRandom:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 30
    sget-object v1, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;->smRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3e19999a

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 31
    neg-int v0, v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/ScoreBonusMarble;->getScene()Lcom/battlesheep/marblebox/GameScene;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/battlesheep/marblebox/GameScene;->affectScore(I)V

    .line 36
    const-string v1, "%+d"

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
