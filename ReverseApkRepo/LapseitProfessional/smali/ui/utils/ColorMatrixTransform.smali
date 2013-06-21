.class public Lui/utils/ColorMatrixTransform;
.super Ljava/lang/Object;
.source "ColorMatrixTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static adjustBrightness(F)[F
    .locals 4
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 90
    const/16 v1, 0x14

    new-array v0, v1, [F

    const/4 v1, 0x0

    .line 91
    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    .line 92
    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p0, v0, v1

    const/16 v1, 0xa

    .line 93
    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p0, v0, v1

    const/16 v1, 0xf

    .line 94
    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    .line 96
    .local v0, transformMatrix:[F
    return-object v0
.end method

.method public static adjustSaturation(D)[F
    .locals 14
    .parameter "value"

    .prologue
    .line 101
    const-wide/high16 v10, 0x3ff0

    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-lez v8, :cond_0

    const-wide/high16 v8, 0x4008

    mul-double/2addr v8, p0

    const-wide/high16 v12, 0x4059

    div-double/2addr v8, v12

    :goto_0
    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 102
    .local v7, x:I
    const-wide v4, 0x3fd3c01a36e2eb1cL

    .line 103
    .local v4, lumR:D
    const-wide v2, 0x3fe380346dc5d639L

    .line 104
    .local v2, lumG:D
    const-wide v0, 0x3fb4fdf3b645a1cbL

    .line 106
    .local v0, lumB:D
    const/16 v8, 0x14

    new-array v6, v8, [F

    const/4 v8, 0x0

    .line 107
    double-to-float v9, v4

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x1

    double-to-float v9, v2

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x2

    double-to-float v9, v0

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v8, 0x5

    .line 108
    double-to-float v9, v4

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x6

    double-to-float v9, v2

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x7

    double-to-float v9, v0

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/16 v8, 0x8

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0x9

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0xa

    .line 109
    double-to-float v9, v4

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/16 v8, 0xb

    double-to-float v9, v2

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    aput v9, v6, v8

    const/16 v8, 0xc

    double-to-float v9, v0

    rsub-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v7

    add-float/2addr v9, v10

    aput v9, v6, v8

    const/16 v8, 0xd

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0xe

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0xf

    .line 110
    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0x10

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0x11

    const/4 v9, 0x0

    aput v9, v6, v8

    const/16 v8, 0x12

    const/high16 v9, 0x3f80

    aput v9, v6, v8

    const/16 v8, 0x13

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 112
    .local v6, transformMatrix:[F
    return-object v6

    .line 101
    .end local v0           #lumB:D
    .end local v2           #lumG:D
    .end local v4           #lumR:D
    .end local v6           #transformMatrix:[F
    .end local v7           #x:I
    :cond_0
    const-wide/high16 v8, 0x4059

    div-double v8, p0, v8

    goto/16 :goto_0
.end method

.method public static blur()[F
    .locals 2

    .prologue
    .line 35
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 49
    .local v0, matrix:[F
    return-object v0

    .line 35
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static desature()[F
    .locals 2

    .prologue
    .line 71
    const/16 v1, 0x19

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 76
    .local v0, transformMatrix:[F
    return-object v0

    .line 71
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static invertColours()[F
    .locals 2

    .prologue
    .line 80
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 86
    .local v0, transformMatrix:[F
    return-object v0

    .line 80
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static reset()[F
    .locals 2

    .prologue
    .line 14
    const/16 v1, 0x19

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 19
    .local v0, transformMatrix:[F
    return-object v0

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static sephia()[F
    .locals 2

    .prologue
    .line 53
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 67
    .local v0, matrix:[F
    return-object v0

    .line 53
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static setContrast(F)[F
    .locals 7
    .parameter "contrast"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 116
    add-float v0, p0, v6

    .line 117
    .local v0, scale:F
    const/high16 v3, -0x4100

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float v2, v3, v4

    .line 118
    .local v2, translate:F
    const/16 v3, 0x14

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v3, 0x1

    aput v5, v1, v3

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v3, 0x3

    aput v5, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    .line 119
    aput v5, v1, v3

    const/4 v3, 0x6

    aput v0, v1, v3

    const/4 v3, 0x7

    aput v5, v1, v3

    const/16 v3, 0x8

    aput v5, v1, v3

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v3, 0xa

    .line 120
    aput v5, v1, v3

    const/16 v3, 0xb

    aput v5, v1, v3

    const/16 v3, 0xc

    aput v0, v1, v3

    const/16 v3, 0xd

    aput v5, v1, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v3, 0xf

    .line 121
    aput v5, v1, v3

    const/16 v3, 0x10

    aput v5, v1, v3

    const/16 v3, 0x11

    aput v5, v1, v3

    const/16 v3, 0x12

    aput v6, v1, v3

    const/16 v3, 0x13

    aput v5, v1, v3

    .line 122
    .local v1, transformMatrix:[F
    return-object v1
.end method

.method public static setContrastScaleOnly(F)[F
    .locals 5
    .parameter "contrast"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 138
    add-float v0, p0, v4

    .line 141
    .local v0, scale:F
    const/16 v2, 0x14

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    .line 142
    aput v3, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    .line 143
    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v3, v1, v2

    const/16 v2, 0xf

    .line 144
    aput v3, v1, v2

    const/16 v2, 0x10

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v3, v1, v2

    const/16 v2, 0x12

    aput v4, v1, v2

    const/16 v2, 0x13

    aput v3, v1, v2

    .line 146
    .local v1, transformMatrix:[F
    return-object v1
.end method

.method public static setContrastTranslateOnly(F)[F
    .locals 7
    .parameter "contrast"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 126
    add-float v0, p0, v6

    .line 127
    .local v0, scale:F
    const/high16 v3, -0x4100

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    const/high16 v4, 0x437f

    mul-float v2, v3, v4

    .line 129
    .local v2, translate:F
    const/16 v3, 0x14

    new-array v1, v3, [F

    const/4 v3, 0x0

    aput v6, v1, v3

    const/4 v3, 0x1

    aput v5, v1, v3

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v3, 0x3

    aput v5, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    .line 130
    aput v5, v1, v3

    const/4 v3, 0x6

    aput v6, v1, v3

    const/4 v3, 0x7

    aput v5, v1, v3

    const/16 v3, 0x8

    aput v5, v1, v3

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v3, 0xa

    .line 131
    aput v5, v1, v3

    const/16 v3, 0xb

    aput v5, v1, v3

    const/16 v3, 0xc

    aput v6, v1, v3

    const/16 v3, 0xd

    aput v5, v1, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v3, 0xf

    .line 132
    aput v5, v1, v3

    const/16 v3, 0x10

    aput v5, v1, v3

    const/16 v3, 0x11

    aput v5, v1, v3

    const/16 v3, 0x12

    aput v6, v1, v3

    const/16 v3, 0x13

    aput v5, v1, v3

    .line 134
    .local v1, transformMatrix:[F
    return-object v1
.end method

.method public static vintage()[F
    .locals 2

    .prologue
    .line 24
    const/16 v1, 0x19

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 31
    .local v0, blurMatrix:[F
    return-object v0

    .line 24
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0x40t 0x40t
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
        0xf8t 0x53t 0xe3t 0x3dt
        0x0t 0x0t 0xa0t 0x40t
        0xf8t 0x53t 0xe3t 0x3dt
    .end array-data
.end method
