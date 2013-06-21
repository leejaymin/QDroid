.class public Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewFavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private favorite_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private push_out:Landroid/view/animation/Animation;

.field private sql:Lcom/jellybus/fx_sub/SQLlite;

.field public texture:Landroid/graphics/Bitmap;

.field private thumb_list:[Landroid/graphics/Bitmap;

.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "thumbnail"
    .parameter "filterAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/jellybus/fx_sub/FilterAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, favorite_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    .line 57
    iput-object p4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 58
    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v0, p1}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    .line 62
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 67
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->setFavoriteList()V

    .line 69
    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->insertFavorite(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private insertFavorite(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 143
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 144
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 147
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v2, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT FilterNumber FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v4, v4, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 150
    .local v0, count:I
    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    .line 151
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    const-string v3, "FilterNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 153
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    const v4, 0x7f05004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 156
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/jellybus/fx_sub/SQLlite;->insertD(I)V

    .line 160
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 161
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    .line 136
    :cond_0
    return-void
.end method

.method private setFavoriteList()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 95
    .end local v0           #i:I
    :goto_1
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    .line 96
    return-void

    .line 88
    .restart local v0       #i:I
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0           #i:I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    .line 92
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setTexture(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v1, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    .line 103
    .local v0, filterName:Ljava/lang/String;
    const-string v1, "Concrete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "Dirt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "Daguerreo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 109
    :cond_3
    const-string v1, "Aged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 111
    :cond_4
    const-string v1, "80s Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020126

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 113
    :cond_5
    const-string v1, "Overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 115
    :cond_6
    const-string v1, "Sack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 117
    :cond_7
    const-string v1, "Vertigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 119
    :cond_8
    const-string v1, "Scratching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 120
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 121
    :cond_9
    const-string v1, "Slasher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 122
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020135

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 123
    :cond_a
    const-string v1, "Old Paper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 125
    :cond_b
    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 126
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020211

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v1, "Bark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009f

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method


# virtual methods
.method public bitmap_recycle()V
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 335
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 185
    if-nez p2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 187
    new-instance v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;-><init>()V

    .line 188
    .local v1, holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    const v3, 0x7f06011c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->empty_favorite_img:Landroid/widget/ImageView;

    .line 189
    const v3, 0x7f06011d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->empty_history_img:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    :goto_0
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->empty_favorite_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->empty_history_img:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    :goto_1
    return-object p2

    .line 192
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    goto :goto_0

    .line 199
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    :cond_1
    if-nez p2, :cond_3

    .line 200
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 201
    new-instance v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;-><init>()V

    .line 202
    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    const v3, 0x7f06011e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 203
    const v3, 0x7f06011f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f060120

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    .line 205
    const v3, 0x7f060121

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    :goto_2
    new-instance v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;-><init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;)V

    .line 221
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v4, "Grunge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v3, v3, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v3, :cond_4

    .line 225
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->setTexture(I)V

    .line 226
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeTextureIndex()V

    .line 227
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 228
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setBlurIndex(Landroid/graphics/Bitmap;)V

    .line 229
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->removeTextureBitmap()V

    .line 232
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 233
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 234
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 235
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 236
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 248
    :cond_2
    :goto_3
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 249
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    .line 256
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v3, v3, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    .line 265
    :goto_4
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    new-instance v4, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;-><init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;ILcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 209
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;
    goto/16 :goto_2

    .line 239
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_4
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 240
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 241
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 242
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 243
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 244
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 260
    .restart local v2       #message:Landroid/os/Message;
    :cond_5
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, favorite_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->bitmap_recycle()V

    .line 80
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->setFavoriteList()V

    .line 81
    return-void
.end method
