.class public Lcom/stickycoding/rokon/background/DrawTexBackground;
.super Lcom/stickycoding/rokon/Background;
.source "DrawTexBackground.java"


# instance fields
.field private texture:Lcom/stickycoding/rokon/Texture;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/stickycoding/rokon/Background;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stickycoding/rokon/background/DrawTexBackground;->texture:Lcom/stickycoding/rokon/Texture;

    .line 22
    return-void
.end method


# virtual methods
.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/Background;->onDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 26
    iget-object v0, p0, Lcom/stickycoding/rokon/background/DrawTexBackground;->texture:Lcom/stickycoding/rokon/Texture;

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v3, v3, v1, v2}, Lcom/stickycoding/rokon/GLHelper;->drawTex(Lcom/stickycoding/rokon/Texture;FFFF)V

    .line 28
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/stickycoding/rokon/background/DrawTexBackground;->texture:Lcom/stickycoding/rokon/Texture;

    .line 33
    return-void
.end method
