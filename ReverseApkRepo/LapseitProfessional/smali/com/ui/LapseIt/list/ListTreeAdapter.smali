.class public Lcom/ui/LapseIt/list/ListTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "ListTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;,
        Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;
    }
.end annotation


# static fields
.field static GROUP_POSITION:Ljava/lang/String;

.field private static currentChildCursor:Landroid/database/MatrixCursor;

.field private static groupCursor:Landroid/database/Cursor;

.field static projection:[Ljava/lang/String;

.field private static thumbMaxHeight:F

.field private static thumbMaxWidth:F


# instance fields
.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 40
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 41
    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 42
    const-string v2, "directory"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 43
    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 44
    const-string v2, "framesinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 45
    const-string v2, "renderedinfo"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->projection:[Ljava/lang/String;

    .line 48
    const-string v0, "groupposition"

    sput-object v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->GROUP_POSITION:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "groupLayout"
    .parameter "childLayout"

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 61
    sput-object p2, Lcom/ui/LapseIt/list/ListTreeAdapter;->groupCursor:Landroid/database/Cursor;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    .line 65
    const/high16 v0, 0x4303

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxWidth:F

    .line 66
    const/high16 v0, 0x42a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxHeight:F

    .line 67
    return-void
.end method

.method static getChildItemValues(Landroid/content/Context;IJ)Landroid/os/Bundle;
    .locals 7
    .parameter "context"
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 345
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->groupCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 347
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->groupCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/ui/LapseIt/list/ListTreeAdapter;->getChildrenCursorCerto(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v2

    sput-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->currentChildCursor:Landroid/database/MatrixCursor;

    .line 348
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->currentChildCursor:Landroid/database/MatrixCursor;

    long-to-int v3, p2

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 350
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v1, extras:Landroid/os/Bundle;
    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->currentChildCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 355
    return-object v1

    .line 351
    :cond_0
    aget-object v0, v3, v2

    .line 352
    .local v0, columnName:Ljava/lang/String;
    sget-object v5, Lcom/ui/LapseIt/list/ListTreeAdapter;->currentChildCursor:Landroid/database/MatrixCursor;

    sget-object v6, Lcom/ui/LapseIt/list/ListTreeAdapter;->currentChildCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static getChildrenCursorCerto(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 10
    .parameter "groupCursor"

    .prologue
    .line 268
    const/4 v7, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 269
    const-string v8, "_id"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    .line 270
    const-string v8, "filename"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    .line 271
    const-string v8, "filepath"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    .line 272
    const-string v8, "timestamp"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    .line 273
    const-string v8, "framerate"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    .line 274
    const-string v8, "quality"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    .line 275
    const-string v8, "thumb"

    aput-object v8, v3, v7

    .line 278
    .local v3, keysArray:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v6, valuesRows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v7, "renderedinfo"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, renderedInfo:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 316
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    :cond_0
    return-object v0

    .line 286
    .restart local v4       #renderedInfo:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_2

    .line 306
    .end local v2           #i:I
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    :goto_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 308
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 309
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v8, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 310
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_2

    .line 287
    .end local v0           #childCursor:Landroid/database/MatrixCursor;
    .end local v5           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #renderedInfo:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .restart local v5       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "timestamp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "framerate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "quality"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 300
    .end local v2           #i:I
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    .end local v5           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Lorg/json/JSONException;
    const-string v7, "trace"

    const-string v8, "Error decoding JSONArray in ListView"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 312
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #childCursor:Landroid/database/MatrixCursor;
    .restart local v5       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v8, "trace"

    const-string v9, "Value rows is different from header"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static getGroupItemValues(Landroid/content/Context;J)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 320
    sget-object v0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 322
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 324
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v9, extras:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 339
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 341
    return-object v9

    .line 325
    :cond_0
    aget-object v6, v2, v0

    .line 326
    .local v6, columnName:Ljava/lang/String;
    const-string v4, "framesinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lui/utils/NetworkUtils;->getBytes(Ljava/lang/Object;)[B

    move-result-object v10

    .line 330
    .local v10, jsonBytes:[B
    invoke-virtual {v9, v6, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v10           #jsonBytes:[B
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v8

    .line 332
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 335
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 71
    const v14, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_0

    .line 72
    new-instance v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14}, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;-><init>(Lcom/ui/LapseIt/list/ListTreeAdapter;Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;)V

    .line 73
    .local v1, content:Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;
    const v14, 0x7f0b003b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lpl/polidea/imagemanager/ManagedImageView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    .line 74
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    sget v15, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxWidth:F

    float-to-int v15, v15

    sget v16, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxHeight:F

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lpl/polidea/imagemanager/ManagedImageView;->setDesiredDimensions(II)V

    .line 75
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepAspectRatio(Z)V

    .line 76
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setFillWholeView(Z)V

    .line 77
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setAntiAliasing(Z)V

    .line 78
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setPreviewEnabled(Z)V

    .line 79
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepStrongCache(Z)V

    .line 80
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setFocusable(Z)V

    .line 82
    const v14, 0x7f0b003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->firstLine:Landroid/widget/TextView;

    .line 83
    const v14, 0x7f0b003c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->extLine:Landroid/widget/TextView;

    .line 84
    const v14, 0x7f0b003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->secLine:Landroid/widget/TextView;

    .line 85
    const v14, 0x7f0b0040

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->thirdLine:Landroid/widget/TextView;

    .line 86
    const v14, 0x7f0b0040

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->thirdLine:Landroid/widget/TextView;

    .line 87
    const v14, 0x7f0b003f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->fourthLine:Landroid/widget/TextView;

    .line 88
    const v14, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    .end local v1           #content:Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;
    :cond_0
    const v14, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;

    .line 93
    .restart local v1       #content:Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;
    const-string v14, "thumb"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, thumbpath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v10, thumbfile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 96
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    invoke-virtual {v14, v11}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Ljava/lang/String;)V

    .line 101
    :goto_0
    const-string v14, "filename"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, filename:Ljava/lang/String;
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->firstLine:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v14, "framerate"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, framerate:Ljava/lang/String;
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->secLine:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0800b8

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const-string v14, "filepath"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, filepath:Ljava/lang/String;
    invoke-static {v7}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, extension:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 111
    :cond_1
    const-string v14, "\\."

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, extArray:[Ljava/lang/String;
    array-length v14, v4

    add-int/lit8 v14, v14, -0x1

    aget-object v3, v4, v14

    .line 113
    .local v3, ext:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 114
    move-object v5, v3

    .line 118
    .end local v3           #ext:Ljava/lang/String;
    .end local v4           #extArray:[Ljava/lang/String;
    :cond_2
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->thirdLine:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0800ba

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 121
    invoke-static {v11}, Lui/utils/ImageUtils;->getBitmapDimension(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    .line 122
    .local v2, dim:Landroid/graphics/Rect;
    if-eqz v2, :cond_5

    .line 123
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->fourthLine:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v2           #dim:Landroid/graphics/Rect;
    :cond_3
    :goto_1
    const-string v14, "timestamp"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 131
    .local v12, timestamp:J
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, formatedDate:Ljava/lang/String;
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->extLine:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void

    .line 98
    .end local v5           #extension:Ljava/lang/String;
    .end local v6           #filename:Ljava/lang/String;
    .end local v7           #filepath:Ljava/lang/String;
    .end local v8           #formatedDate:Ljava/lang/String;
    .end local v9           #framerate:Ljava/lang/String;
    .end local v12           #timestamp:J
    :cond_4
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const v15, 0x7f020017

    invoke-virtual {v14, v15}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(I)V

    goto/16 :goto_0

    .line 125
    .restart local v2       #dim:Landroid/graphics/Rect;
    .restart local v5       #extension:Ljava/lang/String;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v7       #filepath:Ljava/lang/String;
    .restart local v9       #framerate:Ljava/lang/String;
    :cond_5
    iget-object v14, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$ChildContentRenderer;->fourthLine:Landroid/widget/TextView;

    const-string v15, "Not detected"

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 138
    const v12, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_0

    .line 139
    new-instance v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;-><init>(Lcom/ui/LapseIt/list/ListTreeAdapter;Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;)V

    .line 140
    .local v1, content:Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;
    const v12, 0x7f0b003b

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lpl/polidea/imagemanager/ManagedImageView;

    iput-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    .line 141
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    sget v13, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxWidth:F

    float-to-int v13, v13

    sget v14, Lcom/ui/LapseIt/list/ListTreeAdapter;->thumbMaxHeight:F

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Lpl/polidea/imagemanager/ManagedImageView;->setDesiredDimensions(II)V

    .line 142
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepAspectRatio(Z)V

    .line 143
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setFillWholeView(Z)V

    .line 144
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setAntiAliasing(Z)V

    .line 145
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setPreviewEnabled(Z)V

    .line 146
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepStrongCache(Z)V

    .line 147
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setFocusable(Z)V

    .line 149
    const v12, 0x7f0b003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->firstLine:Landroid/widget/TextView;

    .line 150
    const v12, 0x7f0b003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->secLine:Landroid/widget/TextView;

    .line 151
    const v12, 0x7f0b0040

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->thirdLine:Landroid/widget/TextView;

    .line 152
    const v12, 0x7f0b0041

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->dateLine:Landroid/widget/TextView;

    .line 153
    const v12, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 156
    .end local v1           #content:Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;
    :cond_0
    const v12, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;

    .line 158
    .restart local v1       #content:Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;
    const-string v12, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, title:Ljava/lang/String;
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->firstLine:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    const-string v12, "framesinfo"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 165
    .local v7, framesInfo:Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 166
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "filepath"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, filepath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 169
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    invoke-virtual {v12, v5}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->secLine:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f0800b4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v4           #file:Ljava/io/File;
    .end local v5           #filepath:Ljava/lang/String;
    .end local v7           #framesInfo:Lorg/json/JSONArray;
    :cond_1
    :goto_1
    const-string v12, "timestamp"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 198
    .local v9, timestamp:J
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, formatedDate:Ljava/lang/String;
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->dateLine:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    const-string v12, "renderedinfo"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 204
    .local v8, renderedInfo:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 205
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->thirdLine:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f0800b6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    .end local v8           #renderedInfo:Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 171
    .end local v6           #formatedDate:Ljava/lang/String;
    .end local v9           #timestamp:J
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #filepath:Ljava/lang/String;
    .restart local v7       #framesInfo:Lorg/json/JSONArray;
    :cond_2
    :try_start_2
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const v13, 0x7f020017

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 193
    .end local v4           #file:Ljava/io/File;
    .end local v5           #filepath:Ljava/lang/String;
    .end local v7           #framesInfo:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #framesInfo:Lorg/json/JSONArray;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 177
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "filepath"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5       #filepath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 181
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    invoke-virtual {v12, v5}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Ljava/lang/String;)V

    .line 185
    :goto_3
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->secLine:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f0800b3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 183
    :cond_4
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const v13, 0x7f020017

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(I)V

    goto :goto_3

    .line 186
    .end local v4           #file:Ljava/io/File;
    .end local v5           #filepath:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 187
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const v13, 0x7f020017

    invoke-virtual {v12, v13}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(I)V

    .line 190
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->secLine:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    const v14, 0x7f0800b5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 207
    .end local v7           #framesInfo:Lorg/json/JSONArray;
    .restart local v6       #formatedDate:Ljava/lang/String;
    .restart local v8       #renderedInfo:Lorg/json/JSONArray;
    .restart local v9       #timestamp:J
    :cond_6
    :try_start_4
    iget-object v12, v1, Lcom/ui/LapseIt/list/ListTreeAdapter$GroupContentRenderer;->thirdLine:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/list/ListTreeAdapter;->mRes:Landroid/content/res/Resources;

    const v15, 0x7f0800b7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 209
    .end local v8           #renderedInfo:Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 210
    .local v3, e1:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .parameter "groupCursor"

    .prologue
    .line 216
    const/4 v7, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 217
    const-string v8, "_id"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    .line 218
    const-string v8, "filename"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    .line 219
    const-string v8, "filepath"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    .line 220
    const-string v8, "timestamp"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    .line 221
    const-string v8, "framerate"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    .line 222
    const-string v8, "quality"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    .line 223
    const-string v8, "thumb"

    aput-object v8, v3, v7

    .line 226
    .local v3, keysArray:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, valuesRows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v7, "renderedinfo"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, renderedInfo:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 264
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    :cond_0
    return-object v0

    .line 234
    .restart local v4       #renderedInfo:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_2

    .line 254
    .end local v2           #i:I
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    :goto_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 256
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 257
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v8, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 258
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_2

    .line 235
    .end local v0           #childCursor:Landroid/database/MatrixCursor;
    .end local v5           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #renderedInfo:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v5       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "timestamp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "framerate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "quality"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 248
    .end local v2           #i:I
    .end local v4           #renderedInfo:Lorg/json/JSONArray;
    .end local v5           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Lorg/json/JSONException;
    const-string v7, "trace"

    const-string v8, "Error decoding JSONArray in ListView"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 260
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #childCursor:Landroid/database/MatrixCursor;
    .restart local v5       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v8, "trace"

    const-string v9, "Value rows is different from header"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
