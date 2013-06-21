.class Lcom/fleapapa/helper/ItemMap$ItemOverlay;
.super Lcom/google/android/maps/Overlay;
.source "ItemMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/ItemMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemOverlay"
.end annotation


# static fields
.field private static final THICK:I = 0xc


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemMap;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 43
    .parameter "canvas"
    .parameter "mapview"
    .parameter "shadow"

    .prologue
    .line 230
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    invoke-super {v0, v1, v2, v3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 231
    if-eqz p3, :cond_1

    .line 365
    .end local p2
    :cond_0
    return-void

    .line 232
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v6, v0

    iget-object v6, v6, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/fleapapa/helper/ItemMap;->mwide:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v6, v0

    iget-object v6, v6, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v6

    iput v6, v5, Lcom/fleapapa/helper/ItemMap;->mhigh:I

    .line 234
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .local v14, paint:Landroid/graphics/Paint;
    sget-object v5, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    if-eqz v5, :cond_2

    .line 239
    const/high16 v5, 0x4140

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    const/16 v5, 0x7f

    const/16 v6, 0x7f

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 241
    sget-object v5, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawRoute(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/fleapapa/helper/ItemRoute;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    if-nez v5, :cond_2

    .line 244
    const/16 v23, 0xc

    .line 245
    .local v23, fsiz:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    const v6, 0x7f0600c4

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/ItemMap;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, dhelp:Ljava/lang/String;
    new-instance v35, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    mul-int v7, v7, v23

    add-int/lit8 v8, v23, 0x4

    move-object/from16 v0, v35

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 247
    .local v35, rect:Landroid/graphics/Rect;
    const/16 v5, 0x7f

    const/16 v6, 0x3f

    const/4 v7, 0x0

    const/16 v8, 0x7f

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 248
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 250
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 251
    move/from16 v0, v23

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 252
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 253
    const/high16 v5, 0x3f80

    const/4 v6, 0x2

    sub-int v6, v23, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move v2, v5

    move v3, v6

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    .end local v18           #dhelp:Ljava/lang/String;
    .end local v23           #fsiz:I
    .end local v35           #rect:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    if-eqz v5, :cond_3

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->car:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/ItemMap;->mwide:I

    const/16 v7, 0x30

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v8, v0

    iget v8, v8, Lcom/fleapapa/helper/ItemMap;->mwide:I

    const/16 v9, 0x30

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->car:Landroid/graphics/drawable/Drawable;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v6, v0

    iget-object v6, v6, Lcom/fleapapa/helper/ItemMap;->mypoint:Lcom/google/android/maps/GeoPoint;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v41

    .line 296
    .local v41, xy:Landroid/graphics/Point;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;)V

    .line 299
    const/high16 v5, 0x4140

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0x4d

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    if-eqz v5, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->dragr:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawRoute(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/fleapapa/helper/ItemRoute;)V

    .line 304
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 310
    .local v29, ni:I
    if-lez v29, :cond_0

    .line 311
    const/16 v15, 0x20

    .line 312
    .local v15, N:I
    const/16 v16, 0x18

    .line 313
    .local v16, bh:I
    const/16 v30, 0x1c

    .line 314
    .local v30, ny:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/fleapapa/helper/ItemMap$MapItem;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    .line 315
    .local v31, px:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fleapapa/helper/ItemMap$MapItem;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    .line 316
    .local v32, py:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget v5, v5, Lcom/fleapapa/helper/ItemMap;->mhigh:I

    div-int/lit8 v5, v5, 0x2

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_17

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 317
    .local v17, dd:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget v5, v5, Lcom/fleapapa/helper/ItemMap;->mhigh:I

    mul-int v5, v5, v17

    div-int/lit8 v5, v5, 0x3

    add-int v38, v32, v5

    .line 318
    .local v38, sy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget v5, v5, Lcom/fleapapa/helper/ItemMap;->mwide:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x20

    div-int/lit8 v37, v5, 0x2

    .line 319
    .local v37, sx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->mhigh:I

    move/from16 v28, v0

    .line 320
    .local v28, my:I
    div-int/lit8 v26, v28, 0x1c

    .line 321
    .local v26, mi:I
    move/from16 v0, v29

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    move/from16 v29, v26

    .line 322
    :cond_6
    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v40, v0

    .line 323
    .local v40, x:[I
    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v42, v0

    .line 324
    .local v42, y:[I
    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 326
    .local v20, dx:[I
    new-instance v33, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/16 v6, 0x14

    sub-int v6, v32, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v7, v0

    iget v7, v7, Lcom/fleapapa/helper/ItemMap;->mwide:I

    add-int/lit8 v8, v32, 0x14

    move-object/from16 v0, v33

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .local v33, r2:Landroid/graphics/Rect;
    const/high16 v5, 0x3f80

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 331
    const/16 v25, 0x0

    .local v25, i:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v29

    if-lt v0, v1, :cond_18

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget v5, v5, Lcom/fleapapa/helper/ItemMap;->mwide:I

    mul-int/lit8 v5, v5, 0x1f

    div-int/lit8 v39, v5, 0x20

    .line 341
    .local v39, twide:I
    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 342
    aget v21, v40, v25

    .line 343
    .local v21, ex:I
    aget v22, v42, v25

    .line 344
    .local v22, ey:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 346
    .local v27, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v21, v39

    aget v7, v20, v25

    add-int/2addr v6, v7

    add-int/lit8 v7, v22, 0x1c

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    .line 348
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->viewed:Z

    move v5, v0

    if-eqz v5, :cond_1a

    const/16 v5, 0x28

    move/from16 v34, v5

    .line 349
    .local v34, rb:I
    :goto_5
    and-int/lit8 v5, v25, 0x1

    if-nez v5, :cond_1b

    const/16 v5, 0xff

    move/from16 v36, v5

    .line 350
    .local v36, rr:I
    :goto_6
    const/16 v5, 0xff

    const/16 v6, 0xff

    move-object v0, v14

    move v1, v5

    move/from16 v2, v36

    move v3, v6

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 351
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 354
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 355
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 359
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/4 v8, 0x0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 361
    const/high16 v5, 0x41a0

    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    add-int/lit8 v6, v21, 0x4

    int-to-float v6, v6

    add-int/lit8 v7, v22, 0x18

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 341
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 262
    .end local v15           #N:I
    .end local v16           #bh:I
    .end local v17           #dd:I
    .end local v20           #dx:[I
    .end local v21           #ex:I
    .end local v22           #ey:I
    .end local v25           #i:I
    .end local v26           #mi:I
    .end local v27           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .end local v28           #my:I
    .end local v29           #ni:I
    .end local v30           #ny:I
    .end local v31           #px:I
    .end local v32           #py:I
    .end local v33           #r2:Landroid/graphics/Rect;
    .end local v34           #rb:I
    .end local v36           #rr:I
    .end local v37           #sx:I
    .end local v38           #sy:I
    .end local v39           #twide:I
    .end local v40           #x:[I
    .end local v41           #xy:Landroid/graphics/Point;
    .end local v42           #y:[I
    .restart local p2
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 263
    .restart local v27       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v6, v0

    iget-object v6, v6, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->gop:Lcom/google/android/maps/GeoPoint;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    .line 265
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v7, v0

    iget v7, v7, Lcom/fleapapa/helper/ItemMap;->mwide:I

    if-ge v6, v7, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v7, v0

    iget v7, v7, Lcom/fleapapa/helper/ItemMap;->mhigh:I

    if-ge v6, v7, :cond_4

    .line 271
    const/16 v19, 0x2

    .line 272
    .local v19, didx:I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v7, v0

    iget-object v7, v7, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    if-ne v6, v7, :cond_9

    const/16 v19, 0x6

    .line 291
    :cond_8
    :goto_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;)V

    goto/16 :goto_0

    .line 274
    :cond_9
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_a

    const/16 v19, 0x7

    goto :goto_7

    .line 275
    :cond_a
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_b

    const/16 v19, 0x8

    goto :goto_7

    .line 276
    :cond_b
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_c

    const/16 v19, 0x9

    goto :goto_7

    .line 277
    :cond_c
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_d

    const/16 v19, 0xa

    goto :goto_7

    .line 278
    :cond_d
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_f

    .line 279
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    const/16 v19, 0xb

    goto :goto_7

    .line 280
    :cond_e
    const/16 v19, 0x10

    goto :goto_7

    .line 282
    :cond_f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_12

    .line 283
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_10

    const/16 v19, 0xc

    goto :goto_7

    .line 284
    :cond_10
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_11

    const/16 v19, 0xe

    goto/16 :goto_7

    .line 285
    :cond_11
    const/16 v19, 0xf

    goto/16 :goto_7

    .line 287
    :cond_12
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v6, :cond_13

    const/16 v19, 0x4

    goto/16 :goto_7

    .line 288
    :cond_13
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_14

    const/16 v19, 0x3

    goto/16 :goto_7

    .line 289
    :cond_14
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->type:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_15

    const/16 v19, 0x5

    goto/16 :goto_7

    .line 290
    :cond_15
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/Item;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_8

    const/16 v19, 0x5

    goto/16 :goto_7

    .line 304
    .end local v19           #didx:I
    .end local v27           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v41       #xy:Landroid/graphics/Point;
    :cond_16
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/maps/GeoPoint;

    .line 305
    .local v24, gp:Lcom/google/android/maps/GeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 306
    .local v8, pt:Landroid/graphics/Point;
    const/16 v7, 0xd

    const/16 v9, 0x10

    const/16 v10, 0x10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;II)V

    goto/16 :goto_1

    .line 316
    .end local v8           #pt:Landroid/graphics/Point;
    .end local v24           #gp:Lcom/google/android/maps/GeoPoint;
    .end local p2
    .restart local v15       #N:I
    .restart local v16       #bh:I
    .restart local v29       #ni:I
    .restart local v30       #ny:I
    .restart local v31       #px:I
    .restart local v32       #py:I
    :cond_17
    const/4 v5, -0x1

    move/from16 v17, v5

    goto/16 :goto_2

    .line 332
    .restart local v17       #dd:I
    .restart local v20       #dx:[I
    .restart local v25       #i:I
    .restart local v26       #mi:I
    .restart local v28       #my:I
    .restart local v33       #r2:Landroid/graphics/Rect;
    .restart local v37       #sx:I
    .restart local v38       #sy:I
    .restart local v40       #x:[I
    .restart local v42       #y:[I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object v5, v0

    iget v5, v5, Lcom/fleapapa/helper/ItemMap;->mwide:I

    div-int/lit8 v5, v5, 0x20

    add-int v5, v5, v37

    aput v5, v40, v25

    .line 334
    :cond_19
    add-int v5, v38, v28

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    rem-int v5, v5, v28

    aput v5, v42, v25

    .line 335
    mul-int/lit8 v5, v17, 0x1c

    add-int v38, v38, v5

    .line 336
    aget v5, v40, v25

    aget v6, v42, v25

    move-object/from16 v0, v33

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 333
    if-nez v5, :cond_19

    .line 337
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    aput v37, v20, v25

    .line 338
    move/from16 v0, v31

    int-to-float v0, v0

    move v10, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v11, v0

    aget v5, v40, v25

    int-to-float v12, v5

    aget v5, v42, v25

    int-to-float v13, v5

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 331
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 348
    .restart local v21       #ex:I
    .restart local v22       #ey:I
    .restart local v27       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v39       #twide:I
    :cond_1a
    const/16 v5, 0xc8

    move/from16 v34, v5

    goto/16 :goto_5

    .restart local v34       #rb:I
    :cond_1b
    move/from16 v36, v34

    .line 349
    goto/16 :goto_6
.end method

.method drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;)V
    .locals 6
    .parameter "canvas"
    .parameter "didx"
    .parameter "xy"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget v4, v0, Lcom/fleapapa/helper/ItemMap;->bwide:I

    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget v5, v0, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;II)V

    .line 376
    return-void
