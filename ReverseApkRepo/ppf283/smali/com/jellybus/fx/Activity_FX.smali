.class public Lcom/jellybus/fx/Activity_FX;
.super Landroid/app/Activity;
.source "Activity_FX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static final ALL_EFFECTS:Ljava/lang/String; = "All effects"

.field public static final ART:Ljava/lang/String; = "Art"

.field public static final BEAUTY:Ljava/lang/String; = "Beauty"

.field public static final BLUR:Ljava/lang/String; = "Blur"

.field public static final BNW:Ljava/lang/String; = "Black & White"

.field public static final COLOR:Ljava/lang/String; = "Color Splash"

.field public static final FAVORITES:Ljava/lang/String; = "Favorites"

.field public static final GRUNGE:Ljava/lang/String; = "Grunge"

.field public static final HDR:Ljava/lang/String; = "HDR"

.field public static final HISTORY:Ljava/lang/String; = "History"

.field public static final PRO:Ljava/lang/String; = "Professional"

.field public static final SCENE:Ljava/lang/String; = "Scenes"

.field public static final VINTAGE:Ljava/lang/String; = "Vintage"


# instance fields
.field private final TextColorBlack:Ljava/lang/String;

.field private final TextColorRed:Ljava/lang/String;

.field private adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

.field private ani:Landroid/view/animation/Animation;

.field private bottom_button_listener:Landroid/view/View$OnClickListener;

.field private count_fav:I

.field private count_his:I

.field private current_group_name:Ljava/lang/String;

.field private fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

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

.field private favorite_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

.field private filter_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private fx_button_back:Landroid/widget/ImageView;

.field private fx_text_all:Landroid/widget/TextView;

.field private fx_text_fav:Landroid/widget/TextView;

.field private fx_text_his:Landroid/widget/TextView;

.field private fx_text_title:Landroid/widget/TextView;

.field private group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

.field private his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

.field private history_date_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private history_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private history_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private listview1:Landroid/widget/ListView;

.field private listview2:Landroid/widget/ListView;

.field private listview_filter:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayerView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private menu_temp:Ljava/lang/String;

.field private none_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sql:Lcom/jellybus/fx_sub/SQLlite;

.field private thumbnail:Landroid/graphics/Bitmap;

.field private top_button_back:Landroid/view/View$OnClickListener;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "#ff4433"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->TextColorRed:Ljava/lang/String;

    .line 51
    const-string v0, "#333333"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->TextColorBlack:Ljava/lang/String;

    .line 81
    const-string v0, "All effects"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    .line 82
    const-string v0, "All effects"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/FilterAdapter;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 369
    new-instance v0, Lcom/jellybus/fx/Activity_FX$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$1;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->top_button_back:Landroid/view/View$OnClickListener;

    .line 555
    new-instance v0, Lcom/jellybus/fx/Activity_FX$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$2;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->filter_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 591
    new-instance v0, Lcom/jellybus/fx/Activity_FX$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$3;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->favorite_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 619
    new-instance v0, Lcom/jellybus/fx/Activity_FX$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$4;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 647
    new-instance v0, Lcom/jellybus/fx/Activity_FX$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$5;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->none_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 662
    new-instance v0, Lcom/jellybus/fx/Activity_FX$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_FX$6;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->bottom_button_listener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->removeBitmap()V

    return-void
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_FX;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_FX;Z)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_FX;->getList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->setGroupView()V

    return-void
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_FX;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_FX;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    return-void
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jellybus/fx/Activity_FX;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/jellybus/fx/Activity_FX;->count_fav:I

    return v0
.end method

