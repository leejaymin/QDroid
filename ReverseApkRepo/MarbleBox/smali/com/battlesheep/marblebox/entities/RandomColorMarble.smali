.class public Lcom/battlesheep/marblebox/entities/RandomColorMarble;
.super Lcom/battlesheep/marblebox/entities/Marble;
.source "RandomColorMarble.java"


# static fields
.field private static smRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/entities/RandomColorMarble;->smRandom:Ljava/util/Random;

    .line 12
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 24
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    .line 25
    sget-object v1, Lcom/battlesheep/marblebox/entities/RandomColorMarble;->smRandom:Ljava/util/Random;

    sget-object v2, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v2, v2, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/battlesheep/marblebox/entities/Marble;-><init>(FFFI)V

    .line 26
    return-void
.end method
