.class final Lcom/mosaicture/crop/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/mosaicture/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/CropImage;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mosaicture/crop/a;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;)Lcom/mosaicture/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/a;->b:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/mosaicture/crop/a;->a:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mosaicture/crop/a;->a:F

    iget-object v0, p0, Lcom/mosaicture/crop/a;->c:Lcom/mosaicture/crop/CropImage;

    invoke-static {v0}, Lcom/mosaicture/crop/CropImage;->f(Lcom/mosaicture/crop/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mosaicture/crop/b;

    invoke-direct {v1, p0}, Lcom/mosaicture/crop/b;-><init>(Lcom/mosaicture/crop/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
