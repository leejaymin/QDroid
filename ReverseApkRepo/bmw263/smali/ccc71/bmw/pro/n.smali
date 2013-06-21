.class public final Lccc71/bmw/pro/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic j:[I


# instance fields
.field private a:I

.field private b:I

.field private c:Lccc71/bmw/lib/ak;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(IILccc71/bmw/lib/ak;ZIIFFZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lccc71/bmw/pro/n;->h:F

    .line 23
    iput v0, p0, Lccc71/bmw/pro/n;->i:F

    .line 27
    iput p1, p0, Lccc71/bmw/pro/n;->a:I

    .line 28
    iput p2, p0, Lccc71/bmw/pro/n;->b:I

    .line 29
    iput-object p3, p0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    .line 30
    iput p5, p0, Lccc71/bmw/pro/n;->f:I

    .line 31
    iput p6, p0, Lccc71/bmw/pro/n;->g:I

    .line 32
    iput-boolean p4, p0, Lccc71/bmw/pro/n;->d:Z

    .line 33
    iput p7, p0, Lccc71/bmw/pro/n;->h:F

    .line 34
    iput p8, p0, Lccc71/bmw/pro/n;->i:F

    .line 35
    iput-boolean p9, p0, Lccc71/bmw/pro/n;->e:Z

    .line 36
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lccc71/bmw/pro/n;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lccc71/bmw/pro/n;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter

    .prologue
    .line 144
    const/4 v3, 0x1

    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lccc71/bmw/pro/n;->a()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v5}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 170
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    sget-object v5, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    if-eq v4, v5, :cond_10

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 173
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_1
    if-lt v5, v6, :cond_3

    move v8, v3

    move v9, v4

    .line 185
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 186
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 188
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/bmw/pro/n;->d:Z

    if-eqz v3, :cond_5

    .line 194
    const/high16 v3, 0x4000

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->i:F

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->a:I

    packed-switch v3, :pswitch_data_1

    .line 203
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->h:F

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->a:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/16 v4, 0xe10

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->b:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v11, v3

    .line 204
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->f:I

    move v10, v3

    :goto_4
    if-gtz v10, :cond_6

    .line 213
    :pswitch_0
    neg-int v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->g:I

    mul-int/2addr v3, v4

    sub-int v4, v9, v8

    div-int v17, v3, v4

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/bmw/pro/n;->c:Lccc71/bmw/lib/ak;

    sget-object v4, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    if-ne v3, v4, :cond_1

    .line 216
    :cond_0
    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/bmw/pro/n;->d:Z

    if-eqz v3, :cond_7

    .line 219
    const/high16 v3, 0x6000

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v4, v4, v17

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->f:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v6, v6, v17

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->i:F

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/bmw/pro/n;->d:Z

    if-eqz v3, :cond_8

    .line 235
    const/high16 v3, -0x100

    .line 236
    const v5, -0xff7100

    .line 237
    const/high16 v4, -0x51

    move v10, v3

    move v11, v4

    move v12, v5

    .line 246
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 248
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->f:I

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->h:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 249
    if-gez v3, :cond_e

    .line 250
    const/4 v3, 0x0

    move v13, v3

    .line 252
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->f:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->h:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 253
    sub-int v19, v18, v3

    .line 254
    if-ltz v19, :cond_2

    add-int/lit8 v3, v18, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 256
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->g:I

    mul-int/2addr v3, v4

    sub-int v4, v9, v8

    div-int v4, v3, v4

    .line 257
    add-int/lit8 v3, v19, 0x1

    move v14, v3

    :goto_8
    move/from16 v0, v18

    if-lt v14, v0, :cond_9

    .line 283
    :cond_2
    return-object v16

    .line 149
    :pswitch_1
    const/16 v3, 0x64

    .line 150
    const/4 v2, 0x0

    .line 151
    goto/16 :goto_0

    .line 154
    :pswitch_2
    const/4 v3, 0x1

    .line 155
    const/4 v2, -0x1

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_3
    const/16 v3, 0x12d

    .line 159
    const/16 v2, 0x12c

    .line 160
    goto/16 :goto_0

    .line 162
    :pswitch_4
    const/16 v3, 0xfa1

    .line 163
    const/16 v2, 0xfa0

    .line 164
    goto/16 :goto_0

    .line 166
    :pswitch_5
    const/4 v2, -0x1

    .line 167
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 175
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    if-le v2, v4, :cond_4

    move/from16 v21, v3

    move v3, v2

    move/from16 v2, v21

    .line 173
    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    .line 178
    :cond_4
    if-ge v2, v3, :cond_f

    move v3, v4

    .line 179
    goto :goto_9

    .line 196
    :cond_5
    const v3, 0x40ffffff

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 206
    :cond_6
    int-to-float v3, v10

    const/4 v4, 0x0

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->g:I

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    sub-int v3, v10, v11

    move v10, v3

    goto/16 :goto_4

    .line 221
    :cond_7
    const v3, 0x60ffffff

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 241
    :cond_8
    const/4 v3, -0x1

    .line 242
    const v5, -0xdf00e0

    .line 243
    const v4, -0xdfe0

    move v10, v3

    move v11, v4

    move v12, v5

    goto/16 :goto_6

    .line 259
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    mul-int/2addr v3, v5

    sub-int v5, v9, v8

    div-int v15, v3, v5

    .line 260
    if-ne v15, v4, :cond_a

    .line 261
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lccc71/bmw/pro/n;->e:Z

    if-eqz v3, :cond_c

    .line 269
    int-to-float v3, v13

    sub-int v5, v14, v19

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->h:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, v13

    add-int/lit8 v6, v14, 0x1

    sub-int v6, v6, v19

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lccc71/bmw/pro/n;->h:F

    move/from16 v20, v0

    mul-float v6, v6, v20

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->g:I

    sub-int/2addr v6, v15

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    :goto_b
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v4, v15

    goto/16 :goto_8

    .line 262
    :cond_a
    if-le v15, v4, :cond_b

    .line 263
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 265
    :cond_b
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    .line 274
    int-to-float v3, v13

    sub-int v5, v14, v19

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->h:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, v13

    add-int/lit8 v6, v14, 0x1

    sub-int v6, v6, v19

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lccc71/bmw/pro/n;->h:F

    move/from16 v20, v0

    mul-float v6, v6, v20

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v6, v6, v17

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 276
    :cond_d
    int-to-float v3, v13

    sub-int v5, v14, v19

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->h:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, v13

    add-int/lit8 v6, v14, 0x1

    sub-int v6, v6, v19

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lccc71/bmw/pro/n;->h:F

    move/from16 v20, v0

    mul-float v6, v6, v20

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lccc71/bmw/pro/n;->g:I

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_e
    move v13, v3

    goto/16 :goto_7

    :cond_f
    move v2, v3

    move v3, v4

    goto/16 :goto_9

    :cond_10
    move v8, v2

    move v9, v3

    goto/16 :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;[[I)Landroid/graphics/Bitmap;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    move-object/from16 v0, p2

    array-length v10, v0

    .line 42
    const/4 v1, 0x0

    move v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move v3, v15

    :goto_0
    if-lt v3, v10, :cond_3

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->b:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    .line 51
    add-long v8, v1, v3

    .line 55
    move-object/from16 v0, p0

    iget v1, v0, Lccc71/bmw/pro/n;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->g:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 56
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->a:I

    if-eqz v2, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/bmw/pro/n;->d:Z

    if-eqz v2, :cond_5

    .line 66
    const/high16 v2, 0x4000

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->a:I

    const/16 v3, 0xe10

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->b:I

    div-int/2addr v3, v4

    mul-int v12, v2, v3

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->f:I

    move v7, v2

    :goto_2
    if-gtz v7, :cond_6

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->f:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->b:I

    int-to-long v3, v3

    div-long v3, v8, v3

    long-to-float v3, v3

    div-float v12, v2, v3

    .line 83
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->a:I

    if-eqz v2, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    const/16 v3, 0xe10

    move-object/from16 v0, p0

    iget v4, v0, Lccc71/bmw/pro/n;->b:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 86
    const/4 v2, 0x1

    if-le v8, v2, :cond_1

    .line 88
    const v2, 0x40ffffff

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->f:I

    move v7, v2

    :goto_3
    if-gtz v7, :cond_7

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->i:F

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    mul-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x64

    .line 105
    const/4 v2, 0x1

    move v7, v2

    move v9, v3

    :goto_4
    if-lt v7, v13, :cond_8

    .line 123
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    .line 124
    :goto_5
    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move v7, v2

    .line 125
    :goto_6
    const/4 v2, 0x0

    move v8, v2

    :goto_7
    if-lt v8, v10, :cond_e

    .line 137
    :cond_2
    return-object v11

    .line 44
    :cond_3
    aget-object v4, p2, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_4

    .line 45
    aget-object v1, p2, v3

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-long v1, v1

    .line 42
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 68
    :cond_5
    const v2, 0x40ffffff

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 75
    :cond_6
    int-to-float v2, v7

    const/4 v3, 0x0

    int-to-float v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    sub-int v2, v7, v12

    move v7, v2

    goto/16 :goto_2

    .line 91
    :cond_7
    int-to-float v2, v7

    const/4 v3, 0x0

    int-to-float v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    sub-int v2, v7, v8

    move v7, v2

    goto :goto_3

    .line 107
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    mul-int/2addr v2, v3

    div-int/lit8 v8, v2, 0x64

    .line 108
    if-ne v8, v9, :cond_9

    .line 109
    const/4 v2, -0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lccc71/bmw/pro/n;->e:Z

    if-eqz v2, :cond_b

    .line 116
    add-int/lit8 v2, v7, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v7

    mul-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    :goto_9
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v9, v8

    goto/16 :goto_4

    .line 110
    :cond_9
    if-le v8, v9, :cond_a

    .line 111
    const v2, -0xdf00e0

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 113
    :cond_a
    const v2, -0xdfe0

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 118
    :cond_b
    add-int/lit8 v2, v7, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v4, v7

    mul-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lccc71/bmw/pro/n;->g:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 123
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 124
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lccc71/bmw/pro/n;->g:I

    move v7, v2

    goto/16 :goto_6

    .line 127
    :cond_e
    aget-object v2, p2, v8

    const/4 v3, 0x1

    aget v4, v2, v3

    .line 129
    if-lez v4, :cond_f

    .line 131
    aget-object v2, p2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    add-int/lit8 v2, v13, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lccc71/bmw/pro/n;->g:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lccc71/bmw/pro/n;->b:I

    div-int/2addr v4, v14

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v12

    int-to-float v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    :cond_f
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_7
.end method
