.class final Lcom/mosaicture/crop/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/k;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/k;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/l;->a:Lcom/mosaicture/crop/k;

    iput-object p2, p0, Lcom/mosaicture/crop/l;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/l;->a:Lcom/mosaicture/crop/k;

    iget-object v0, v0, Lcom/mosaicture/crop/k;->b:Lcom/mosaicture/crop/CropImage;

    iget-object v1, p0, Lcom/mosaicture/crop/l;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mosaicture/crop/CropImage;->a(Lcom/mosaicture/crop/CropImage;Landroid/graphics/Bitmap;)V

    return-void
.end method
