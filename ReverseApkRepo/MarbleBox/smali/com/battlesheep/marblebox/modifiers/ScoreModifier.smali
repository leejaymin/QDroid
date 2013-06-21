.class public Lcom/battlesheep/marblebox/modifiers/ScoreModifier;
.super Lcom/stickycoding/rokon/Modifier;
.source "ScoreModifier.java"


# static fields
.field private static final ALPHA_STEP:F = -0.0125f

.field private static final Y_STEP:F = -0.05f


# instance fields
.field private mAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/stickycoding/rokon/Modifier;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/stickycoding/rokon/Sprite;)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->remove()V

    .line 16
    return-void
.end method

.method public onStart(Lcom/stickycoding/rokon/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->mAlpha:F

    .line 21
    return-void
.end method

.method public onUpdate(Lcom/stickycoding/rokon/Sprite;)V
    .locals 2
    .parameter "sprite"

    .prologue
    .line 26
    const v0, -0x42b33333

    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->moveY(F)V

    .line 28
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->mAlpha:F

    const v1, -0x43b33333

    add-float/2addr v0, v1

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->mAlpha:F

    .line 30
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->end()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ScoreModifier;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    goto :goto_0
.end method
