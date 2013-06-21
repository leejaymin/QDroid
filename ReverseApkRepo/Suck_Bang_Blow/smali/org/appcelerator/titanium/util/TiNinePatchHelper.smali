.class public Lorg/appcelerator/titanium/util/TiNinePatchHelper;
.super Ljava/lang/Object;
.source "TiNinePatchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiNinePatch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    const/4 v8, 0x0

    .line 122
    .local v8, cb:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 124
    .local v1, pixels:[I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 125
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, v8

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 127
    return-object v8
.end method

.method private isNinePatch(Landroid/graphics/Bitmap;)Z
    .locals 12
    .parameter "b"

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 61
    const/4 v5, 0x1

    .line 63
    .local v5, result:Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 64
    .local v8, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 66
    .local v2, height:I
    const/4 v7, 0x0

    .line 67
    .local v7, topSum:I
    const/4 v4, 0x0

    .line 68
    .local v4, leftSum:I
    const/4 v6, 0x0

    .line 69
    .local v6, rightSum:I
    const/4 v0, 0x0

    .line 71
    .local v0, bottomSum:I
    if-lt v8, v9, :cond_b

    if-lt v2, v9, :cond_b

    .line 72
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 73
    invoke-virtual {p1, v3, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 74
    .local v1, c:I
    if-nez v1, :cond_3

    move v9, v10

    :goto_1
    add-int/2addr v7, v9

    .line 75
    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 76
    const/4 v5, 0x0

    .line 87
    .end local v1           #c:I
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 88
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_1

    .line 89
    invoke-virtual {p1, v10, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 90
    .restart local v1       #c:I
    if-nez v1, :cond_7

    move v9, v10

    :goto_4
    add-int/2addr v4, v9

    .line 91
    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v9

    if-nez v9, :cond_8

    .line 92
    const/4 v5, 0x0

    .line 108
    .end local v1           #c:I
    .end local v3           #i:I
    :cond_1
    :goto_5
    add-int v9, v4, v7

    add-int/2addr v9, v6

    add-int/2addr v9, v0

    if-nez v9, :cond_2

    .line 109
    const/4 v5, 0x0

    .line 112
    :cond_2
    return v5

    .restart local v1       #c:I
    .restart local v3       #i:I
    :cond_3
    move v9, v11

    .line 74
    goto :goto_1

    .line 79
    :cond_4
    sub-int v9, v2, v11

    invoke-virtual {p1, v3, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 80
    if-nez v1, :cond_5

    move v9, v10

    :goto_6
    add-int/2addr v0, v9

    .line 81
    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 82
    const/4 v5, 0x0

    .line 83
    goto :goto_2

    :cond_5
    move v9, v11

    .line 80
    goto :goto_6

    .line 72
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v9, v11

    .line 90
    goto :goto_4

    .line 95
    :cond_8
    sub-int v9, v8, v11

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 96
    if-nez v1, :cond_9

    move v9, v10

    :goto_7
    add-int/2addr v6, v9

    .line 97
    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 98
    const/4 v5, 0x0

    .line 99
    goto :goto_5

    :cond_9
    move v9, v11

    .line 96
    goto :goto_7

    .line 88
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 104
    .end local v1           #c:I
    .end local v3           #i:I
    :cond_b
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private isValidColor(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    const/high16 v0, -0x100

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toBytes([BII)V
    .locals 2
    .parameter "a"
    .parameter "offset"
    .parameter "v"

    .prologue
    .line 235
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 236
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 237
    add-int/lit8 v0, p2, 0x2

    const/high16 v1, 0xff

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 238
    add-int/lit8 v0, p2, 0x3

    const/high16 v1, -0x100

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 239
    return-void
.end method

.method private toInt([BI)I
    .locals 2
    .parameter "a"
    .parameter "offset"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, i:I
    aget-byte v1, p1, p2

    or-int/2addr v0, v1

    .line 227
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 228
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 229
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 231
    return v0
.end method


# virtual methods
.method createChunk(Landroid/graphics/Bitmap;)[B
    .locals 25
    .parameter "b"

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 133
    .local v4, chunk:[B
    const/4 v9, 0x0

    .line 134
    .local v9, numXDivs:I
    const/4 v10, 0x0

    .line 135
    .local v10, numYDivs:I
    const/4 v8, 0x1

    .line 137
    .local v8, numColors:I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 139
    .local v7, last:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v18, xdivs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;>;"
    const/16 v17, 0x1

    .local v17, x:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 142
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 143
    .local v11, p:I
    if-eq v11, v7, :cond_0

    .line 144
    new-instance v12, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;-><init>(Lorg/appcelerator/titanium/util/TiNinePatchHelper;)V

    .line 145
    .local v12, sc:Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    .line 146
    iput v7, v12, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    .line 147
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    move v7, v11

    .line 141
    .end local v12           #sc:Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 153
    .end local v11           #p:I
    :cond_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 156
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v21, ydivs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;>;"
    const/16 v19, 0x1

    .local v19, y:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 158
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 159
    .restart local v11       #p:I
    if-eq v11, v7, :cond_2

    .line 160
    new-instance v12, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;-><init>(Lorg/appcelerator/titanium/util/TiNinePatchHelper;)V

    .line 161
    .restart local v12       #sc:Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    .line 162
    iput v7, v12, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    .line 163
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    move v7, v11

    .line 157
    .end local v12           #sc:Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 170
    .end local v11           #p:I
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v5, colors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .end local p1
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 172
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v20, v0

    .line 173
    .local v20, yc:I
    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 174
    if-nez v20, :cond_5

    .line 175
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    const/16 v22, 0x0

    :goto_4
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 175
    :cond_4
    const/16 v22, 0x1

    goto :goto_4

    .line 177
    :cond_5
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v22, v0

    if-nez v22, :cond_6

    const/16 v22, 0x0

    :goto_6
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    const/16 v22, 0x1

    goto :goto_6

    .line 180
    :cond_7
    if-nez v20, :cond_9

    .line 181
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v22, 0x0

    :goto_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 181
    :cond_8
    const/16 v22, 0x1

    goto :goto_7

    .line 183
    :cond_9
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 186
    .end local v20           #yc:I
    :cond_a
    const/4 v6, 0x0

    .local v6, i:I
    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move v0, v6

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 187
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 190
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 193
    mul-int/lit8 v22, v9, 0x20

    add-int/lit8 v22, v22, 0x20

    mul-int/lit8 v23, v10, 0x20

    add-int v22, v22, v23

    mul-int/lit8 v23, v8, 0x20

    add-int v13, v22, v23

    .line 199
    .local v13, size:I
    new-array v4, v13, [B

    .line 200
    const/16 v22, 0x0

    const/16 v23, 0x0

    aput-byte v23, v4, v22

    .line 201
    const/16 v22, 0x1

    move v0, v9

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v4, v22

    .line 202
    const/16 v22, 0x2

    move v0, v10

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v4, v22

    .line 203
    const/16 v22, 0x3

    move v0, v8

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v4, v22

    .line 205
    const/16 v15, 0x20

    .line 206
    .local v15, startOfXData:I
    const/4 v6, 0x0

    :goto_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v6

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 207
    mul-int/lit8 v22, v6, 0x4

    add-int v22, v22, v15

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 206
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 210
    :cond_c
    mul-int/lit8 v22, v9, 0x4

    add-int v16, v15, v22

    .line 211
    .local v16, startOfYData:I
    const/4 v6, 0x0

    :goto_b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v6

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 212
    mul-int/lit8 v22, v6, 0x4

    add-int v22, v22, v16

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p1

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 211
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 215
    :cond_d
    mul-int/lit8 v22, v10, 0x4

    add-int v14, v16, v22

    .line 216
    .local v14, startOfColors:I
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v6

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 217
    mul-int/lit8 v22, v6, 0x4

    add-int v22, v22, v14

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 220
    :cond_e
    return-object v4
.end method

.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, nd:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isNinePatch(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->createChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 51
    .local v1, newChunk:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0           #nd:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v4, ""

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 57
    .end local v1           #newChunk:[B
    .restart local v0       #nd:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #nd:Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v0       #nd:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public process(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "d"

    .prologue
    const/4 v5, 0x1

    .line 29
    move-object v1, p1

    .line 31
    .local v1, nd:Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 32
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isNinePatch(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->createChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 36
    .local v2, newChunk:[B
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1           #nd:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, ""

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 41
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #newChunk:[B
    .restart local v1       #nd:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method
