.class public Lcom/garageapps/android/spacetracks/game/EffectsFog;
.super Ljava/lang/Object;
.source "EffectsFog.java"


# instance fields
.field private FOG_INC:I

.field private density:I

.field private destination:I

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->FOG_INC:I

    .line 3
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->state:Z

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    .line 16
    return-void
.end method

.method public start(I)V
    .locals 1
    .parameter "destination"

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->state:Z

    .line 21
    iput p1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->destination:I

    .line 22
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->state:Z

    .line 49
    return-void
.end method

.method public update()F
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->destination:I

    if-eq v0, v1, :cond_0

    .line 28
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->destination:I

    if-le v0, v1, :cond_1

    .line 30
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->FOG_INC:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    .line 43
    :cond_0
    :goto_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0

    .line 33
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->destination:I

    if-ge v0, v1, :cond_2

    .line 35
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->FOG_INC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    goto :goto_0

    .line 37
    :cond_2
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->density:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/EffectsFog;->destination:I

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/EffectsFog;->stop()V

    goto :goto_0
.end method
