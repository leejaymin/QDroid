.class final Lcom/mosaicture/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/mosaicture/g/i;

.field final synthetic c:Lcom/mosaicture/g/g;


# direct methods
.method public constructor <init>(Lcom/mosaicture/g/g;Landroid/graphics/Bitmap;Lcom/mosaicture/g/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/g/h;->c:Lcom/mosaicture/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mosaicture/g/h;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/mosaicture/g/h;->b:Lcom/mosaicture/g/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/g/h;->c:Lcom/mosaicture/g/g;

    iget-object v1, p0, Lcom/mosaicture/g/h;->b:Lcom/mosaicture/g/i;

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/g;->a(Lcom/mosaicture/g/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/g/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/g/h;->b:Lcom/mosaicture/g/i;

    iget-object v0, v0, Lcom/mosaicture/g/i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mosaicture/g/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/g/h;->b:Lcom/mosaicture/g/i;

    iget-object v0, v0, Lcom/mosaicture/g/i;->b:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
