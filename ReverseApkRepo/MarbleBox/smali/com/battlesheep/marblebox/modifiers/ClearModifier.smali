.class public Lcom/battlesheep/marblebox/modifiers/ClearModifier;
.super Lcom/stickycoding/rokon/Modifier;
.source "ClearModifier.java"


# static fields
.field private static final ALPHA_STEP:F = -1.0f


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
    .line 14
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->remove()V

    .line 15
    return-void
.end method

.method public onStart(Lcom/stickycoding/rokon/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->mAlpha:F

    .line 20
    return-void
.end method

.method public onUpdate(Lcom/stickycoding/rokon/Sprite;)V
    .locals 2
    .parameter "sprite"

    .prologue
    .line 25
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->mAlpha:F

    const/high16 v1, -0x4080

    add-float/2addr v0, v1

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->mAlpha:F

    .line 27
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->end()V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/ClearModifier;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    goto :goto_0
.end method
