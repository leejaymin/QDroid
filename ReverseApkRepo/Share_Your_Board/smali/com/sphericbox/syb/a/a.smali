.class public Lcom/sphericbox/syb/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/a/h;


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sphericbox/syb/a/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method public static a(II)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0xffffff

    const/16 v6, 0xff

    .line 56
    const/high16 v0, 0x100

    if-ne p0, v0, :cond_0

    move v0, v7

    .line 75
    :goto_0
    return v0

    .line 60
    :cond_0
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 61
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 62
    and-int/lit16 v2, p0, 0xff

    .line 64
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 65
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 66
    and-int/lit16 v5, p1, 0xff

    .line 69
    if-eqz v3, :cond_1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    :goto_1
    if-eqz v4, :cond_2

    mul-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 71
    :goto_2
    if-eqz v5, :cond_3

    mul-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    :goto_3
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    .line 75
    const/16 v4, 0x2d0

    sub-int v0, v4, v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v6

    .line 69
    goto :goto_1

    :cond_2
    move v1, v6

    .line 70
    goto :goto_2

    :cond_3
    move v2, v6

    .line 71
    goto :goto_3

    :cond_4
    move v0, v7

    .line 75
    goto :goto_0
.end method

.method public static a(Lcom/sphericbox/syb/a/s;IIII)I
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    div-int/lit8 v0, p4, 0x2

    sub-int v0, p2, v0

    div-int v0, v0, p4

    .line 87
    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    div-int/2addr v1, p3

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/sphericbox/syb/a/s;->f(II)I

    move-result v2

    .line 92
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/sphericbox/syb/a/s;->f(II)I

    move-result v3

    .line 93
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sphericbox/syb/a/s;->f(II)I

    move-result v4

    .line 94
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sphericbox/syb/a/s;->f(II)I

    move-result p0

    .line 97
    const/4 v0, 0x0

    .line 98
    div-int/lit8 v1, p3, 0x2

    sub-int/2addr p1, v1

    rem-int/2addr p1, p3

    .line 99
    div-int/lit8 v1, p4, 0x2

    sub-int/2addr p2, v1

    rem-int p2, p2, p4

    .line 100
    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_0
    sget-object v5, Lcom/sphericbox/syb/a/a;->b:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 101
    sget-object v5, Lcom/sphericbox/syb/a/a;->b:[I

    aget v5, v5, v0

    .line 102
    ushr-int v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    .line 103
    ushr-int v7, v3, v5

    and-int/lit16 v7, v7, 0xff

    .line 104
    ushr-int v8, v4, v5

    and-int/lit16 v8, v8, 0xff

    .line 105
    ushr-int v9, p0, v5

    and-int/lit16 v9, v9, 0xff

    .line 107
    mul-int/2addr v7, p1

    sub-int v10, p3, p1

    mul-int/2addr v6, v10

    add-int/2addr v6, v7

    sub-int v7, p4, p2

    mul-int/2addr v6, v7

    mul-int v7, p1, v9

    sub-int v9, p3, p1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    mul-int/2addr v7, p2

    add-int/2addr v6, v7

    .line 109
    div-int/2addr v6, p3

    div-int v6, v6, p4

    .line 110
    shl-int v5, v6, v5

    or-int/2addr v1, v5

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return v1
.end method

.method private static a([IIIIIII[I[I[I[I)I
    .locals 19
    .parameter
    .parameter
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
    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    move v10, v7

    move v7, v8

    :goto_0
    move v0, v7

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 156
    add-int v8, p6, v7

    .line 157
    move v0, v8

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    .line 159
    mul-int v8, v8, p1

    add-int v8, v8, p5

    .line 160
    const/4 v9, 0x0

    move v11, v10

    move/from16 v10, p5

    move/from16 v17, v8

    move v8, v9

    move/from16 v9, v17

    :goto_1
    move v0, v8

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 161
    move v0, v10

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 162
    aget v12, p0, v9

    const/high16 v13, 0x100

    if-eq v12, v13, :cond_1

    aget v12, p0, v9

    .line 163
    :goto_2
    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    .line 164
    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    .line 165
    and-int/lit16 v12, v12, 0xff

    .line 166
    mul-int/lit16 v15, v13, 0x12b

    move v0, v14

    mul-int/lit16 v0, v0, 0x24b

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/lit8 v16, v12, 0x72

    add-int v15, v15, v16

    div-int/lit16 v15, v15, 0x3e8

    .line 168
    aput v15, p7, v11

    .line 169
    aput v13, p8, v11

    .line 170
    aput v14, p9, v11

    .line 171
    aput v12, p10, v11

    .line 172
    add-int/lit8 v11, v11, 0x1

    .line 160
    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 162
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    move v8, v11

    .line 155
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v10, v8

    goto :goto_0

    .line 179
    :cond_3
    mul-int/lit8 p0, v10, 0x19

    div-int/lit8 v9, p0, 0x64

    .line 181
    const/4 v7, 0x0

    const/16 p0, 0x1

    sub-int v8, v10, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/j;->a([I[I[I[IIII)V

    .line 184
    const/16 p0, 0x0

    const/16 p1, 0x0

    const/16 p2, 0x0

    .line 186
    sub-int p3, v10, v9

    move/from16 v17, p3

    move/from16 p3, p0

    move/from16 p0, v17

    move/from16 v18, p1

    move/from16 p1, p2

    move/from16 p2, v18

    :goto_4
    move/from16 v0, p0

    move v1, v10

    if-ge v0, v1, :cond_4

    .line 187
    aget p4, p8, p0

    add-int p3, p3, p4

    .line 188
    aget p4, p9, p0

    add-int p2, p2, p4

    .line 189
    aget p4, p10, p0

    add-int p1, p1, p4

    .line 186
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 192
    :cond_4
    const/16 p0, 0x0

    .line 193
    if-lez p3, :cond_5

    if-lez p2, :cond_5

    if-lez p1, :cond_5

    if-lez v9, :cond_5

    .line 194
    div-int p0, p3, v9

    .line 195
    div-int p2, p2, v9

    .line 196
    div-int p1, p1, v9

    .line 197
    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p2, p2, 0x8

    or-int p0, p0, p2

    or-int p0, p0, p1

    .line 200
    :cond_5
    return p0

    :cond_6
    move v8, v10

    goto :goto_3
.end method

.method public static a([IIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)Lcom/sphericbox/syb/a/s;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    div-int/lit8 v8, p2, 0x1e

    .line 118
    div-int/lit8 v7, p1, 0x1e

    .line 120
    div-int v4, p1, v7

    add-int/lit8 v15, v4, 0x1

    .line 121
    div-int v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    .line 122
    new-instance v16, Lcom/sphericbox/syb/a/s;

    move-object/from16 v0, v16

    move v1, v15

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/sphericbox/syb/a/s;-><init>(II)V

    .line 124
    mul-int v4, v7, v8

    new-array v11, v4, [I

    .line 125
    array-length v4, v11

    new-array v12, v4, [I

    .line 126
    array-length v4, v11

    new-array v13, v4, [I

    .line 127
    array-length v4, v11

    new-array v14, v4, [I

    .line 129
    const/4 v4, 0x0

    move v10, v4

    :goto_0
    move v0, v10

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 130
    const/4 v4, 0x0

    move v9, v4

    :goto_1
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 131
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sphericbox/syb/a/s;->aX:[I

    move-object/from16 v17, v0

    div-int v4, v9, v7

    mul-int v5, v15, v10

    div-int/2addr v5, v8

    add-int v18, v4, v5

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v4 .. v14}, Lcom/sphericbox/syb/a/a;->a([IIIIIII[I[I[I[I)I

    move-result v4

    aput v4, v17, v18

    .line 132
    const/4 v4, 0x0

    invoke-static {v11, v4}, Ljava/util/Arrays;->fill([II)V

    .line 133
    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/util/Arrays;->fill([II)V

    .line 134
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    .line 135
    const/4 v4, 0x0

    invoke-static {v14, v4}, Ljava/util/Arrays;->fill([II)V

    .line 130
    add-int v4, v9, v7

    move v9, v4

    goto :goto_1

    .line 138
    :cond_0
    const v4, 0x7f08001c

    mul-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p3

    move v1, v4

    move v2, v10

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    new-instance p0, Lcom/sphericbox/syb/a/f;

    invoke-direct/range {p0 .. p0}, Lcom/sphericbox/syb/a/f;-><init>()V

    throw p0

    .line 129
    :cond_1
    add-int v4, v10, v8

    move v10, v4

    goto :goto_0

    .line 143
    :cond_2
    return-object v16
.end method

.method private a([I[IIILcom/sphericbox/syb/a/s;Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 38
    iget v0, p5, Lcom/sphericbox/syb/a/s;->width:I

    sub-int/2addr v0, v2

    div-int v0, p3, v0

    .line 39
    iget v1, p5, Lcom/sphericbox/syb/a/s;->height:I

    sub-int/2addr v1, v2

    div-int v1, p4, v1

    move v2, v7

    move v3, v7

    .line 42
    :goto_0
    if-ge v2, p4, :cond_2

    move v4, v3

    move v3, v7

    .line 43
    :goto_1
    if-ge v3, p3, :cond_0

    .line 45
    aget v5, p1, v4

    invoke-static {p5, v3, v2, v0, v1}, Lcom/sphericbox/syb/a/a;->a(Lcom/sphericbox/syb/a/s;IIII)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sphericbox/syb/a/a;->a(II)I

    move-result v5

    aput v5, p2, v4

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_0
    rem-int/lit8 v3, v2, 0x14

    if-nez v3, :cond_1

    const v3, 0x7f08001c

    add-int v5, v2, p4

    mul-int/lit8 v6, p4, 0x2

    invoke-interface {p6, v3, v5, v6}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    new-instance v0, Lcom/sphericbox/syb/a/f;

    invoke-direct {v0}, Lcom/sphericbox/syb/a/f;-><init>()V

    throw v0

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 24
    iget v3, p4, Lcom/sphericbox/syb/a/l;->width:I

    .line 25
    iget v4, p4, Lcom/sphericbox/syb/a/l;->height:I

    .line 26
    invoke-static {p2, v3, v4, p1}, Lcom/sphericbox/syb/a/a;->a([IIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)Lcom/sphericbox/syb/a/s;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v6, p1

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/sphericbox/syb/a/a;->a([I[IIILcom/sphericbox/syb/a/s;Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 28
    array-length v0, p3

    invoke-static {p3, v7, p2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    return-void
.end method
