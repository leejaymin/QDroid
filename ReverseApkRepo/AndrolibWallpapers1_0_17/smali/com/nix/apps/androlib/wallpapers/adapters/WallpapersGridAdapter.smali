.class public Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpapersGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;
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
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;-><init>()V

    .line 56
    .local v1, holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;
    const v4, 0x7f060031

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;->imgNews:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 63
    iget-object v4, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;->imgNews:Landroid/widget/ImageView;

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :goto_1
    return-object p2

    .line 59
    .end local v1           #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;
    goto :goto_0

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 68
    .local v2, item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    iget-object v4, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;->imgNews:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v4, v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter$ViewHolder;->imgNews:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method
