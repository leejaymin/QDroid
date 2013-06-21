.class final Lcom/mosaicture/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/aa;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->k(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v1}, Lcom/mosaicture/g/y;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v3

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v3, v2

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/aa;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/TabGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/mosaicture/view/MosaicViewerPinchActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "imagePath"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/mosaicture/g/y;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mosaicture/view/ab;->a:Lcom/mosaicture/view/aa;

    invoke-static {v0}, Lcom/mosaicture/view/aa;->a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
