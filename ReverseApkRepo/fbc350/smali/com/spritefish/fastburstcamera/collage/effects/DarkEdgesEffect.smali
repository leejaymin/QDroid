.class public Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;
.super Ljava/lang/Object;
.source "DarkEdgesEffect.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/collage/effects/Effect;


# instance fields
.field private res:Landroid/content/res/Resources;

.field private vignette:Landroid/graphics/drawable/NinePatchDrawable;

.field vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public applyEffect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1
    .parameter "full"
    .parameter "r"
    .parameter "text"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 39
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public destroyEffect()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Dark vignette"

    return-object v0
.end method

.method public initEffect(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;->res:Landroid/content/res/Resources;

    .line 24
    const v0, 0x7f02003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;->vignette:Landroid/graphics/drawable/NinePatchDrawable;

    .line 25
    const v0, 0x7f02003f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/collage/effects/DarkEdgesEffect;->vignetteSmall:Landroid/graphics/drawable/NinePatchDrawable;

    .line 26
    return-void
.end method
