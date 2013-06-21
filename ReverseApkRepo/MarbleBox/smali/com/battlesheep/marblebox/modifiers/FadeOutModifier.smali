.class public Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;
.super Lcom/stickycoding/rokon/Modifier;
.source "FadeOutModifier.java"


# instance fields
.field private mAlpha:F

.field private mAlphaStep:F

.field private mHandler:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(FLjava/lang/Runnable;)V
    .locals 0
    .parameter "alphaStep"
    .parameter "endHandler"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/stickycoding/rokon/Modifier;-><init>()V

    .line 13
    iput p1, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlphaStep:F

    .line 14
    iput-object p2, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mHandler:Ljava/lang/Runnable;

    .line 15
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/stickycoding/rokon/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mHandler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_0
    return-void
.end method

.method public onStart(Lcom/stickycoding/rokon/Sprite;)V
    .locals 1
    .parameter "sprite"

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlpha:F

    .line 27
    return-void
.end method

.method public onUpdate(Lcom/stickycoding/rokon/Sprite;)V
    .locals 2
    .parameter "sprite"

    .prologue
    .line 31
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlpha:F

    iget v1, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlphaStep:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlpha:F

    .line 33
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->end()V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/battlesheep/marblebox/modifiers/FadeOutModifier;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    goto :goto_0
.end method
