.class public Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public myDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;-><init>()V

    .line 52
    .local v0, holder:Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;
    const v2, 0x7f060033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;->txtText:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f060036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 60
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;->txtText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_1
    return-object p2

    .line 56
    .end local v0           #holder:Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;
    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    .line 64
    .local v1, item:Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;->txtText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
