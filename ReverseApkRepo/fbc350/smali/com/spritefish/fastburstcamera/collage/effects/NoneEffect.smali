.class public Lcom/spritefish/fastburstcamera/collage/effects/NoneEffect;
.super Ljava/lang/Object;
.source "NoneEffect.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/collage/effects/Effect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyEffect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0
    .parameter "full"
    .parameter "r"
    .parameter "text"

    .prologue
    .line 25
    return-void
.end method

.method public destroyEffect()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "None"

    return-object v0
.end method

.method public initEffect(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 13
    return-void
.end method
