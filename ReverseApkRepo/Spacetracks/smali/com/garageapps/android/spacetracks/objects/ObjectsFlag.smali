.class public Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;
.super Ljava/lang/Object;
.source "ObjectsFlag.java"


# instance fields
.field final COLOR_ADD:F

.field final SIZE:F

.field private angle:F

.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private height:I

.field private sineBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->SIZE:F

    .line 21
    const v0, 0x3f19999a

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->COLOR_ADD:F

    .line 32
    iput p1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    .line 33
    iput p2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->height:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->angle:F

    .line 35
    iget v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 36
    iget v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    .line 37
    iget v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 38
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->update(F)V

    .line 39
    return-void
.end method

.method private update(F)V
    .locals 14
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const v11, 0x3f19999a

    const/high16 v10, 0x4000

    .line 91
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 100
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    iget v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    if-lt v3, v5, :cond_2

    .line 143
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    return-void

    .line 92
    .end local v3           #x:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #x:I
    :goto_2
    iget v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    if-lt v3, v5, :cond_1

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_1
    int-to-float v5, v3

    div-float/2addr v5, v10

    const/high16 v6, 0x4220

    mul-float/2addr v5, v6

    const/high16 v6, 0x43b4

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54524550L

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->angle:F

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 94
    .local v1, inc:F
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    int-to-float v6, v3

    const v7, 0x3ecccccd

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 95
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    int-to-float v6, v4

    const v7, 0x3ecccccd

    mul-float/2addr v6, v7

    sub-float v6, v9, v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 96
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    .end local v1           #inc:F
    :cond_2
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 103
    .local v2, sine:F
    div-float v5, v2, v10

    add-float/2addr v5, v11

    mul-float v0, v5, p1

    .line 104
    .local v0, color:F
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x0

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 105
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 106
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 109
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 110
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 113
    div-float v5, v2, v10

    add-float/2addr v5, v11

    mul-float v0, v5, p1

    .line 114
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 115
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x4

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 116
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 117
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 118
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x7

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 122
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 123
    div-float v5, v2, v10

    add-float/2addr v5, v11

    mul-float v0, v5, p1

    .line 124
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 127
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x9

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 130
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xb

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 133
    div-float v5, v2, v10

    add-float/2addr v5, v11

    mul-float v0, v5, p1

    .line 134
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0x9

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0xa

    iget-object v7, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->sineBuffer:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    mul-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0xc

    add-int/lit8 v6, v6, 0xb

    invoke-virtual {v5, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xc

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 138
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xd

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 139
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xe

    invoke-virtual {v5, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 11
    .parameter "gl"
    .parameter "c"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const v7, 0x8076

    const/4 v6, 0x0

    .line 45
    iget v3, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->angle:F

    const v4, 0x3dcccccd

    add-float/2addr v3, v4

    iput v3, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->angle:F

    .line 46
    invoke-direct {p0, p2}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->update(F)V

    .line 48
    const/4 v3, 0x3

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 49
    const v3, 0x8074

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 50
    const/16 v3, 0x1406

    iget-object v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v3, v9, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 51
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 53
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->height:I

    if-lt v2, v3, :cond_0

    .line 83
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 84
    return-void

    .line 55
    :cond_0
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, c1:F
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v3, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->width:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_2

    .line 81
    const v3, -0x41333333

    invoke-interface {p1, v6, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0           #c1:F
    .end local v1           #i:I
    :cond_1
    const/high16 v0, 0x3f80

    .restart local v0       #c1:F
    goto :goto_1

    .line 61
    .restart local v1       #i:I
    :cond_2
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_4

    .line 62
    cmpl-float v3, v0, v6

    if-nez v3, :cond_3

    .line 63
    invoke-interface {p1, v6, v6, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 64
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 79
    :goto_3
    const/4 v3, 0x5

    mul-int/lit8 v4, v1, 0x4

    invoke-interface {p1, v3, v4, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :cond_3
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_3

    .line 71
    :cond_4
    cmpl-float v3, v0, v8

    if-nez v3, :cond_5

    .line 72
    invoke-interface {p1, v6, v6, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 73
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_3

    .line 76
    :cond_5
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_3
.end method
