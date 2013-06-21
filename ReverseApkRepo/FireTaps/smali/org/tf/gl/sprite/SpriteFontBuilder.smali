.class public Lorg/tf/gl/sprite/SpriteFontBuilder;
.super Ljava/lang/Object;
.source "SpriteFontBuilder.java"


# static fields
.field private static final SHADOW_OFFSET:I = 0x1


# instance fields
.field private m_backgroundColor:I

.field private m_characters:Ljava/lang/StringBuilder;

.field private m_color:I

.field private m_shadowColor:I

.field private m_size:F

.field private m_typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteFontBuilder;->reset()V

    .line 35
    return-void
.end method

.method private static drawSpacedText(Landroid/graphics/Canvas;FFLjava/lang/String;[FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "text"
    .parameter "widths"
    .parameter "spacing"
    .parameter "paint"

    .prologue
    .line 205
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 210
    return-void

    .line 206
    :cond_0
    add-int/lit8 v3, v2, 0x1

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 207
    aget v0, p4, v2

    add-float/2addr p1, v0

    .line 208
    add-float/2addr p1, p5

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static getIndex(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 195
    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 196
    :cond_0
    const/4 v0, -0x1

    .line 198
    :goto_0
    return v0

    :cond_1
    and-int/lit16 v0, p0, 0xff

    goto :goto_0
.end method


# virtual methods
.method public addCharacters(Ljava/lang/String;)V
    .locals 7
    .parameter "characters"

    .prologue
    .line 73
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, e:I
    :goto_0
    if-ne v3, v1, :cond_0

    .line 89
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 75
    .local v0, ch:C
    invoke-static {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;->getIndex(C)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 73
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 79
    .local v2, found:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v5, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 85
    :goto_3
    if-nez v2, :cond_1

    .line 86
    iget-object v5, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 80
    :cond_3
    iget-object v5, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_4

    .line 81
    const/4 v2, 0x1

    .line 82
    goto :goto_3

    .line 79
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public buildFont(Ljavax/microedition/khronos/opengles/GL10;)Lorg/tf/gl/sprite/SpriteFont;
    .locals 25
    .parameter "gl"

    .prologue
    .line 92
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v11, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_size:F

    move v6, v0

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_typeface:Landroid/graphics/Typeface;

    move-object v6, v0

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 97
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v20

    .line 98
    .local v20, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move v7, v0

    sub-float v19, v6, v7

    .line 99
    .local v19, fontHeight:F
    const/high16 v6, 0x3f80

    add-float v19, v19, v6

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, characters:Ljava/lang/String;
    move/from16 v15, v19

    .line 103
    .local v15, charactersHeight:F
    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 104
    .local v16, charactersWidth:F
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    new-array v9, v6, [F

    .line 105
    .local v9, characterWidths:[F
    invoke-virtual {v11, v8, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 106
    const/16 v6, 0x100

    new-array v14, v6, [Landroid/graphics/RectF;

    .line 108
    .local v14, characterRects:[Landroid/graphics/RectF;
    const/16 v23, 0x0

    .line 109
    .local v23, x:F
    const/16 v24, 0x0

    .line 110
    .local v24, y:F
    const/16 v21, 0x0

    .local v21, i:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    .local v17, e:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 124
    invoke-static/range {v16 .. v16}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v6

    invoke-static {v6}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v6

    .line 125
    invoke-static {v15}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v7

    invoke-static {v7}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v7

    .line 126
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 123
    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 127
    .local v12, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_backgroundColor:I

    move v6, v0

    invoke-virtual {v12, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 128
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    move v6, v0

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/high16 v6, 0x3f80

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move v7, v0

    neg-float v7, v7

    const/high16 v10, 0x3f80

    add-float/2addr v7, v10

    .line 135
    const/high16 v10, 0x3f80

    .line 131
    invoke-static/range {v5 .. v11}, Lorg/tf/gl/sprite/SpriteFontBuilder;->drawSpacedText(Landroid/graphics/Canvas;FFLjava/lang/String;[FFLandroid/graphics/Paint;)V

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_color:I

    move v6, v0

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move v7, v0

    neg-float v7, v7

    .line 143
    const/high16 v10, 0x3f80

    .line 139
    invoke-static/range {v5 .. v11}, Lorg/tf/gl/sprite/SpriteFontBuilder;->drawSpacedText(Landroid/graphics/Canvas;FFLjava/lang/String;[FFLandroid/graphics/Paint;)V

    .line 145
    new-instance v22, Lorg/tf/gl/sprite/Sprite;

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/tf/gl/sprite/Sprite;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V

    .line 148
    .local v22, sprite:Lorg/tf/gl/sprite/Sprite;
    new-instance v18, Lorg/tf/gl/sprite/SpriteFont;

    invoke-direct/range {v18 .. v18}, Lorg/tf/gl/sprite/SpriteFont;-><init>()V

    .line 149
    .local v18, font:Lorg/tf/gl/sprite/SpriteFont;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 150
    const/high16 v6, 0x3f80

    add-float v6, v6, v19

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lorg/tf/gl/sprite/SpriteFont;->m_height:F

    .line 151
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    move v6, v0

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lorg/tf/gl/sprite/SpriteFont;->m_leading:F

    .line 152
    move-object v0, v14

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/tf/gl/sprite/SpriteFont;->m_charRects:[Landroid/graphics/RectF;

    .line 153
    return-object v18

    .line 111
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #font:Lorg/tf/gl/sprite/SpriteFont;
    .end local v22           #sprite:Lorg/tf/gl/sprite/Sprite;
    :cond_1
    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/tf/gl/sprite/SpriteFontBuilder;->getIndex(C)I

    move-result v13

    .line 112
    .local v13, charIndex:I
    new-instance v6, Landroid/graphics/RectF;

    .line 114
    aget v7, v9, v21

    add-float v7, v7, v23

    add-float v10, v24, v19

    move-object v0, v6

    move/from16 v1, v23

    move/from16 v2, v24

    move v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    aput-object v6, v14, v13

    .line 116
    aget v6, v9, v21

    add-float v23, v23, v6

    .line 117
    const/high16 v6, 0x3f80

    add-float v23, v23, v6

    .line 110
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0
.end method

.method public buildText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Lorg/tf/gl/sprite/SpriteRegion;
    .locals 13
    .parameter "gl"
    .parameter "text"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/high16 v11, 0x3f80

    .line 157
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v9, paint:Landroid/graphics/Paint;
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_size:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_typeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 163
    .local v8, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v5, v0, v3

    .line 164
    .local v5, fontHeight:F
    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 166
    .local v4, textWidth:F
    add-float/2addr v5, v11

    .line 167
    add-float/2addr v4, v11

    .line 172
    invoke-static {v4}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v0

    invoke-static {v0}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v0

    .line 173
    invoke-static {v5}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v3

    invoke-static {v3}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v3

    .line 174
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 171
    invoke-static {v0, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 175
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_backgroundColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 176
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v7, canvas:Landroid/graphics/Canvas;
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v11

    .line 179
    invoke-virtual {v7, p2, v11, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    :cond_0
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_color:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    invoke-virtual {v7, p2, v2, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    invoke-direct {v1, p1, v6, v12}, Lorg/tf/gl/sprite/Sprite;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V

    .line 189
    .local v1, sprite:Lorg/tf/gl/sprite/Sprite;
    new-instance v0, Lorg/tf/gl/sprite/SpriteRegion;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/tf/gl/sprite/SpriteRegion;-><init>(Lorg/tf/gl/sprite/Sprite;FFFF)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_typeface:Landroid/graphics/Typeface;

    .line 39
    const/high16 v0, 0x4180

    iput v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_size:F

    .line 40
    const/high16 v0, -0x100

    iput v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_color:I

    .line 41
    iput v1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_backgroundColor:I

    .line 42
    iput v1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    .line 43
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteFontBuilder;->resetCharacters()V

    .line 44
    return-void
.end method

.method public resetCharacters()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_characters:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 70
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 61
    iput p1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_backgroundColor:I

    .line 62
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 57
    iput p1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_color:I

    .line 58
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 65
    iput p1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_shadowColor:I

    .line 66
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 53
    iput p1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_size:F

    .line 54
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeface"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lorg/tf/gl/sprite/SpriteFontBuilder;->m_typeface:Landroid/graphics/Typeface;

    .line 50
    :cond_0
    return-void
.end method
