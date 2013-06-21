.class public Lcom/stickycoding/rokon/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field public static final DEFAULT_FONT_SIZE:F = 64.0f

.field public static final MAX_LINES:I = 0x40


# instance fields
.field protected bounds:Landroid/graphics/Rect;

.field protected fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field public paint:Landroid/graphics/Paint;

.field protected typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeface"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stickycoding/rokon/Font;->typeface:Landroid/graphics/Typeface;

    .line 45
    invoke-direct {p0}, Lcom/stickycoding/rokon/Font;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "assetPath"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/Font;->typeface:Landroid/graphics/Typeface;

    .line 55
    invoke-direct {p0}, Lcom/stickycoding/rokon/Font;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/stickycoding/rokon/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4280

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    .line 64
    return-void
.end method


# virtual methods
.method public createTexture(Ljava/lang/String;)Lcom/stickycoding/rokon/TextTexture;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v4, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    iget-object v4, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 86
    .local v1, bitmapWidth:I
    iget-object v4, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v5

    .line 87
    .local v0, bitmapHeight:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 88
    .local v2, bmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v3, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/stickycoding/rokon/Font;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    new-instance v4, Lcom/stickycoding/rokon/TextTexture;

    invoke-direct {v4, v2}, Lcom/stickycoding/rokon/TextTexture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method public createTexture(Ljava/lang/String;I)Lcom/stickycoding/rokon/TextTexture;
    .locals 20
    .parameter "text"
    .parameter "width"

    .prologue
    .line 102
    move/from16 v6, p2

    .line 104
    .local v6, bitmapWidth:I
    const/16 v16, 0x40

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 105
    .local v14, lines:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 106
    .local v13, lineIndexStart:I
    const/4 v12, 0x1

    .line 107
    .local v12, lineCount:I
    const/4 v9, 0x1

    .line 108
    .local v9, currentLineWidth:I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v15, testRect:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .local v11, index:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move v0, v11

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    mul-int v5, v16, v12

    .line 128
    .local v5, bitmapHeight:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v0, v6

    move v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 129
    .local v7, bmp:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v8, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-le v10, v12, :cond_3

    .line 136
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Created texture, "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 137
    new-instance v16, Lcom/stickycoding/rokon/TextTexture;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/TextTexture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v16

    .line 111
    .end local v5           #bitmapHeight:I
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    add-int/lit8 v17, v11, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, v17

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 112
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v9, v9, v16

    .line 113
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v16, v16, v9

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 114
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 115
    move-object/from16 v0, p1

    move v1, v13

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12

    .line 116
    move v13, v11

    .line 117
    add-int/lit8 v12, v12, 0x1

    .line 121
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 122
    move-object/from16 v0, p1

    move v1, v13

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12

    .line 110
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 119
    :cond_2
    move-object v0, v15

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v9, v9, v16

    goto :goto_2

    .line 132
    .restart local v5       #bitmapHeight:I
    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #i:I
    :cond_3
    aget-object v16, v14, v10

    if-eqz v16, :cond_4

    .line 133
    aget-object v16, v14, v10

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    mul-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public setFontSize(F)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget-object v0, p0, Lcom/stickycoding/rokon/Font;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/Font;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 74
    return-void
.end method
