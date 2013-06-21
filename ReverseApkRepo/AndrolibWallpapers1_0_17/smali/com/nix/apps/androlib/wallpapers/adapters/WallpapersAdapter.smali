.class public Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpapersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public myDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const-string v7, "loading..."

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;-><init>()V

    .line 58
    .local v1, holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    const v3, 0x7f060033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f060034

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f060032

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    .line 61
    const v3, 0x7f060035

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 68
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    const-string v4, "loading..."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    const-string v4, "loading..."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    invoke-virtual {v3, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 97
    :goto_1
    return-object p2

    .line 64
    .end local v1           #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 74
    .local v2, item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->TitleShort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->DescriptionShort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :try_start_0
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    iget-object v4, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->GlobalRating:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setFadingEdgeLength(I)V

    .line 84
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iget-object v4, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMini:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setRemoteURI(Ljava/lang/String;)V

    .line 87
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    invoke-virtual {v3}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->loadImage()V

    goto :goto_1

    .line 79
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    invoke-virtual {v3, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method
