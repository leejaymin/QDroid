.class public Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;
.super Landroid/widget/ImageView;
.source "ThumbListImageView.java"


# instance fields
.field private bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

.field p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->p:Landroid/graphics/Paint;

    .line 21
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 31
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getPreshotThumbs()Ljava/util/List;

    move-result-object v14

    .line 34
    .local v14, rgbs:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    return-void

    .line 36
    :cond_1
    const/high16 v1, 0x4120

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float v12, v1, v3

    .line 37
    .local v12, per:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v13, v1, 0x8

    .line 38
    .local v13, pixPrPic:I
    move/from16 v16, v13

    .line 39
    .local v16, x:I
    const/4 v15, 0x0

    .line 40
    .local v15, sum:F
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_0

    .line 41
    add-float/2addr v15, v12

    .line 42
    const/high16 v1, 0x3f80

    cmpl-float v1, v15, v1

    if-ltz v1, :cond_2

    .line 44
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 46
    .local v2, rgb:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v1, v16

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getThumbHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 47
    add-int v16, v16, v13

    .line 48
    const/high16 v1, 0x3f80

    sub-float/2addr v15, v1

    .line 40
    .end local v2           #rgb:[I
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0
.end method

.method public setNewByteArrayManager(Lcom/spritefish/camera/memory/NewByteArrayManager;)V
    .locals 0
    .parameter "bam"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->bam:Lcom/spritefish/camera/memory/NewByteArrayManager;

    .line 57
    return-void
.end method
