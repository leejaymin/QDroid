.class public Lcom/stickycoding/rokon/background/FixedBackground;
.super Lcom/stickycoding/rokon/Background;
.source "FixedBackground.java"


# instance fields
.field private bg:Lcom/stickycoding/rokon/DrawableObject;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Texture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/stickycoding/rokon/Background;-><init>()V

    .line 21
    new-instance v0, Lcom/stickycoding/rokon/DrawableObject;

    invoke-static {}, Lcom/stickycoding/rokon/RokonActivity;->getGameWidth()F

    move-result v3

    invoke-static {}, Lcom/stickycoding/rokon/RokonActivity;->getGameHeight()F

    move-result v4

    move v2, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/stickycoding/rokon/DrawableObject;-><init>(FFFFLcom/stickycoding/rokon/Texture;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/background/FixedBackground;->bg:Lcom/stickycoding/rokon/DrawableObject;

    .line 22
    return-void
.end method


# virtual methods
.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/Background;->onDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 26
    iget-object v0, p0, Lcom/stickycoding/rokon/background/FixedBackground;->bg:Lcom/stickycoding/rokon/DrawableObject;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 27
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/stickycoding/rokon/background/FixedBackground;->bg:Lcom/stickycoding/rokon/DrawableObject;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/DrawableObject;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 31
    return-void
.end method