.method static synthetic access$27(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getHistoryFilterList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->removeAdapterBitmap()V

    return-void
.end method

.method static synthetic access$30(Lcom/jellybus/fx/Activity_FX;Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    return-void
.end method

.method static synthetic access$31(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jellybus/fx/Activity_FX;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/jellybus/fx/Activity_FX;->count_his:I

    return v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_FX;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    return-object v0
.end method

.method private getFavoriteFilterList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3, v6}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 280
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 281
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 284
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v3, v3, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT FilterNumber FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v5, v5, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 285
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_FX;->startManagingCursor(Landroid/database/Cursor;)V

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/jellybus/fx/Activity_FX;->count_fav:I

    .line 289
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 292
    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    .line 294
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    const-string v3, "FilterNumber"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    .line 295
    if-nez v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->favorite_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 304
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    .line 314
    .end local v1           #i:I
    :goto_1
    return-object v2

    .line 305
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v6, v2, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX;->none_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 313
    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    goto :goto_1
.end method

.method private getFilterGroupIdx(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 687
    :pswitch_0
    const-string v0, "Scenes"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 690
    :pswitch_1
    const-string v0, "HDR"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 693
    :pswitch_2
    const-string v0, "Blur"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 696
    :pswitch_3
    const-string v0, "Art"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 699
    :pswitch_4
    const-string v0, "Vintage"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 702
    :pswitch_5
    const-string v0, "Grunge"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 705
    :pswitch_6
    const-string v0, "Beauty"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 708
    :pswitch_7
    const-string v0, "Professional"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 711
    :pswitch_8
    const-string v0, "Color Splash"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 714
    :pswitch_9
    const-string v0, "Black & White"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x7f060123
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getHistoryFilterList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 320
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 321
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 324
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v2, v2, Lcom/jellybus/fx_sub/SQLlite;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    iget-object v4, v4, Lcom/jellybus/fx_sub/SQLlite;->TNAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_FX;->startManagingCursor(Landroid/database/Cursor;)V

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/jellybus/fx/Activity_FX;->count_his:I

    .line 329
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 332
    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 336
    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    .line 339
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    const-string v2, "FilterNumber"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    const-string v2, "DDATE"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    .line 342
    if-nez v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 351
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    .line 356
    :goto_0
    return-object v1

    .line 353
    :cond_3
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->none_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    goto :goto_0
.end method

.method private getList(Z)[I
    .locals 3
    .parameter "isFavorite"

    .prologue
    .line 539
    if-eqz p1, :cond_2

    .line 540
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 541
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 550
    :cond_0
    return-object v1

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v0           #i:I
    .end local v1           #list:[I
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 546
    .restart local v1       #list:[I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->history_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeAdapterBitmap()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->bitmap_recycle()V

    .line 733
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->bitmap_recycle()V

    .line 737
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ListViewAdapter;->bitmap_recycle()V

    .line 741
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewAdapter;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 743
    :cond_2
    return-void
.end method

.method private removeBitmap()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 726
    return-void
.end method

.method private setGroupView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 471
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/ListViewAdapter;->bitmap_recycle()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    .line 476
    new-instance v0, Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/jellybus/fx_sub/ListViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    .line 477
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 479
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 482
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 484
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    const-string v1, "Professional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> Pro ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    const-string v1, "Color Splash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> C.S ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    const-string v1, "Black & White"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> B & W ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setPage()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 498
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    const-string v1, "Favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    new-instance v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;->notifyDataSetChanged()V

    .line 506
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 508
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Favorite ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jellybus/fx/Activity_FX;->count_fav:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    const-string v1, "#ff4433"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;

    move-result-object v6

    .line 515
    .local v6, favorite_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_1

    .line 516
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    .line 521
    .end local v7           #i:I
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 522
    iget-object v8, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    new-instance v0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getHistoryFilterList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct/range {v0 .. v5}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;->notifyDataSetChanged()V

    .line 526
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 528
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "History ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jellybus/fx/Activity_FX;->count_his:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    const-string v1, "#ff4433"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 517
    .restart local v7       #i:I
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v8, v0, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public group_button_listener(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_FX;->getFilterGroupIdx(Landroid/view/View;)V

    .line 466
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->setGroupView()V

    .line 467
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 413
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    const-string v2, "All effects"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 416
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 417
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->removeBitmap()V

    .line 419
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 422
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->removeAdapterBitmap()V

    .line 436
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_FX;->startActivity(Landroid/content/Intent;)V

    .line 439
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->finish()V

    .line 440
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_FX;->overridePendingTransition(II)V

    .line 460
    .end local v0           #intent_main:Landroid/content/Intent;
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->bitmap_recycle()V

    .line 446
    :cond_1
    const-string v1, "All effects"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    .line 447
    const-string v1, "All effects"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 451
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 453
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    const-string v2, "#ff4433"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    const-string v2, "All effects (200)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0200a6

    const/4 v6, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 106
    const v2, 0x7f0600ca

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_button_back:Landroid/widget/ImageView;

    .line 107
    const v2, 0x7f0600c9

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;

    .line 109
    const v2, 0x7f0600cc

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0600cd

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f0600ce

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_button_back:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->top_button_back:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->bottom_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->bottom_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->bottom_button_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v2, 0x7f040005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;

    .line 121
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;

    const v3, 0x10a0006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    sget v2, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    .line 126
    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    invoke-static {v2, v3, v4, v5}, Lcom/jellybus/fx/Juliet;->setResizeBilinearThumbnail(IIII)V

    .line 127
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 128
    sget v2, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v4}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 129
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 136
    new-instance v2, Lcom/jellybus/fx_sub/SQLlite;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/SQLlite;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->sql:Lcom/jellybus/fx_sub/SQLlite;

    .line 140
    const v2, 0x7f0600cb

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_FX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 141
    new-instance v2, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-direct {v2, p0}, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    .line 142
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 144
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mInflater:Landroid/view/LayoutInflater;

    .line 147
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    .line 148
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    .line 152
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 153
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 155
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 156
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 159
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    .line 161
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 162
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 163
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->listview_filter:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->filter_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, all_list:Landroid/view/View;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    .line 171
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    .line 177
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 178
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 184
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "menu"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "menu"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->setPage()V

    .line 197
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/jellybus/fx/Activity_FX$7;

    invoke-direct {v3, p0}, Lcom/jellybus/fx/Activity_FX$7;-><init>(Lcom/jellybus/fx/Activity_FX;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 275
    return-void

    .line 179
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Filter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filterID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_FX;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filterID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_FX;->setGroupView()V

    goto :goto_1
.end method
