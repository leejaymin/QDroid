.class final Lcom/mosaicture/view/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabGalleryActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/u;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mosaicture/view/u;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v3

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-lt v1, v4, :cond_1

    if-lez v0, :cond_0

    new-instance v1, Lcom/mosaicture/view/v;

    iget-object v3, p0, Lcom/mosaicture/view/u;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {v1, v3}, Lcom/mosaicture/view/v;-><init>(Lcom/mosaicture/view/TabGalleryActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/mosaicture/view/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
