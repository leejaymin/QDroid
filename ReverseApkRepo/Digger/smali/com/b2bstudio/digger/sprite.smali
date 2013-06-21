.class public Lcom/b2bstudio/digger/sprite;
.super Ljava/lang/Object;
.source "sprite.java"


# instance fields
.field defsprorder:[I

.field dig:Lcom/b2bstudio/digger/main;

.field retrflag:Z

.field sprbhei:[I

.field sprbwid:[I

.field sprch:[I

.field sprenf:[Z

.field sprhei:[I

.field sprmov:[[S

.field sprnbhei:[I

.field sprnbwid:[I

.field sprnch:[I

.field sprnhei:[I

.field sprnwid:[I

.field sprorder:[I

.field sprrdrwf:[Z

.field sprrecf:[Z

.field sprwid:[I

.field sprx:[I

.field spry:[I


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 6
    .parameter "d"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0x11

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v3, p0, Lcom/b2bstudio/digger/sprite;->retrflag:Z

    .line 10
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    .line 11
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrecf:[Z

    .line 12
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    .line 14
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    .line 16
    new-array v0, v1, [[S

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    .line 18
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    .line 19
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    .line 20
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    .line 21
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    .line 22
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    .line 23
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnch:[I

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    .line 27
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbwid:[I

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbhei:[I

    .line 30
    new-array v0, v1, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->defsprorder:[I

    .line 31
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->defsprorder:[I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprorder:[I

    .line 34
    iput-object p1, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    .line 35
    return-void
.end method


# virtual methods
.method bcollide(II)Z
    .locals 5
    .parameter "bx"
    .parameter "si"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, p2

    if-lt v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    move v0, v4

    .line 51
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v1, v1, p1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    move v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v1, v1, p2

    if-lt v0, v1, :cond_3

    .line 45
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_2

    move v0, v3

    .line 46
    goto :goto_0

    :cond_2
    move v0, v4

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_4

    move v0, v3

    .line 50
    goto :goto_0

    :cond_4
    move v0, v4

    .line 51
    goto :goto_0
.end method

.method bcollides(I)I
    .locals 8
    .parameter "bx"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 54
    move v2, p1

    .local v2, si:I
    const/4 v0, 0x0

    .local v0, ax:I
    const/4 v1, 0x0

    .line 55
    .local v1, dx:I
    const/4 p1, 0x0

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_4

    if-eq p1, v2, :cond_4

    .line 58
    invoke-virtual {p0, p1, v2}, Lcom/b2bstudio/digger/sprite;->bcollide(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    shl-int v3, v6, v1

    or-int/2addr v0, v3

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v4, v3, p1

    add-int/lit16 v4, v4, 0x140

    aput v4, v3, p1

    .line 61
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v4, v3, p1

    sub-int/2addr v4, v7

    aput v4, v3, p1

    .line 62
    invoke-virtual {p0, p1, v2}, Lcom/b2bstudio/digger/sprite;->bcollide(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    shl-int v3, v6, v1

    or-int/2addr v0, v3

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v4, v3, p1

    const/16 v5, 0x280

    sub-int/2addr v4, v5

    aput v4, v3, p1

    .line 65
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v4, v3, p1

    add-int/lit8 v4, v4, 0x4

    aput v4, v3, p1

    .line 66
    invoke-virtual {p0, p1, v2}, Lcom/b2bstudio/digger/sprite;->bcollide(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    shl-int v3, v6, v1

    or-int/2addr v0, v3

    .line 68
    :cond_3
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v4, v3, p1

    add-int/lit16 v4, v4, 0x140

    aput v4, v3, p1

    .line 69
    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v4, v3, p1

    sub-int/2addr v4, v7

    aput v4, v3, p1

    .line 71
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 74
    return v0
.end method

.method clearrdrwf()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrecf()V

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 81
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearrecf()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 86
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrecf:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method collide(II)Z
    .locals 5
    .parameter "bx"
    .parameter "si"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, p2

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    move v0, v4

    .line 102
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v1, v1, p1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    move v0, v4

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v1, v1, p2

    if-lt v0, v1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_2

    move v0, v3

    .line 97
    goto :goto_0

    :cond_2
    move v0, v4

    .line 98
    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_4

    move v0, v3

    .line 101
    goto :goto_0

    :cond_4
    move v0, v4

    .line 102
    goto :goto_0
.end method

.method createspr(II[SIIII)V
    .locals 4
    .parameter "n"
    .parameter "ch"
    .parameter "mov"
    .parameter "wid"
    .parameter "hei"
    .parameter "bwid"
    .parameter "bhei"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnch:[I

    and-int/lit8 v1, p1, 0xf

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    and-int/lit8 v3, p1, 0xf

    aput p2, v2, v3

    aput p2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    and-int/lit8 v1, p1, 0xf

    aput-object p3, v0, v1

    .line 107
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    and-int/lit8 v1, p1, 0xf

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    and-int/lit8 v3, p1, 0xf

    aput p4, v2, v3

    aput p4, v0, v1

    .line 108
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    and-int/lit8 v1, p1, 0xf

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    and-int/lit8 v3, p1, 0xf

    aput p5, v2, v3

    aput p5, v0, v1

    .line 109
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbwid:[I

    and-int/lit8 v1, p1, 0xf

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    and-int/lit8 v3, p1, 0xf

    aput p6, v2, v3

    aput p6, v0, v1

    .line 110
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbhei:[I

    and-int/lit8 v1, p1, 0xf

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    and-int/lit8 v3, p1, 0xf

    aput p7, v2, v3

    aput p7, v0, v1

    .line 111
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    and-int/lit8 v1, p1, 0xf

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 112
    return-void
.end method

.method drawmiscspr(IIIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "ch"
    .parameter "wid"
    .parameter "hei"

    .prologue
    const/16 v6, 0x10

    .line 114
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    and-int/lit8 v1, p1, -0x4

    aput v1, v0, v6

    .line 115
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput p2, v0, v6

    .line 116
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    aput p3, v0, v6

    .line 117
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aput p4, v0, v6

    .line 118
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aput p5, v0, v6

    .line 119
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->gputim(IIIII)V

    .line 120
    return-void
.end method

.method drawspr(III)I
    .locals 11
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    and-int/lit8 v6, p1, 0xf

    .line 124
    .local v6, bx:I
    and-int/lit8 p2, p2, -0x4

    .line 125
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrdrwf()V

    .line 126
    invoke-virtual {p0, v6}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 127
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v7, v0, v6

    .line 128
    .local v7, t1:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v8, v0, v6

    .line 129
    .local v8, t2:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v9, v0, v6

    .line 130
    .local v9, t3:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v10, v0, v6

    .line 131
    .local v10, t4:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aput p2, v0, v6

    .line 132
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput p3, v0, v6

    .line 133
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 134
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 135
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrecf()V

    .line 136
    invoke-virtual {p0, v6}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 137
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aput v10, v0, v6

    .line 138
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aput v9, v0, v6

    .line 139
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput v8, v0, v6

    .line 140
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aput v7, v0, v6

    .line 141
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    .line 142
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putis()V

    .line 143
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aput p2, v0, v6

    .line 144
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput p3, v0, v6

    .line 145
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnch:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 146
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 147
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 148
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnbwid:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 149
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnbhei:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 150
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->ggeti(II[SII)V

    .line 151
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putims()V

    .line 152
    invoke-virtual {p0, v6}, Lcom/b2bstudio/digger/sprite;->bcollides(I)I

    move-result v0

    return v0
.end method

.method erasespr(I)V
    .locals 8
    .parameter "n"

    .prologue
    .line 155
    and-int/lit8 v7, p1, 0xf

    .line 156
    .local v7, bx:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v7

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/board;->gputi(II[SIIZ)V

    .line 157
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v7

    .line 158
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrdrwf()V

    .line 159
    invoke-virtual {p0, v7}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 160
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putims()V

    .line 161
    return-void
.end method

.method getis()V
    .locals 7

    .prologue
    .line 164
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v0, 0x10

    if-lt v6, v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putims()V

    .line 168
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->ggeti(II[SII)V

    .line 164
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method initmiscspr(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "wid"
    .parameter "hei"

    .prologue
    const/16 v1, 0x10

    .line 170
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aput p1, v0, v1

    .line 171
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput p2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aput p3, v0, v1

    .line 173
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aput p4, v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrdrwf()V

    .line 175
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 176
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putis()V

    .line 177
    return-void
.end method

.method initspr(IIIIII)V
    .locals 2
    .parameter "n"
    .parameter "ch"
    .parameter "wid"
    .parameter "hei"
    .parameter "bwid"
    .parameter "bhei"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnch:[I

    and-int/lit8 v1, p1, 0xf

    aput p2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    and-int/lit8 v1, p1, 0xf

    aput p3, v0, v1

    .line 181
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    and-int/lit8 v1, p1, 0xf

    aput p4, v0, v1

    .line 182
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbwid:[I

    and-int/lit8 v1, p1, 0xf

    aput p5, v0, v1

    .line 183
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprnbhei:[I

    and-int/lit8 v1, p1, 0xf

    aput p6, v0, v1

    .line 184
    return-void
.end method

.method movedrawspr(III)I
    .locals 8
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    .line 186
    and-int/lit8 v6, p1, 0xf

    .line 187
    .local v6, bx:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    and-int/lit8 v1, p2, -0x4

    aput v1, v0, v6

    .line 188
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aput p3, v0, v6

    .line 189
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnch:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 190
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnwid:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 191
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnhei:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 192
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbwid:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnbwid:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 193
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprbhei:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprnbhei:[I

    aget v1, v1, v6

    aput v1, v0, v6

    .line 194
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->clearrdrwf()V

    .line 195
    invoke-virtual {p0, v6}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 196
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putis()V

    .line 197
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->ggeti(II[SII)V

    .line 198
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    aput-boolean v7, v0, v6

    .line 199
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aput-boolean v7, v0, v6

    .line 200
    invoke-virtual {p0}, Lcom/b2bstudio/digger/sprite;->putims()V

    .line 201
    invoke-virtual {p0, v6}, Lcom/b2bstudio/digger/sprite;->bcollides(I)I

    move-result v0

    return v0
.end method

.method putims()V
    .locals 8

    .prologue
    .line 205
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v0, 0x10

    if-lt v6, v0, :cond_0

    .line 210
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprorder:[I

    aget v7, v0, v6

    .line 207
    .local v7, j:I
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprch:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->gputim(IIIII)V

    .line 205
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method putis()V
    .locals 7

    .prologue
    .line 213
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v0, 0x10

    if-lt v6, v0, :cond_0

    .line 216
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/b2bstudio/digger/sprite;->sprmov:[[S

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/b2bstudio/digger/sprite;->sprwid:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/b2bstudio/digger/sprite;->sprhei:[I

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/board;->gputi(II[SII)V

    .line 213
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method setrdrwflgs(I)V
    .locals 6
    .parameter "n"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 219
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrecf:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrecf:[Z

    aput-boolean v4, v1, p1

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 243
    .end local v0           #i:I
    :cond_0
    return-void

    .line 222
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprenf:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    if-eq v0, p1, :cond_5

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/b2bstudio/digger/sprite;->collide(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aput-boolean v4, v1, v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x140

    aput v2, v1, v0

    .line 228
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v1, v0

    sub-int/2addr v2, v5

    aput v2, v1, v0

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/b2bstudio/digger/sprite;->collide(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aput-boolean v4, v1, v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v1, v0

    const/16 v3, 0x280

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 234
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x4

    aput v2, v1, v0

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/b2bstudio/digger/sprite;->collide(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprrdrwf:[Z

    aput-boolean v4, v1, v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/sprite;->setrdrwflgs(I)V

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->sprx:[I

    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x140

    aput v2, v1, v0

    .line 240
    iget-object v1, p0, Lcom/b2bstudio/digger/sprite;->spry:[I

    aget v2, v1, v0

    sub-int/2addr v2, v5

    aput v2, v1, v0

    .line 221
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setretr(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/b2bstudio/digger/sprite;->retrflag:Z

    .line 246
    return-void
.end method

.method setsprorder([I)V
    .locals 1
    .parameter "newsprorder"

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/b2bstudio/digger/sprite;->defsprorder:[I

    iput-object v0, p0, Lcom/b2bstudio/digger/sprite;->sprorder:[I

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/b2bstudio/digger/sprite;->sprorder:[I

    goto :goto_0
.end method
