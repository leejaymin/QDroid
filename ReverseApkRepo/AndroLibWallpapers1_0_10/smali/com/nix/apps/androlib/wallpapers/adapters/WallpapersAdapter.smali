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
            "Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-string v5, "loading..."

    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;-><init>()V

    .line 59
    .local v0, holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    const v2, 0x7f060008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f060009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f060007

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    .line 62
    const v2, 0x7f06000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 69
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    const-string v3, "loading..."

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    const-string v3, "loading..."

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 93
    :goto_1
    return-object p2

    .line 65
    .end local v0           #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    .line 75
    .local v1, item:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->TitleShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->txtNews:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->DescriptionShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->GlobalRating:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 79
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->rating:Landroid/widget/RatingBar;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setFadingEdgeLength(I)V

    .line 80
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMini:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setRemoteURI(Ljava/lang/String;)V

    .line 83
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;->imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->loadImage()V

    goto :goto_1
.end method
