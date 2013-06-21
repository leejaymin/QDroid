.class final Lcom/mosaicture/zoom/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

.field private final synthetic b:Lcom/mosaicture/zoom/o;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/ImageZoomViewTouchBase;Lcom/mosaicture/zoom/o;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/g;->a:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    iput-object p2, p0, Lcom/mosaicture/zoom/g;->b:Lcom/mosaicture/zoom/o;

    iput-boolean p3, p0, Lcom/mosaicture/zoom/g;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/mosaicture/zoom/g;->a:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    iget-object v1, p0, Lcom/mosaicture/zoom/g;->b:Lcom/mosaicture/zoom/o;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/zoom/g;->b:Lcom/mosaicture/zoom/o;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/o;->a()I

    move-result v2

    iget-boolean v3, p0, Lcom/mosaicture/zoom/g;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method
