.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .locals 11
    .parameter "content"
    .parameter "paint"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 137
    .local v1, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v9, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v10, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 138
    .local v2, h:I
    const/4 v7, 0x0

    .line 140
    .local v7, maxContentWidth:I
    invoke-static {p0, p3, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, lines:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 143
    move v7, p2

    .line 158
    :cond_0
    new-instance v9, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v9, v7, v2, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v9

    .line 149
    :cond_1
    const/4 v8, 0x0

    .line 150
    .local v8, temp:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 151
    .local v5, line:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v5, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v8, v9

    .line 152
    if-le v8, v7, :cond_2

    .line 153
    move v7, v8

    .line 150
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I
    .locals 1
    .parameter "paint"
    .parameter "content"
    .parameter "w"
    .parameter "alignment"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, ret:I
    packed-switch p3, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return v0

    .line 96
    :pswitch_1
    div-int/lit8 v0, p2, 0x2

    .line 97
    goto :goto_0

    .line 104
    :pswitch_2
    move v0, p2

    .line 105
    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 18
    .parameter "content"
    .parameter "fontName"
    .parameter "fontSize"
    .parameter "alignment"
    .parameter "width"
    .parameter "height"
    .parameter "lineBias"

    .prologue
    .line 64
    invoke-static/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static/range {p1 .. p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v12

    .line 67
    .local v12, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v12, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v13

    .line 69
    .local v13, textProperty:Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    if-nez p5, :cond_0

    iget v5, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->totalHeight:I

    .line 72
    .local v5, bitmapTotalHeight:I
    :goto_0
    iget v0, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->maxWidth:I

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 74
    .local v4, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    .line 78
    .local v7, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/4 v14, 0x0

    .line 79
    .local v14, x:I
    if-nez p5, :cond_1

    iget v0, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v15, v0

    .line 81
    .local v15, y:I
    :goto_1
    iget-object v11, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->lines:[Ljava/lang/String;

    .line 82
    .local v11, lines:[Ljava/lang/String;
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v10, v3, v8

    .line 83
    .local v10, line:Ljava/lang/String;
    iget v0, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->maxWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-static {v12, v10, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I

    move-result v14

    .line 84
    int-to-float v0, v14

    move/from16 v16, v0

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v10, v0, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    iget v0, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->heightPerLine:I

    move/from16 v16, v0

    add-int v16, v16, p6

    add-int v15, v15, v16

    .line 82
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #bitmapTotalHeight:I
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #line:Ljava/lang/String;
    .end local v11           #lines:[Ljava/lang/String;
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_0
    move/from16 v5, p5

    .line 69
    goto :goto_0

    .line 79
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmapTotalHeight:I
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v7       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v14       #x:I
    :cond_1
    iget v0, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    iget v0, v13, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->totalHeight:I

    move/from16 v17, v0

    sub-int v17, p5, v17

    div-int/lit8 v17, v17, 0x2

    add-int v15, v16, v17

    goto :goto_1

    .line 88
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #lines:[Ljava/lang/String;
    .restart local v15       #y:I
    :cond_2
    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 89
    return-void
.end method

.method private static divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;
    .locals 11
    .parameter "paint"
    .parameter "content"
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 250
    .local v0, charLength:I
    const/4 v5, 0x0

    .line 251
    .local v5, start:I
    const/4 v8, 0x0

    .line 252
    .local v8, tempWidth:I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 257
    .local v6, strList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_8

    .line 258
    invoke-virtual {p0, p1, v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v8, v9

    .line 259
    if-lt v8, p2, :cond_2

    .line 260
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, ss:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_1

    .line 262
    add-int/lit8 v5, v5, 0x1

    .line 263
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 264
    if-lt v5, v1, :cond_0

    .line 265
    const-string v3, ""

    .line 269
    :cond_1
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, lastIndexOfSpace:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 275
    add-int v9, v5, v2

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int v1, v5, v2

    .line 304
    :goto_1
    move v5, v1

    .line 257
    .end local v2           #lastIndexOfSpace:I
    .end local v3           #ss:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .restart local v2       #lastIndexOfSpace:I
    .restart local v3       #ss:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, sub:Ljava/lang/String;
    if-le v8, p2, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 286
    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, ss2:Ljava/lang/String;
    if-gtz v1, :cond_5

    .line 288
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_5
    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    int-to-float v10, p2

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 291
    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    .end local v4           #ss2:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .end local v7           #sub:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v7       #sub:Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto :goto_2

    .line 311
    .end local v2           #lastIndexOfSpace:I
    .end local v3           #ss:Ljava/lang/String;
    .end local v7           #sub:Ljava/lang/String;
    :cond_8
    if-ge v5, v0, :cond_9

    .line 312
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_9
    return-object v6
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 465
    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 467
    .local v1, pixels:[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 468
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 469
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 473
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    .end local v1           #pixels:[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 456
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 457
    .local v0, pixels:[B
    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 7
    .parameter "fontName"
    .parameter "fontSize"
    .parameter "alignment"

    .prologue
    const/4 v6, 0x0

    .line 373
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 374
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 376
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 381
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->context:Landroid/content/Context;

    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 385
    .local v2, typeFace:Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v2           #typeFace:Landroid/graphics/Typeface;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 414
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 418
    :goto_1
    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error to create ttf type face: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 402
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 406
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 410
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 423
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 424
    const-string v3, " "

    .line 452
    :goto_0
    return-object v3

    .line 434
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 436
    .local v1, start:I
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, index:I
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 438
    if-eqz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 439
    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v1, v0, 0x2

    .line 445
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 452
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 442
    :cond_3
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    .line 449
    :cond_4
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 17
    .parameter "content"
    .parameter "maxHeight"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    .line 170
    const-string v14, "\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, lines:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 172
    .local v12, ret:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 173
    .local v3, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v14, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v15, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 174
    .local v4, heightPerLine:I
    div-int v11, p1, v4

    .line 178
    .local v11, maxLines:I
    if-eqz p2, :cond_5

    .line 179
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v13, strList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v2, v6

    .line 185
    .local v8, line:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v9, v14

    .line 188
    .local v9, lineWidth:I
    move/from16 v0, p2

    if-le v9, v0, :cond_1

    .line 189
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v8, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_1
    if-lez v11, :cond_2

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-lt v14, v11, :cond_2

    .line 212
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineWidth:I
    :cond_0
    if-lez v11, :cond_3

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-le v14, v11, :cond_3

    .line 213
    :goto_2
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-le v14, v11, :cond_3

    .line 214
    invoke-virtual {v13}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 192
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #lineWidth:I
    :cond_1
    invoke-virtual {v13, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lineWidth:I
    :cond_3
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v12, v14, [Ljava/lang/String;

    .line 219
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 237
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v13           #strList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    array-length v14, v12

    if-ge v5, v14, :cond_8

    .line 238
    aget-object v14, v12, v5

    if-eqz v14, :cond_4

    .line 239
    aget-object v14, v12, v5

    const-string v15, "###"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v5

    .line 240
    aget-object v14, v12, v5

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v5

    .line 237
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 221
    .end local v5           #i:I
    :cond_5
    if-eqz p1, :cond_7

    array-length v14, v10

    if-le v14, v11, :cond_7

    .line 225
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 226
    .restart local v13       #strList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v11, :cond_6

    .line 227
    aget-object v14, v10, v5

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 229
    :cond_6
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v12, v14, [Ljava/lang/String;

    .line 230
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    .line 233
    .end local v5           #i:I
    .end local v13           #strList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_7
    move-object v12, v10

    goto :goto_3

    .line 244
    .restart local v5       #i:I
    :cond_8
    return-object v12
.end method
