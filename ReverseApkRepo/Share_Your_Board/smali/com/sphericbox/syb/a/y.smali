.class public final Lcom/sphericbox/syb/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bA:Ljava/util/ArrayList;

.field private final bB:[I

.field private final bx:Ljava/util/ArrayList;

.field private final by:Ljava/util/ArrayList;

.field private final bz:Ljava/util/ArrayList;

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>([ILcom/sphericbox/syb/a/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/y;->bx:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/y;->by:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/y;->bz:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/y;->bA:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    .line 27
    iget v0, p2, Lcom/sphericbox/syb/a/l;->width:I

    iput v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    .line 28
    iget v0, p2, Lcom/sphericbox/syb/a/l;->height:I

    iput v0, p0, Lcom/sphericbox/syb/a/y;->height:I

    .line 29
    return-void
.end method

.method private J()V
    .locals 12

    .prologue
    .line 53
    iget v0, p0, Lcom/sphericbox/syb/a/y;->height:I

    div-int/lit8 v8, v0, 0x2

    .line 54
    iget v0, p0, Lcom/sphericbox/syb/a/y;->height:I

    div-int/lit8 v9, v0, 0x10

    .line 64
    const/16 v0, 0xa

    move v10, v0

    :goto_0
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    if-ge v10, v0, :cond_4

    .line 65
    sub-int v0, v8, v9

    move v11, v0

    :goto_1
    if-ltz v11, :cond_0

    .line 66
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v1, 0x3

    sub-int v1, v0, v1

    .line 67
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v2, 0x2

    sub-int v2, v0, v2

    .line 68
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v3, 0x1

    sub-int v3, v0, v3

    .line 69
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int v4, v0, v10

    .line 70
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v5, v0, 0x1

    .line 71
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v6, v0, 0x2

    .line 72
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v7, v0, 0x3

    .line 74
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    invoke-static/range {v0 .. v7}, Lcom/sphericbox/syb/a/y;->a([IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const v0, 0x3c15182b

    const v1, 0x3ad844d0

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/sphericbox/syb/a/y;->a(IIFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bx:Ljava/util/ArrayList;

    new-instance v1, Lcom/sphericbox/syb/a/n;

    invoke-direct {v1, v10, v11}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int v0, v8, v9

    move v11, v0

    :goto_2
    iget v0, p0, Lcom/sphericbox/syb/a/y;->height:I

    if-ge v11, v0, :cond_1

    .line 83
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v1, 0x3

    sub-int v1, v0, v1

    .line 84
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v2, 0x2

    sub-int v2, v0, v2

    .line 85
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    const/4 v3, 0x1

    sub-int v3, v0, v3

    .line 86
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int v4, v0, v10

    .line 87
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v5, v0, 0x1

    .line 88
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v6, v0, 0x2

    .line 89
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v10

    add-int/lit8 v7, v0, 0x3

    .line 91
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    invoke-static/range {v0 .. v7}, Lcom/sphericbox/syb/a/y;->a([IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const v0, 0x3ad844d0

    const v1, 0x3c15182b

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/sphericbox/syb/a/y;->a(IIFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->by:Ljava/util/ArrayList;

    new-instance v1, Lcom/sphericbox/syb/a/n;

    invoke-direct {v1, v10, v11}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    add-int/lit8 v0, v10, 0x14

    move v10, v0

    goto/16 :goto_0

    .line 65
    :cond_2
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto/16 :goto_1

    .line 82
    :cond_3
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 99
    :cond_4
    return-void
.end method

.method private K()V
    .locals 12

    .prologue
    .line 102
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    div-int/lit8 v8, v0, 0x2

    .line 103
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    div-int/lit8 v9, v0, 0x10

    .line 113
    const/16 v0, 0xa

    move v10, v0

    :goto_0
    iget v0, p0, Lcom/sphericbox/syb/a/y;->height:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    if-ge v10, v0, :cond_4

    .line 114
    sub-int v0, v8, v9

    move v11, v0

    :goto_1
    if-ltz v11, :cond_0

    .line 115
    const/4 v0, 0x3

    sub-int v0, v10, v0

    iget v1, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v1

    add-int v1, v0, v11

    .line 116
    const/4 v0, 0x2

    sub-int v0, v10, v0

    iget v2, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v2

    add-int v2, v0, v11

    .line 117
    const/4 v0, 0x1

    sub-int v0, v10, v0

    iget v3, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v3

    add-int v3, v0, v11

    .line 118
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v10

    add-int v4, v0, v11

    .line 119
    add-int/lit8 v0, v10, 0x1

    iget v5, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v5

    add-int v5, v0, v11

    .line 120
    add-int/lit8 v0, v10, 0x2

    iget v6, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v6

    add-int v6, v0, v11

    .line 121
    add-int/lit8 v0, v10, 0x3

    iget v7, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v7

    add-int v7, v0, v11

    .line 123
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    invoke-static/range {v0 .. v7}, Lcom/sphericbox/syb/a/y;->a([IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const v0, 0x3c15182b

    const v1, 0x3ad844d0

    invoke-direct {p0, v11, v10, v0, v1}, Lcom/sphericbox/syb/a/y;->b(IIFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bz:Ljava/util/ArrayList;

    new-instance v1, Lcom/sphericbox/syb/a/n;

    invoke-direct {v1, v11, v10}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int v0, v8, v9

    move v11, v0

    :goto_2
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    if-ge v11, v0, :cond_1

    .line 132
    const/4 v0, 0x3

    sub-int v0, v10, v0

    iget v1, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v1

    add-int v1, v0, v11

    .line 133
    const/4 v0, 0x2

    sub-int v0, v10, v0

    iget v2, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v2

    add-int v2, v0, v11

    .line 134
    const/4 v0, 0x1

    sub-int v0, v10, v0

    iget v3, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v3

    add-int v3, v0, v11

    .line 135
    iget v0, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v10

    add-int v4, v0, v11

    .line 136
    add-int/lit8 v0, v10, 0x1

    iget v5, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v5

    add-int v5, v0, v11

    .line 137
    add-int/lit8 v0, v10, 0x2

    iget v6, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v6

    add-int v6, v0, v11

    .line 138
    add-int/lit8 v0, v10, 0x3

    iget v7, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v0, v7

    add-int v7, v0, v11

    .line 140
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    invoke-static/range {v0 .. v7}, Lcom/sphericbox/syb/a/y;->a([IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const v0, 0x3ad844d0

    const v1, 0x3c15182b

    invoke-direct {p0, v11, v10, v0, v1}, Lcom/sphericbox/syb/a/y;->b(IIFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bA:Ljava/util/ArrayList;

    new-instance v1, Lcom/sphericbox/syb/a/n;

    invoke-direct {v1, v11, v10}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    add-int/lit8 v0, v10, 0x14

    move v10, v0

    goto/16 :goto_0

    .line 114
    :cond_2
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto/16 :goto_1

    .line 131
    :cond_3
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 148
    :cond_4
    return-void
.end method

.method private a(IIFF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    const/16 v0, 0x14

    sub-int v0, p1, v0

    .line 188
    int-to-float v1, p2

    iget v2, p0, Lcom/sphericbox/syb/a/y;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v1

    .line 189
    add-int/lit8 v2, p1, 0x14

    .line 190
    int-to-float v3, p2

    iget v4, p0, Lcom/sphericbox/syb/a/y;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v3

    .line 191
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sphericbox/syb/a/y;->a(IIII)Z

    move-result v0

    return v0
.end method

.method private a(IIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 209
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    array-length v0, v0

    move v1, p1

    move v2, v7

    move v3, v7

    .line 212
    :goto_0
    if-gt v1, p3, :cond_2

    move v4, v3

    move v3, v2

    move v2, p2

    .line 213
    :goto_1
    if-gt v2, p4, :cond_1

    .line 214
    iget v5, p0, Lcom/sphericbox/syb/a/y;->width:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 215
    if-ltz v5, :cond_0

    if-ge v5, v0, :cond_0

    .line 216
    iget-object v6, p0, Lcom/sphericbox/syb/a/y;->bB:[I

    aget v5, v6, v5

    const/high16 v6, -0x100

    if-ne v5, v6, :cond_0

    .line 217
    add-int/lit8 v3, v3, 0x1

    .line 220
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v4

    goto :goto_0

    .line 225
    :cond_2
    int-to-float v0, v2

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    move v0, v7

    goto :goto_2
.end method

.method private static a([IIIIIIII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x100

    .line 158
    .line 159
    aget v0, p0, p1

    if-ne v0, v2, :cond_7

    .line 160
    add-int/lit8 v0, v3, 0x1

    .line 162
    :goto_0
    aget v1, p0, p2

    if-ne v1, v2, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_0
    aget v1, p0, p3

    if-ne v1, v2, :cond_1

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 168
    :cond_1
    aget v1, p0, p4

    if-ne v1, v2, :cond_2

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_2
    aget v1, p0, p5

    if-ne v1, v2, :cond_3

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 174
    :cond_3
    aget v1, p0, p6

    if-ne v1, v2, :cond_4

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_4
    aget v1, p0, p7

    if-ne v1, v2, :cond_5

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 180
    :cond_5
    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method private b(IIFF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    int-to-float v0, p1

    iget v1, p0, Lcom/sphericbox/syb/a/y;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v0

    .line 199
    const/16 v1, 0x14

    sub-int v1, p2, v1

    .line 200
    int-to-float v2, p1

    iget v3, p0, Lcom/sphericbox/syb/a/y;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v2

    .line 201
    add-int/lit8 v3, p2, 0x14

    .line 202
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sphericbox/syb/a/y;->a(IIII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public E()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->by:Ljava/util/ArrayList;

    return-object v0
.end method

.method public F()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bz:Ljava/util/ArrayList;

    return-object v0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bA:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sphericbox/syb/a/y;->bx:Ljava/util/ArrayList;

    return-object v0
.end method

.method public I()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sphericbox/syb/a/y;->J()V

    .line 49
    invoke-direct {p0}, Lcom/sphericbox/syb/a/y;->K()V

    .line 50
    return-void
.end method
