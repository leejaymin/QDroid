.class public Lcom/fleapapa/helper/ItemMap;
.super Lcom/google/android/maps/MapActivity;
.source "ItemMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/ItemMap$ItemOverlay;,
        Lcom/fleapapa/helper/ItemMap$MapItem;
    }
.end annotation


# static fields
.field public static final IISIZ:I = 0x40

.field public static final MAP_SHOW:I = 0x42

.field public static final WHO:Ljava/lang/String; = "ItemMap"


# instance fields
.field bhigh:I

.field bwide:I

.field car:Landroid/graphics/drawable/Drawable;

.field cbox:I

.field center:Lcom/google/android/maps/GeoPoint;

.field dlocked:Z

.field dragging:Z

.field dragr:Lcom/fleapapa/helper/ItemRoute;

.field drapc:Lcom/google/android/maps/GeoPoint;

.field draps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field draws:[Landroid/graphics/drawable/Drawable;

.field fromMap:Z

.field hscroll:Landroid/widget/HorizontalScrollView;

.field item1:Lcom/fleapapa/helper/Item;

.field lltop:Landroid/widget/LinearLayout;

.field mhigh:I

.field mitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/ItemMap$MapItem;",
            ">;"
        }
    .end annotation
.end field

.field mview:Lcom/google/android/maps/MapView;

.field mwide:I

.field mypoint:Lcom/google/android/maps/GeoPoint;

.field overlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/ItemMap$ItemOverlay;",
            ">;"
        }
    .end annotation
.end field

.field pops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/ItemMap$MapItem;",
            ">;"
        }
    .end annotation
.end field

.field routing:Z

