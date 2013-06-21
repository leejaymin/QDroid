.class public final Lcom/mosaicture/crop/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field a:Lcom/mosaicture/crop/MonitoredActivity;

.field final synthetic b:Lcom/mosaicture/crop/CropImage;


# direct methods
.method public constructor <init>(Lcom/mosaicture/crop/CropImage;Lcom/mosaicture/crop/MonitoredActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mosaicture/crop/k;->a:Lcom/mosaicture/crop/MonitoredActivity;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020010

    return v0
.end method

.method public final b()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    iget-object v0, v0, Lcom/mosaicture/crop/CropImage;->c:Lcom/mosaicture/crop/m;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    iget-boolean v0, v0, Lcom/mosaicture/crop/CropImage;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mosaicture/crop/CropImage;->a:Z

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->i(Lcom/mosaicture/crop/CropImage;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->j(Lcom/mosaicture/crop/CropImage;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->k(Lcom/mosaicture/crop/CropImage;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->i(Lcom/mosaicture/crop/CropImage;)I

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->j(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    iget-object v2, v2, Lcom/mosaicture/crop/CropImage;->c:Lcom/mosaicture/crop/m;

    invoke-virtual {v2}, Lcom/mosaicture/crop/m;->a()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->i(Lcom/mosaicture/crop/CropImage;)I

    move-result v4

    iget-object v5, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v5}, Lcom/mosaicture/crop/CropImage;->j(Lcom/mosaicture/crop/CropImage;)I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    neg-int v4, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v5, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    iget-object v4, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mosaicture/crop/CropImageView;->a()V

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mosaicture/crop/k;->a:Lcom/mosaicture/crop/MonitoredActivity;

    iget-object v2, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-virtual {v2}, Lcom/mosaicture/crop/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mosaicture/crop/l;

    invoke-direct {v3, p0, v0}, Lcom/mosaicture/crop/l;-><init>(Lcom/mosaicture/crop/k;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->f(Lcom/mosaicture/crop/CropImage;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    iget-object v0, v0, Lcom/mosaicture/crop/CropImage;->c:Lcom/mosaicture/crop/m;

    invoke-virtual {v0}, Lcom/mosaicture/crop/m;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v2}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2, v1, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mosaicture/crop/CropImageView;->a()V

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->i(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->j(Lcom/mosaicture/crop/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->k(Lcom/mosaicture/crop/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v2}, Lcom/mosaicture/crop/CropImage;->i(Lcom/mosaicture/crop/CropImage;)I

    move-result v2

    iget-object v3, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v3}, Lcom/mosaicture/crop/CropImage;->j(Lcom/mosaicture/crop/CropImage;)I

    move-result v3

    iget-object v4, p0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    invoke-static {v4}, Lcom/mosaicture/crop/CropImage;->l(Lcom/mosaicture/crop/CropImage;)Z

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mosaicture/crop/CropImage;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1
.end method
