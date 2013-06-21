.class public final Lcom/mosaicture/view/aa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:Lcom/mosaicture/g/g;

.field final synthetic b:Lcom/mosaicture/view/TabGalleryActivity;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/view/aa;->c:Landroid/view/LayoutInflater;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/mosaicture/view/TabGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mosaicture/view/aa;->c:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/mosaicture/g/g;

    invoke-virtual {p1}, Lcom/mosaicture/view/TabGalleryActivity;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0}, Lcom/mosaicture/g/g;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/view/aa;->a:Lcom/mosaicture/g/g;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/aa;)Lcom/mosaicture/view/TabGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->b(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/aa;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a0017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0018

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v3}, Lcom/mosaicture/view/TabGalleryActivity;->c(Lcom/mosaicture/view/TabGalleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {v0, v2, v3}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->d(Lcom/mosaicture/view/TabGalleryActivity;)[J

    move-result-object v2

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    new-instance v2, Lcom/mosaicture/view/ab;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/ab;-><init>(Lcom/mosaicture/view/aa;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->k(Lcom/mosaicture/view/TabGalleryActivity;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-virtual {v2}, Lcom/mosaicture/view/TabGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/mosaicture/view/aa;->a:Lcom/mosaicture/g/g;

    iget-object v2, p0, Lcom/mosaicture/view/aa;->b:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->d(Lcom/mosaicture/view/TabGalleryActivity;)[J

    move-result-object v2

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/mosaicture/g/g;->a(JLandroid/widget/ImageView;I)V

    return-object p2

    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
