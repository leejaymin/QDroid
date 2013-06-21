.class public Lcom/jellybus/fx_sub/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private filter:[I

.field public filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

.field private filterCount:I

.field private group:Ljava/lang/String;

.field private isRefresh:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private push_out:Landroid/view/animation/Animation;

.field private sql:Lcom/jellybus/fx_sub/SQLlite;

.field public texture:Landroid/graphics/Bitmap;

.field private thumb_list:[Landroid/graphics/Bitmap;

.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "groupName"
    .parameter "thumbnail"
    .parameter "filterAdapter"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->group:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    .line 61
    iput-object p4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 62
    new-instance v0, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v0, p1}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    .line 64
    invoke-direct {p0, p2}, Lcom/jellybus/fx_sub/ListViewAdapter;->getFilterCount(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewAdapter;->getFilterName()V

    .line 67
    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx_sub/ListViewAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewAdapter;->insertFavorite(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx_sub/ListViewAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->isRefresh:Z

    return v0
.end method

.method private getFilterCount(Ljava/lang/String;)V
    .locals 4
    .parameter "groupName"

    .prologue
    const/16 v3, 0xf

    const/16 v2, 0x14

    const/16 v1, 0x19

    .line 73
    const-string v0, "Scenes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    .line 97
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    .line 98
    return-void

    .line 75
    :cond_1
    const-string v0, "HDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "Blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    iput v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "Art"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "Vintage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto :goto_0

    .line 83
    :cond_5
    const-string v0, "Beauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto :goto_0

    .line 85
    :cond_6
    const-string v0, "Grunge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    .line 87
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 88
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 89
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 90
    :cond_7
    const-string v0, "Professional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto/16 :goto_0

    .line 92
    :cond_8
    const-string v0, "Color Splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto/16 :goto_0

    .line 94
    :cond_9
    const-string v0, "Black & White"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    goto/16 :goto_0
.end method

.method private getFilterName()V
    .locals 4

    .prologue
    .line 102
    iget v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 110
    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Filter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->group:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aput v0, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertFavorite(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3, v7}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 160
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 161
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 164
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v3, v3, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT FilterNumber FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v5, v5, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 166
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 167
    .local v0, count:I
    const/16 v3, 0x1d

    if-le v0, v3, :cond_1

    .line 168
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const-string v3, "FilterNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 170
    .local v2, filter_number:I
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v6, v3, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 171
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3, v2}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 173
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->group:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iput-boolean v7, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->isRefresh:Z

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    const v5, 0x7f05004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 178
    .end local v2           #filter_number:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/jellybus/fx_sub/SQLlite;->insertD(I)V

    .line 181
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 182
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    .line 150
    :cond_0
    return-void
.end method

.method private setTexture(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v1, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    .line 117
    .local v0, filterName:Ljava/lang/String;
    const-string v1, "Concrete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v1, "Dirt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "Daguerreo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "Aged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 125
    :cond_4
    const-string v1, "80s Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020126

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 127
    :cond_5
    const-string v1, "Overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 129
    :cond_6
    const-string v1, "Sack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v1, "Vertigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 133
    :cond_8
    const-string v1, "Scratching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 134
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 135
    :cond_9
    const-string v1, "Slasher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 136
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020135

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 137
    :cond_a
    const-string v1, "Old Paper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 138
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 139
    :cond_b
    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020211

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 141
    :cond_c
    const-string v1, "Bark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009f

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method


# virtual methods
.method public bitmap_recycle()V
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 346
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 340
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 200
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 206
    if-nez p2, :cond_1

    .line 207
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;-><init>()V

    .line 209
    .local v1, holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;
    const v3, 0x7f06011e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 210
    const v3, 0x7f06011f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    .line 211
    const v3, 0x7f060120

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    .line 212
    const v3, 0x7f060121

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    .line 213
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    :goto_0
    new-instance v0, Lcom/jellybus/fx_sub/ListViewAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/jellybus/fx_sub/ListViewAdapter$1;-><init>(Lcom/jellybus/fx_sub/ListViewAdapter;Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;)V

    .line 226
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    if-nez v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v4, "Grunge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v3, v3, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v3, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewAdapter;->setTexture(I)V

    .line 231
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeTextureIndex()V

    .line 232
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 233
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setBlurIndex(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewAdapter;->removeTextureBitmap()V

    .line 237
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 239
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 240
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 241
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 253
    :cond_0
    :goto_1
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 254
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget v3, v3, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v3, v3, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <font color=#ff4433>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Favorite!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</font>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_2
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    new-instance v4, Lcom/jellybus/fx_sub/ListViewAdapter$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/jellybus/fx_sub/ListViewAdapter$2;-><init>(Lcom/jellybus/fx_sub/ListViewAdapter;ILcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 324
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 326
    return-object p2

    .line 215
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 244
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_2
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 245
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 247
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 248
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 249
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 264
    .restart local v2       #message:Landroid/os/Message;
    :cond_3
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
