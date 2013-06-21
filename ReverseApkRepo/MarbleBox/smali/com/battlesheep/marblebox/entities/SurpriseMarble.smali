.class public abstract Lcom/battlesheep/marblebox/entities/SurpriseMarble;
.super Lcom/battlesheep/marblebox/entities/Marble;
.source "SurpriseMarble.java"


# static fields
.field protected static smRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->smRandom:Ljava/util/Random;

    .line 9
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/battlesheep/marblebox/entities/Marble;-><init>(FFFI)V

    .line 22
    return-void
.end method


# virtual methods
.method public executeEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->remove()V

    .line 30
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/battlesheep/marblebox/GameScene;
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/entities/SurpriseMarble;->getParentScene()Lcom/stickycoding/rokon/Scene;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/battlesheep/marblebox/GameScene;

    return-object p0
.end method
