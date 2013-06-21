.class final Lcom/mosaicture/crop/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/a;


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    new-instance v0, Lcom/mosaicture/crop/m;

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mosaicture/crop/m;-><init>(Landroid/view/View;)V

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v3, v1, 0x5

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->c(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->d(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->c(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    iget-object v4, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->d(Lcom/mosaicture/crop/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->d(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->c(Lcom/mosaicture/crop/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v3

    :goto_0
    sub-int v3, v5, v4

    div-int/lit8 v5, v3, 0x2

    sub-int v3, v9, v1

    div-int/lit8 v9, v3, 0x2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v9

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int/2addr v1, v9

    int-to-float v1, v1

    invoke-direct {v3, v10, v11, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v8, Lcom/mosaicture/crop/a;->b:Landroid/graphics/Matrix;

    iget-object v4, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->e(Lcom/mosaicture/crop/CropImage;)Z

    move-result v4

    iget-object v5, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v5}, Lcom/mosaicture/crop/CropImage;->c(Lcom/mosaicture/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v5}, Lcom/mosaicture/crop/CropImage;->d(Lcom/mosaicture/crop/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/mosaicture/crop/m;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mosaicture/crop/CropImageView;->a(Lcom/mosaicture/crop/m;)V

    iget-object v0, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    iget-object v0, v0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    iget-object v0, v0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/mosaicture/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    iget-object v1, v0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    iget-object v0, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    iget-object v0, v0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/mosaicture/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/crop/m;

    iput-object v0, v1, Lcom/mosaicture/crop/CropImage;->c:Lcom/mosaicture/crop/m;

    iget-object v0, p0, Lcom/mosaicture/crop/b;->a:Lcom/mosaicture/crop/a;

    iget-object v0, v0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    iget-object v0, v0, Lcom/mosaicture/crop/CropImage;->c:Lcom/mosaicture/crop/m;

    iput-boolean v6, v0, Lcom/mosaicture/crop/m;->b:Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->c(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, v8, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->d(Lcom/mosaicture/crop/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v1

    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v1, v3

    move v4, v3

    goto/16 :goto_0
.end method
