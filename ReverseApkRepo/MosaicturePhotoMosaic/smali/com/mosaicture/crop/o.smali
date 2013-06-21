.class final Lcom/mosaicture/crop/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/ImageViewTouchBase;

.field private final synthetic b:Lcom/mosaicture/crop/t;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/ImageViewTouchBase;Lcom/mosaicture/crop/t;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/o;->a:Lcom/mosaicture/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/mosaicture/crop/o;->b:Lcom/mosaicture/crop/t;

    iput-boolean p3, p0, Lcom/mosaicture/crop/o;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/crop/o;->a:Lcom/mosaicture/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/mosaicture/crop/o;->b:Lcom/mosaicture/crop/t;

    iget-boolean v2, p0, Lcom/mosaicture/crop/o;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Lcom/mosaicture/crop/t;Z)V

    return-void
.end method
