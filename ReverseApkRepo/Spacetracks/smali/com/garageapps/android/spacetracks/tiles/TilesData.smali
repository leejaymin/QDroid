.class public Lcom/garageapps/android/spacetracks/tiles/TilesData;
.super Ljava/lang/Object;
.source "TilesData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public add_color(Ljava/nio/FloatBuffer;IF)V
    .locals 6
    .parameter "c"
    .parameter "color"
    .parameter "div"

    .prologue
    .line 98
    const/high16 v4, 0x3f80

    .line 99
    .local v4, r:F
    const/high16 v2, 0x3f80

    .line 100
    .local v2, g:F
    const/high16 v1, 0x3f80

    .line 101
    .local v1, b:F
    const/high16 v0, 0x3f80

    .line 103
    .local v0, a:F
    packed-switch p2, :pswitch_data_0

    .line 107
    const/high16 v4, 0x3f80

    .line 108
    const/high16 v2, 0x3f80

    .line 109
    const/high16 v1, 0x3f80

    .line 110
    const/high16 v0, 0x3f80

    .line 126
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    .line 133
    return-void

    .line 113
    .end local v3           #i:I
    :pswitch_0
    const/4 v4, 0x0

    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    const v4, 0x3eb4b4b5

    .line 120
    const v2, 0x3f169697

    .line 121
    const v1, 0x3f34b4b5

    .line 122
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 128
    .restart local v3       #i:I
    :cond_0
    div-float v5, v4, p3

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 129
    div-float v5, v2, p3

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 130
    div-float v5, v1, p3

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 131
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public add_texture(Ljava/nio/FloatBuffer;I)V
    .locals 10
    .parameter "t"
    .parameter "tex"

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x20

    const/16 v7, 0x10

    const/high16 v6, 0x3e80

    const v5, 0x3a83126f

    .line 19
    const/high16 v1, 0x3e80

    .line 20
    .local v1, size:F
    const v0, 0x3a83126f

    .line 24
    .local v0, inc:F
    if-lt p2, v9, :cond_1

    const/16 v4, 0x40

    if-ge p2, v4, :cond_1

    .line 25
    add-int/lit8 p2, p2, -0x30

    .line 26
    rem-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v2, v4, v6

    .line 27
    .local v2, xoff:F
    div-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v3, v4, v6

    .line 29
    .local v3, yoff:F
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 30
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 32
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 33
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 35
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 36
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 38
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 39
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 94
    .end local v2           #xoff:F
    .end local v3           #yoff:F
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    if-lt p2, v8, :cond_2

    if-ge p2, v9, :cond_2

    .line 43
    add-int/lit8 p2, p2, -0x20

    .line 44
    rem-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v2, v4, v6

    .line 45
    .restart local v2       #xoff:F
    div-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v3, v4, v6

    .line 47
    .restart local v3       #yoff:F
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 48
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 60
    .end local v2           #xoff:F
    .end local v3           #yoff:F
    :cond_2
    if-lt p2, v7, :cond_3

    if-ge p2, v8, :cond_3

    .line 61
    add-int/lit8 p2, p2, -0x10

    .line 62
    rem-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v2, v4, v6

    .line 63
    .restart local v2       #xoff:F
    div-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v3, v4, v6

    .line 65
    .restart local v3       #yoff:F
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 66
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 68
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 69
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 71
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 72
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 78
    .end local v2           #xoff:F
    .end local v3           #yoff:F
    :cond_3
    if-ltz p2, :cond_0

    if-ge p2, v7, :cond_0

    .line 79
    rem-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v2, v4, v6

    .line 80
    .restart local v2       #xoff:F
    div-int/lit8 v4, p2, 0x4

    int-to-float v4, v4

    mul-float v3, v4, v6

    .line 82
    .restart local v3       #yoff:F
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 83
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 85
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 86
    add-float v4, v3, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 88
    add-float v4, v2, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 89
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 91
    add-float v4, v2, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 92
    add-float v4, v3, v6

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method public square(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 1
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 137
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 138
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 139
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 141
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 142
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 143
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 145
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 146
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 147
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 149
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 150
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 151
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 153
    const/4 v0, 0x4

    return v0
.end method

.method public square_bottom(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 2
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 158
    const/high16 v1, 0x4000

    div-float v0, p2, v1

    .line 160
    .local v0, th:F
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 161
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 162
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 164
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 166
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 168
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 170
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 176
    const/4 v1, 0x4

    return v1
.end method

.method public square_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 2
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 181
    const/high16 v1, 0x4000

    div-float v0, p2, v1

    .line 183
    .local v0, th:F
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 184
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 185
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 187
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 188
    sub-float v1, p4, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 189
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 191
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 192
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 193
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 195
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 196
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 197
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 199
    const/4 v1, 0x4

    return v1
.end method

.method public square_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 2
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 204
    const/high16 v1, 0x4000

    div-float v0, p2, v1

    .line 206
    .local v0, th:F
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 208
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 210
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 211
    sub-float v1, p4, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 212
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 214
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 215
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 216
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 218
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 219
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 220
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 222
    const/4 v1, 0x4

    return v1
.end method

.method public triangle_ne(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 1
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 271
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 272
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 273
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 275
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 276
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 277
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 279
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 280
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 281
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 283
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 284
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 285
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 287
    const/4 v0, 0x4

    return v0
.end method

.method public triangle_ne_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 2
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 292
    const/high16 v1, 0x4000

    div-float v0, p2, v1

    .line 294
    .local v0, th:F
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 295
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 296
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 298
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 299
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 300
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 302
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 303
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 304
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 306
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 307
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 308
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 310
    const/4 v1, 0x4

    return v1
.end method

.method public triangle_nw(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 1
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 227
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 228
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 229
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 231
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 232
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 233
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 235
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 236
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 237
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 239
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 240
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 241
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 243
    const/4 v0, 0x4

    return v0
.end method

.method public triangle_nw_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 2
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 248
    const/high16 v1, 0x4000

    div-float v0, p2, v1

    .line 250
    .local v0, th:F
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 251
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 252
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 254
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 255
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 256
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 258
    neg-float v1, p2

    add-float/2addr v1, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 259
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 260
    add-float v1, p2, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 262
    add-float v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 263
    sub-float v1, p5, v0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 264
    neg-float v1, p2

    add-float/2addr v1, p6

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 266
    const/4 v1, 0x4

    return v1
.end method

.method public triangle_se(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 1
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 336
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 337
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 338
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 340
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 341
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 342
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 344
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 345
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 346
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 348
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 349
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 350
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 352
    const/4 v0, 0x4

    return v0
.end method

.method public triangle_sw(Ljava/nio/FloatBuffer;FFFFF)I
    .locals 1
    .parameter "v"
    .parameter "t"
    .parameter "x"
    .parameter "y1"
    .parameter "y2"
    .parameter "z"

    .prologue
    .line 315
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 316
    invoke-virtual {p1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 317
    neg-float v0, p2

    add-float/2addr v0, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 319
    add-float v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 320
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 321
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 323
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 324
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 325
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 327
    neg-float v0, p2

    add-float/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 328
    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 329
    add-float v0, p2, p6

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 331
    const/4 v0, 0x4

    return v0
.end method
