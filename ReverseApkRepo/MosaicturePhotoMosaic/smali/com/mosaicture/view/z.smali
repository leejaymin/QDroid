.class public final Lcom/mosaicture/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020016

    return v0
.end method

.method public final b()V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->j(Lcom/mosaicture/view/TabGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;Z)V

    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->f(Lcom/mosaicture/view/TabGalleryActivity;)Lcom/mosaicture/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/aa;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v0

    iget-object v2, p0, Lcom/mosaicture/view/z;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->j(Lcom/mosaicture/view/TabGalleryActivity;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
