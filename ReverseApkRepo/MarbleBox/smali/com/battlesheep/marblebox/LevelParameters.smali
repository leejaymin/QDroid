.class public Lcom/battlesheep/marblebox/LevelParameters;
.super Ljava/lang/Object;
.source "LevelParameters.java"


# static fields
.field public static final Difficult:Lcom/battlesheep/marblebox/LevelParameters;

.field public static final Easy:Lcom/battlesheep/marblebox/LevelParameters;

.field public static final Normal:Lcom/battlesheep/marblebox/LevelParameters;

.field public static current:Lcom/battlesheep/marblebox/LevelParameters;


# instance fields
.field public colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public idleTimeout:I

.field public nameResourceId:I

.field public newMarbles:I

.field public scoreMultiplier:I

.field public startingMarbles:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 59
    new-instance v0, Lcom/battlesheep/marblebox/LevelParameters;

    invoke-direct {v0}, Lcom/battlesheep/marblebox/LevelParameters;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    .line 60
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    const v1, 0x7f060004

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->nameResourceId:I

    .line 61
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const/high16 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const v1, -0xffff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const v1, -0xff0100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    const/4 v1, 0x4

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->newMarbles:I

    .line 67
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->startingMarbles:I

    .line 68
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x2710

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->idleTimeout:I

    .line 69
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    const/4 v1, 0x1

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->scoreMultiplier:I

    .line 72
    new-instance v0, Lcom/battlesheep/marblebox/LevelParameters;

    invoke-direct {v0}, Lcom/battlesheep/marblebox/LevelParameters;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    .line 73
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    const v1, 0x7f060005

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->nameResourceId:I

    .line 74
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    sget-object v1, Lcom/battlesheep/marblebox/LevelParameters;->Easy:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v1, v1, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const v1, -0xff0001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    iput v2, v0, Lcom/battlesheep/marblebox/LevelParameters;->newMarbles:I

    .line 77
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x23

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->startingMarbles:I

    .line 78
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x1d4c

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->idleTimeout:I

    .line 79
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    iput v2, v0, Lcom/battlesheep/marblebox/LevelParameters;->scoreMultiplier:I

    .line 82
    new-instance v0, Lcom/battlesheep/marblebox/LevelParameters;

    invoke-direct {v0}, Lcom/battlesheep/marblebox/LevelParameters;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    .line 83
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    const v1, 0x7f060006

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->nameResourceId:I

    .line 84
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    sget-object v1, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v1, v1, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    iget-object v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    const v1, -0xff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    const/4 v1, 0x6

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->newMarbles:I

    .line 87
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x28

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->startingMarbles:I

    .line 88
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0x1388

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->idleTimeout:I

    .line 89
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Difficult:Lcom/battlesheep/marblebox/LevelParameters;

    const/16 v1, 0xa

    iput v1, v0, Lcom/battlesheep/marblebox/LevelParameters;->scoreMultiplier:I

    .line 92
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->Normal:Lcom/battlesheep/marblebox/LevelParameters;

    sput-object v0, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/battlesheep/marblebox/LevelParameters;->colors:Ljava/util/List;

    .line 13
    return-void
.end method
