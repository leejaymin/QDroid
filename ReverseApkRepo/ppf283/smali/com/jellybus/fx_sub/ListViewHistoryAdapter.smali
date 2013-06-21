.class public Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private date:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V
    .locals 2
    .parameter "context"
    .parameter
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/jellybus/fx_sub/FilterAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, date:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    .line 58
    iput-object p5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 59
    new-instance v0, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v0, p1}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    .line 62
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 67
    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    .line 68
    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->date:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    .line 77
    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->date:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->insertFavorite(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private insertFavorite(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 129
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 130
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 133
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v2, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT FilterNumber FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v4, v4, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 135
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 136
    .local v0, count:I
    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    .line 137
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    const-string v3, "FilterNumber"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 139
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    const v4, 0x7f05004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/jellybus/fx_sub/SQLlite;->insertD(I)V

    .line 146
    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 147
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    .line 120
    :cond_0
    return-void
.end method

.method private setTexture(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v1, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    .line 87
    .local v0, filterName:Ljava/lang/String;
    const-string v1, "Concrete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "Dirt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "Daguerreo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "Aged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "80s Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020126

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "Overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 99
    :cond_6
    const-string v1, "Sack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012d

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 101
    :cond_7
    const-string v1, "Vertigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 103
    :cond_8
    const-string v1, "Scratching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 104
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 105
    :cond_9
    const-string v1, "Slasher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 106
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020135

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 107
    :cond_a
    const-string v1, "Old Paper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 108
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 110
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020211

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 111
    :cond_c
    const-string v1, "Bark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009f

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method


# virtual methods
.method public bitmap_recycle()V
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 324
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 318
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 167
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

    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 175
    if-nez p2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 177
    new-instance v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;-><init>()V

    .line 178
    .local v1, holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    const v3, 0x7f06011c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->empty_favorite_img:Landroid/widget/ImageView;

    .line 179
    const v3, 0x7f06011d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->empty_history_img:Landroid/widget/ImageView;

    .line 180
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_0
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->empty_favorite_img:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->empty_history_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :goto_1
    return-object p2

    .line 182
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    goto :goto_0

    .line 189
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    :cond_1
    if-nez p2, :cond_3

    .line 190
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 191
    new-instance v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;-><init>()V

    .line 192
    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    const v3, 0x7f06011e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 193
    const v3, 0x7f06011f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f060120

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    .line 195
    const v3, 0x7f060121

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :goto_2
    new-instance v0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$1;-><init>(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;)V

    .line 209
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    .line 213
    invoke-direct {p0, p1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->setTexture(I)V

    .line 214
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeTextureIndex()V

    .line 215
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 216
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->texture:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setBlurIndex(Landroid/graphics/Bitmap;)V

    .line 217
    invoke-direct {p0}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->removeTextureBitmap()V

    .line 220
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 222
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 223
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 224
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 236
    :cond_2
    :goto_3
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 237
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    .line 243
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    .line 244
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v7, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v3, v3, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <font color=#ff4433>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Favorite!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "</font>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->date:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_4
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    new-instance v4, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;-><init>(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;ILcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 198
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;
    goto/16 :goto_2

    .line 227
    .restart local v0       #handler:Landroid/os/Handler;
    :cond_4
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 228
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 230
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 231
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p1

    .line 232
    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumb_list:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 247
    .restart local v2       #message:Landroid/os/Message;
    :cond_5
    iget-object v3, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v4, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v6, v3, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;

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

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->date:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
