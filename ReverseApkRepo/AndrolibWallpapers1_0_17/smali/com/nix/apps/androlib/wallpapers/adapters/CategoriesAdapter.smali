.class public Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$CategoryItem$catType:[I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$CategoryItem$catType()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$CategoryItem$catType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->values()[Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->top:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$CategoryItem$catType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f020013

    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;-><init>(Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;)V

    .line 51
    .local v0, holder:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;
    const v2, 0x7f060004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f060003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->Categories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;

    .line 58
    .local v1, item:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->txtTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->CatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-boolean v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Special:Z

    if-eqz v2, :cond_1

    .line 61
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->$SWITCH_TABLE$com$nix$apps$androlib$wallpapers$datamanager$CategoryItem$catType()[I

    move-result-object v2

    iget-object v3, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;

    invoke-virtual {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem$catType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 93
    :pswitch_0
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_1
    return-object p2

    .line 55
    .end local v0           #holder:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;
    .end local v1           #item:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;
    goto :goto_0

    .line 64
    .end local p0
    .restart local v1       #item:Lcom/nix/apps/androlib/wallpapers/datamanager/CategoryItem;
    :pswitch_1
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020010

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 69
    :pswitch_2
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020020

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 74
    :pswitch_3
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020024

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 79
    :pswitch_4
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020031

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 84
    :pswitch_5
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020034

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 89
    :pswitch_6
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v2, v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
