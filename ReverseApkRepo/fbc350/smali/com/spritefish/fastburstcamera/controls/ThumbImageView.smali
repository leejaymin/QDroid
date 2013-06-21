.class public Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
.super Landroid/widget/ImageView;
.source "ThumbImageView.java"


# instance fields
.field private bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

.field private isFirst:Z

.field p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->p:Landroid/graphics/Paint;

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    if-nez v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v5}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getPreshotThumbs()Ljava/util/List;

    move-result-object v2

    .line 41
    .local v2, rgbs:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    iget-boolean v5, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->isFirst:Z

    if-nez v5, :cond_2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    :goto_1
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v6}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbWidth()I

    move-result v6

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v7}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v5}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v6}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 50
    .local v0, aspect:F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v3, v5, v6

    .line 51
    .local v3, slip:F
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    .local v4, src:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 45
    .end local v0           #aspect:F
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #slip:F
    .end local v4           #src:Landroid/graphics/Rect;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    goto :goto_1
.end method

.method public setIsFirst(Z)V
    .locals 0
    .parameter "first"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->isFirst:Z

    .line 63
    return-void
.end method

.method public setNewByteArrayManager(Lcom/spritefish/camera/memory/NewByteArrayManager;)V
    .locals 0
    .parameter "bam"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    .line 58
    return-void
.end method
