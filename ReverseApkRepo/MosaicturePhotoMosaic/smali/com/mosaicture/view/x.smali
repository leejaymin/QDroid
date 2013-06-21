.class public final Lcom/mosaicture/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/x;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f02000f

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/view/x;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;I)V

    iget-object v0, p0, Lcom/mosaicture/view/x;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/TabGalleryActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/MosaictureActivity;->a()V

    iget-object v0, p0, Lcom/mosaicture/view/x;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/x;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/aa;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
