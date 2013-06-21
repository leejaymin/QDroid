.class public final Lcom/mosaicture/view/i;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:Lcom/mosaicture/g/g;

.field final synthetic b:Lcom/mosaicture/view/FolderViewActivity;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/FolderViewActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/view/i;->b:Lcom/mosaicture/view/FolderViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/view/i;->c:Landroid/view/LayoutInflater;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/mosaicture/view/FolderViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mosaicture/view/i;->c:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/mosaicture/g/g;

    invoke-virtual {p1}, Lcom/mosaicture/view/FolderViewActivity;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0}, Lcom/mosaicture/g/g;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/view/i;->a:Lcom/mosaicture/g/g;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/i;)Lcom/mosaicture/view/FolderViewActivity;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/i;->b:Lcom/mosaicture/view/FolderViewActivity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->a()I

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
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/i;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->b()Lcom/mosaicture/view/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mosaicture/view/a/b;

    iget-wide v2, v2, Lcom/mosaicture/view/a/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lcom/mosaicture/g/y;->a(Landroid/view/View;ILjava/lang/Object;)V

    new-instance v2, Lcom/mosaicture/view/j;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/j;-><init>(Lcom/mosaicture/view/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/mosaicture/view/i;->b:Lcom/mosaicture/view/FolderViewActivity;

    invoke-static {v2}, Lcom/mosaicture/view/FolderViewActivity;->a(Lcom/mosaicture/view/FolderViewActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mosaicture/view/i;->b:Lcom/mosaicture/view/FolderViewActivity;

    invoke-virtual {v2}, Lcom/mosaicture/view/FolderViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/mosaicture/view/i;->a:Lcom/mosaicture/g/g;

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->b()Lcom/mosaicture/view/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mosaicture/view/a/b;

    iget-wide v3, v1, Lcom/mosaicture/view/a/b;->a:J

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/mosaicture/g/g;->a(JLandroid/widget/ImageView;I)V

    return-object p2

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
