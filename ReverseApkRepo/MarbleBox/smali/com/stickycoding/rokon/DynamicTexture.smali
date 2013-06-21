.class public Lcom/stickycoding/rokon/DynamicTexture;
.super Lcom/stickycoding/rokon/Texture;
.source "DynamicTexture.java"


# instance fields
.field protected bmpCopy:Landroid/graphics/Bitmap;

.field protected canvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "filename"
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;II)V

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBitmap()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 48
    :try_start_0
    sget-object v2, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/stickycoding/rokon/DynamicTexture;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    .local v1, tBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    .line 50
    iget-object v2, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #tBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 52
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Texture.getBitmap() error, bad asset?"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/stickycoding/rokon/DynamicTexture;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DynamicTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/stickycoding/rokon/DynamicTexture;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/stickycoding/rokon/DynamicTexture;->canvas:Landroid/graphics/Canvas;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/stickycoding/rokon/DynamicTexture;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->refreshTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 82
    return-void
.end method