.end method

.method drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Point;II)V
    .locals 6
    .parameter "canvas"
    .parameter "didx"
    .parameter "xy"
    .parameter "wide"
    .parameter "high"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    iget v1, p3, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, p5, 0x2

    sub-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v3, v4

    iget v4, p3, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, p5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draws:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    return-void
.end method

.method drawRoute(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/fleapapa/helper/ItemRoute;)V
    .locals 10
    .parameter "canvas"
    .parameter "paint"
    .parameter "route"

    .prologue
    const/4 v9, 0x0

    .line 367
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    if-nez v0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 368
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p3, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p3, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    add-int/lit8 v2, v6, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v9}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 370
    .local v8, ps:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    iget-object v1, p3, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    add-int/lit8 v2, v6, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v9}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 371
    .local v7, pe:Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method findRoute()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 512
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-boolean v3, v3, Lcom/fleapapa/helper/ItemMap;->routing:Z

    if-nez v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iput-boolean v7, v3, Lcom/fleapapa/helper/ItemMap;->routing:Z

    .line 516
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 518
    .local v2, idx:I
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v4, v3, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v6, v6, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/GeoPoint;

    iput-object v3, v5, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 521
    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    const v4, 0x7f06007c

    invoke-static {v4}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 523
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;

    invoke-direct {v0, p0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;-><init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)V

    .line 535
    .local v0, done:Ljava/lang/Runnable;
    new-instance v3, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imap.router "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v5, v5, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;-><init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 541
    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->start()V

    goto :goto_0
