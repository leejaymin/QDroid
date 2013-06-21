.class public Lcom/stickycoding/rokon/TextTexture;
.super Lcom/stickycoding/rokon/Texture;
.source "TextTexture.java"


# instance fields
.field protected bmp:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Lcom/stickycoding/rokon/Texture;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stickycoding/rokon/TextTexture;->bmp:Landroid/graphics/Bitmap;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/TextTexture;->width:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/TextTexture;->height:I

    .line 20
    iput v1, p0, Lcom/stickycoding/rokon/TextTexture;->columns:I

    .line 21
    iput v1, p0, Lcom/stickycoding/rokon/TextTexture;->rows:I

    .line 22
    iput v1, p0, Lcom/stickycoding/rokon/TextTexture;->tileCount:I

    .line 23
    iget v0, p0, Lcom/stickycoding/rokon/TextTexture;->width:I

    invoke-static {v0}, Lcom/stickycoding/rokon/TextTexture;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/TextTexture;->textureWidth:I

    .line 24
    iget v0, p0, Lcom/stickycoding/rokon/TextTexture;->height:I

    invoke-static {v0}, Lcom/stickycoding/rokon/TextTexture;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/TextTexture;->textureHeight:I

    .line 25
    return-void
.end method


# virtual methods
.method protected clearBitmap()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/stickycoding/rokon/TextTexture;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method
