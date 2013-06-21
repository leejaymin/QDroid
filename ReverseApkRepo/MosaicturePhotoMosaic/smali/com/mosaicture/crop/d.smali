.class final Lcom/mosaicture/crop/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/c;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/c;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iput-object p2, p0, Lcom/mosaicture/crop/d;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/mosaicture/crop/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/d;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v1, v1, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/d;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v0, v0, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/crop/d;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mosaicture/crop/CropImageView;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v0, v0, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v0, v0, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    iget-object v1, p0, Lcom/mosaicture/crop/d;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mosaicture/crop/CropImage;->b(Lcom/mosaicture/crop/CropImage;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v0, v0, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/crop/d;->a:Lcom/mosaicture/crop/c;

    iget-object v0, v0, Lcom/mosaicture/crop/c;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImageView;->b()V

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/crop/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