.end method

.method matchItems(Lcom/fleapapa/helper/ItemRoute;)V
    .locals 9
    .parameter "route"

    .prologue
    const/4 v8, 0x1

    .line 544
    iget-object v4, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 545
    iget-object v4, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemMap;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 546
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    if-nez v4, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v4, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    const v7, 0x7f06007b

    invoke-virtual {v6, v7}, Lcom/fleapapa/helper/ItemMap;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 550
    .local v3, pdlg:Landroid/app/ProgressDialog;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 551
    .local v2, handler:Landroid/os/Handler;
    new-instance v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;

    invoke-direct {v0, p0, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;-><init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Landroid/app/ProgressDialog;)V

    .line 563
    .local v0, eachrow:Ljava/lang/Runnable;
    new-instance v1, Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;

    invoke-direct {v1, p0, v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;-><init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Landroid/app/ProgressDialog;)V

    .line 568
    .local v1, finish:Ljava/lang/Runnable;
    sput-object p1, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    .line 569
    sget-object v4, Lcom/fleapapa/helper/ItemList;->act:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v4, v2, v0, v1}, Lcom/fleapapa/helper/ItemList;->match2(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 30
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 382
    sget-object v23, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ItemOverlay: event="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move v6, v0

    .line 384
    .local v6, cx:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move v7, v0

    .line 386
    .local v7, cy:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 509
    :cond_0
    const/16 v23, 0x0

    :goto_0
    return v23

    .line 389
    :pswitch_0
    sget-object v23, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    if-nez v23, :cond_1

    const/16 v23, 0x0

    goto :goto_0

    .line 390
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->dlocked:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    .line 393
    :cond_2
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move v0, v9

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 399
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bwide:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    div-int/lit8 v23, v23, 0x3

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    div-int/lit8 v24, v24, 0x3

    sub-int v24, v7, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bwide:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    div-int/lit8 v25, v25, 0x3

    add-int v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    div-int/lit8 v26, v26, 0x3

    add-int v26, v26, v7

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_7

    .line 403
    const/16 v21, 0x14

    .line 404
    .local v21, th:I
    const/4 v9, 0x0

    :goto_2
    sget-object v23, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move v0, v9

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 414
    :cond_4
    sget-object v23, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move v0, v9

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    const/16 v23, 0x0

    goto/16 :goto_0

    .line 394
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v21           #th:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 395
    .local v12, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 396
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 397
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 393
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 400
    .end local v12           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v17       #r:Landroid/graphics/Rect;
    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 401
    .restart local v12       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 402
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 405
    .end local v12           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v21       #th:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v23

    sget-object v24, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v16

    .line 406
    .local v16, ps:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v23

    sget-object v24, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v15

    .line 407
    .local v15, pe:Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v10, v23

    .line 408
    .local v10, left:I
    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v18, v23

    .line 409
    .local v18, right:I
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v22, v23

    .line 410
    .local v22, top:I
    :goto_5
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v5, v23

    .line 411
    .local v5, bottom:I
    :goto_6
    new-instance v17, Landroid/graphics/Rect;

    .end local v17           #r:Landroid/graphics/Rect;
    sub-int v23, v10, v21

    sub-int v24, v22, v21

    add-int v25, v18, v21

    add-int v26, v5, v21

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    .restart local v17       #r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-nez v23, :cond_4

    .line 404
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 407
    .end local v5           #bottom:I
    .end local v10           #left:I
    .end local v18           #right:I
    .end local v22           #top:I
    :cond_9
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v10, v23

    goto :goto_3

    .line 408
    .restart local v10       #left:I
    :cond_a
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v18, v23

    goto :goto_4

    .line 409
    .restart local v18       #right:I
    :cond_b
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v22, v23

    goto :goto_5

    .line 410
    .restart local v22       #top:I
    :cond_c
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v5, v23

    goto :goto_6

    .line 415
    .end local v10           #left:I
    .end local v15           #pe:Landroid/graphics/Point;
    .end local v16           #ps:Landroid/graphics/Point;
    .end local v18           #right:I
    .end local v22           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    .line 418
    new-instance v17, Landroid/graphics/Rect;

    .end local v17           #r:Landroid/graphics/Rect;
    sub-int v23, v6, v21

    sub-int v24, v7, v21

    add-int v25, v6, v21

    add-int v26, v7, v21

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    .restart local v17       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_e
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_f

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemMap;->dlocked:Z

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    if-ltz v23, :cond_10

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 419
    :cond_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/maps/GeoPoint;

    .line 420
    .local v8, gp:Lcom/google/android/maps/GeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v8

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v16

    .line 421
    .restart local v16       #ps:Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object v0, v8

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    goto/16 :goto_7

    .line 428
    .end local v8           #gp:Lcom/google/android/maps/GeoPoint;
    .end local v16           #ps:Landroid/graphics/Point;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->drapc:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v23, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v19, v23, v24

    .line 431
    .local v19, s:Lcom/google/android/maps/GeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fleapapa/helper/ItemMap$ItemOverlay$1;-><init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Lcom/google/android/maps/GeoPoint;)V

    invoke-static/range {v23 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 442
    .end local v9           #i:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v19           #s:Lcom/google/android/maps/GeoPoint;
    .end local v21           #th:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->findRoute()V

    .line 446
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 449
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 451
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->findRoute()V

    .line 455
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 458
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->car:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 460
    const-string v23, "http://maps.google.com/maps?f=d&saddr=%f,%f&daddr=%f,%f&hl=en"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 461
    sget-object v26, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual/range {v26 .. v26}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    sget-object v26, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual/range {v26 .. v26}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/fleapapa/helper/Item;->lati:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x412e848000000000L

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->item1:Lcom/fleapapa/helper/Item;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/fleapapa/helper/Item;->loni:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x412e848000000000L

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    .line 460
    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 463
    .local v20, suri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.intent.action.VIEW"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v23 .. v24}, Lcom/fleapapa/helper/ItemMap;->startActivity(Landroid/content/Intent;)V

    .line 464
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 467
    .end local v20           #suri:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 468
    .local v14, opsiz:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->cbox:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->cbox:I

    move/from16 v23, v0

    move/from16 v0, v23

    move v1, v14

    if-lt v0, v1, :cond_17

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_19

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    const v24, 0x7fffffff

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->cbox:I

    .line 487
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bwide:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    div-int/lit8 v23, v23, 0x3

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    div-int/lit8 v24, v24, 0x3

    sub-int v24, v7, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bwide:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    div-int/lit8 v25, v25, 0x3

    add-int v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->bhigh:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    div-int/lit8 v26, v26, 0x3

    add-int v26, v26, v7

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 488
    .restart local v17       #r:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 489
    .local v11, m1:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_14
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 495
    if-eqz v11, :cond_15

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->hscroll:Landroid/widget/HorizontalScrollView;

    move-object/from16 v23, v0

    sget-object v24, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v11

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    mul-int/lit8 v24, v24, 0x40

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 498
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 499
    .local v13, npsiz:I
    if-nez v13, :cond_16

    if-eqz v14, :cond_0

    .line 500
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 504
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 469
    .end local v11           #m1:Lcom/fleapapa/helper/ItemMap$MapItem;
    .end local v13           #npsiz:I
    .end local v17           #r:Landroid/graphics/Rect;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->cbox:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 472
    .restart local v12       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->fromMap:Z

    move/from16 v23, v0

    if-nez v23, :cond_18

    .line 473
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->box:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 476
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object v1, v12

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemMap$MapItem;->viewed:Z

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/fleapapa/helper/ItemMap;->setResult(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/fleapapa/helper/ItemMap;->finish()V

    .line 468
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/fleapapa/helper/ItemMap;->cbox:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/fleapapa/helper/ItemMap;->cbox:I

    goto/16 :goto_8

    .line 482
    .end local v12           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    :cond_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 483
    .restart local v12       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v24 .. v26}, Lcom/fleapapa/util/MyImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_9

    .line 489
    .end local v12           #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v11       #m1:Lcom/fleapapa/helper/ItemMap$MapItem;
    .restart local v17       #r:Landroid/graphics/Rect;
    :cond_1a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 490
    .restart local v12       #mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->xy:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 491
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->ib:Lcom/fleapapa/util/MyImageButton;

    move-object/from16 v24, v0

    const/high16 v25, 0x77ff

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v24 .. v26}, Lcom/fleapapa/util/MyImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    if-nez v11, :cond_14

    move-object v11, v12

    goto/16 :goto_a

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
