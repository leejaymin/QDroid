.class public Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;
.super Ljava/lang/Object;
.source "LightEdgesEffect.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/collage/effects/Effect;


# instance fields
.field private vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public applyEffect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1
    .parameter "full"
    .parameter "r"
    .parameter "text"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public destroyEffect()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "Light vignette"

    return-object v0
.end method

.method public initEffect(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 22
    const v0, 0x7f02003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/LightEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    .line 23
    return-void
.end method
