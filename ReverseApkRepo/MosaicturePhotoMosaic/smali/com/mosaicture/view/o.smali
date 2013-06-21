.class final Lcom/mosaicture/view/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/MosaicViewerProgressActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/MosaicViewerProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/o;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "msg cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mosaicture/view/o;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a(Ljava/lang/Object;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mosaicture/view/o;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    iget-object v1, p0, Lcom/mosaicture/view/o;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    iget-object v1, v1, Lcom/mosaicture/view/MosaicViewerProgressActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mosaicture/view/o;->a:Lcom/mosaicture/view/MosaicViewerProgressActivity;

    iget-object v2, v2, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/MosaicViewerProgressActivity;->a(Lcom/mosaicture/view/MosaicViewerProgressActivity;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