.field waypts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field zoomLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemMap;->overlays:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    .line 57
    const v0, 0x7fffffff

    iput v0, p0, Lcom/fleapapa/helper/ItemMap;->cbox:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method static mapItem(Landroid/app/Activity;Lcom/fleapapa/helper/Item;Z)V
    .locals 3
    .parameter "a"
    .parameter "item"
    .parameter "fromMap"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/ItemMap;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "map"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    if-eqz p1, :cond_0

    const-string v1, "iid"

    iget v2, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :cond_0
    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method item2Scroll(Lcom/fleapapa/helper/ItemMap$MapItem;)V
    .locals 5
    .parameter "mit"

    .prologue
    const/16 v4, 0x40

    .line 198
    new-instance v0, Lcom/fleapapa/util/MyImageButton;

    invoke-direct {v0, p0}, Lcom/fleapapa/util/MyImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    .line 200
    iget-object v0, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {v0, p1}, Lcom/fleapapa/util/MyImageButton;->setTag(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/fleapapa/util/MyImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    iget-object v0, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    new-instance v1, Lcom/fleapapa/helper/ItemMap$2;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/ItemMap$2;-><init>(Lcom/fleapapa/helper/ItemMap;)V

    invoke-virtual {v0, v1}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap;->lltop:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, p1, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/ItemList;->setIcon(Lcom/fleapapa/helper/Item;Landroid/widget/ImageView;Z)V

    .line 222
    return-void
.end method

.method items2Scroll()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 194
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 195
    .local v0, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemMap;->item2Scroll(Lcom/fleapapa/helper/ItemMap$MapItem;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 69
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "ItemMap.onCreate() "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super/range {p0 .. p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static/range {p0 .. p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 72
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->requestWindowFeature(I)Z

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 75
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "map"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemMap;->fromMap:Z

    .line 77
    const-string v13, "iid"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, iid:I
    invoke-static {v5}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    .line 79
    sget-object v13, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 84
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ItemMap.onCreate: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " items are mapped"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ItemMap.onCreate: route="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",points="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    if-nez v15, :cond_4

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const v13, 0x7f030015

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->setContentView(I)V

    .line 89
    const v13, 0x7f0800e5

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->lltop:Landroid/widget/LinearLayout;

    .line 90
    const v13, 0x7f0800e4

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->hscroll:Landroid/widget/HorizontalScrollView;

    .line 93
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "ItemMap.onCreate: Config.DEBUG=false,Config.RELEASE=true"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v13, Lcom/google/android/maps/MapView;

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 95
    const v14, 0x7f060108

    :goto_2
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapView;->setEnabled(Z)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 98
    const v13, 0x7f0800e2

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    const/4 v14, 0x0

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/16 v13, 0x14

    new-array v13, v13, [Landroid/graphics/drawable/Drawable;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02003b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020067

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02002c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020043

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02004e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02003f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02005f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/4 v14, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02004d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02001d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020027

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02002b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02002e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xc

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020047

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020065

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020037

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0xf

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020028

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    const/16 v14, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02002d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    aput-object v15, v13, v14

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020020

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->car:Landroid/graphics/drawable/Drawable;

    .line 121
    const/16 v13, 0x18

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->bwide:I

    .line 122
    const/16 v13, 0x18

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    .line 123
    new-instance v13, Lcom/google/android/maps/GeoPoint;

    sget-object v14, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v14}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L

    mul-double v14, v14, v16

    double-to-int v14, v14

    sget-object v15, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v15}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v15

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    const-wide v17, 0x412e848000000000L

    mul-double v15, v15, v17

    double-to-int v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->mypoint:Lcom/google/android/maps/GeoPoint;

    .line 124
    const-string v13, "zoomLevel"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->zoomLevel:I

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->zoomLevel:I

    move v13, v0

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->zoomLevel:I

    move v13, v0

    const/16 v14, 0x15

    if-le v13, v14, :cond_2

    :cond_1
    const/16 v13, 0xb

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->zoomLevel:I

    .line 127
    :cond_2
    sget-object v13, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    move-object v13, v0

    if-nez v13, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v14, v14, Lcom/fleapapa/helper/ItemRoute;->center:Lcom/google/android/maps/GeoPoint;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->center:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget v14, v14, Lcom/fleapapa/helper/ItemRoute;->dlati:I

    sget-object v15, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget v15, v15, Lcom/fleapapa/helper/ItemRoute;->dloni:I

    invoke-virtual {v13, v14, v15}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 150
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;-><init>(Lcom/fleapapa/helper/ItemMap;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 152
    const v13, 0x7f0800e3

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/admob/android/ads/AdView;

    .line 153
    .local v4, admob:Lcom/admob/android/ads/AdView;
    new-instance v13, Lcom/fleapapa/helper/ItemMap$1;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemMap$1;-><init>(Lcom/fleapapa/helper/ItemMap;)V

    invoke-virtual {v4, v13}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 167
    return-void

    .line 79
    .end local v4           #admob:Lcom/admob/android/ads/AdView;
    .restart local p1
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/helper/Item;

    .line 80
    .local v7, it:Lcom/fleapapa/helper/Item;
    new-instance v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/fleapapa/helper/ItemMap$MapItem;-><init>(Lcom/fleapapa/helper/ItemMap;Lcom/fleapapa/helper/Item;)V

    .line 81
    .local v12, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    move-object v14, v0

    if-ne v7, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    .end local v7           #it:Lcom/fleapapa/helper/Item;
    .end local v12           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    :cond_4
    sget-object v15, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v15, v15, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    array-length v15, v15

    goto/16 :goto_1

    .line 95
    .end local p1
    :cond_5
    const v14, 0x7f060109

    goto/16 :goto_2

    .line 133
    :cond_6
    const v10, 0x4d3f640

    .line 134
    .local v10, minLati:I
    const v11, 0xac9d740

    .line 135
    .local v11, minLoni:I
    const v8, -0x4d3f640

    .line 136
    .local v8, maxLati:I
    const v9, -0xac9d740

    .line 137
    .local v9, maxLoni:I
    sget-object v13, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 143
    new-instance v13, Lcom/google/android/maps/GeoPoint;

    add-int v14, v10, v8

    div-int/lit8 v14, v14, 0x2

    add-int v15, v11, v9

    div-int/lit8 v15, v15, 0x2

    invoke-direct {v13, v14, v15}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->center:Lcom/google/android/maps/GeoPoint;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->center:Lcom/google/android/maps/GeoPoint;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 145
    sget-object v13, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v13

    sub-int v14, v8, v10

    sub-int v15, v9, v11

    invoke-virtual {v13, v14, v15}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    goto/16 :goto_3

    .line 137
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/helper/Item;

    .line 138
    .restart local v7       #it:Lcom/fleapapa/helper/Item;
    iget v14, v7, Lcom/fleapapa/helper/Item;->lati:I

    if-ge v14, v10, :cond_9

    iget v10, v7, Lcom/fleapapa/helper/Item;->lati:I

    .line 139
    :cond_9
    iget v14, v7, Lcom/fleapapa/helper/Item;->lati:I

    if-le v14, v8, :cond_a

    iget v8, v7, Lcom/fleapapa/helper/Item;->lati:I

    .line 140
    :cond_a
    iget v14, v7, Lcom/fleapapa/helper/Item;->loni:I

    if-ge v14, v11, :cond_b

    iget v11, v7, Lcom/fleapapa/helper/Item;->loni:I

    .line 141
    :cond_b
    iget v14, v7, Lcom/fleapapa/helper/Item;->loni:I

    if-le v14, v9, :cond_7

    iget v9, v7, Lcom/fleapapa/helper/Item;->loni:I

    goto :goto_4

    .line 147
    .end local v7           #it:Lcom/fleapapa/helper/Item;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->zoomLevel:I

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/google/android/maps/MapController;->setZoom(I)I

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemMap.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 174
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemMap.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zoomLevel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 177
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemMap.onResume: zoom="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", center="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/ItemMap;->center:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemMap;->items2Scroll()V

    .line 172
    return-void
.end method
