.class Lcom/b2bstudio/digger/board;
.super Ljava/lang/Object;
.source "board.java"


# instance fields
.field dig:Lcom/b2bstudio/digger/main;

.field height:I

.field pixels:[B

.field size:I

.field width:I


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x140

    iput v0, p0, Lcom/b2bstudio/digger/board;->width:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/b2bstudio/digger/board;->height:I

    iget v0, p0, Lcom/b2bstudio/digger/board;->width:I

    iget v1, p0, Lcom/b2bstudio/digger/board;->height:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/board;->size:I

    .line 13
    iput-object p1, p0, Lcom/b2bstudio/digger/board;->dig:Lcom/b2bstudio/digger/main;

    .line 14
    return-void
.end method


# virtual methods
.method gclear()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/b2bstudio/digger/board;->size:I

    if-lt v0, v1, :cond_0

    .line 19
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method gethrt()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getkips()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method ggeti(II[SII)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "p"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 28
    const/4 v4, 0x0

    .line 29
    .local v4, src:I
    iget v6, p0, Lcom/b2bstudio/digger/board;->width:I

    mul-int/2addr v6, p2

    const v7, 0xfffc

    and-int/2addr v7, p1

    add-int v1, v6, v7

    .line 31
    .local v1, dest:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p5, :cond_1

    .line 41
    :cond_0
    return-void

    .line 32
    :cond_1
    move v0, v1

    .line 33
    .local v0, d:I
    const/4 v3, 0x0

    .local v3, j:I
    move v5, v4

    .end local v4           #src:I
    .local v5, src:I
    :goto_1
    if-lt v3, p4, :cond_2

    .line 39
    iget v6, p0, Lcom/b2bstudio/digger/board;->width:I

    add-int/2addr v1, v6

    .line 31
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #src:I
    .restart local v4       #src:I
    goto :goto_0

    .line 34
    .end local v4           #src:I
    .restart local v5       #src:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #src:I
    .restart local v4       #src:I
    iget-object v6, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    aget-byte v6, v6, v0

    shl-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x2

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x3

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p3, v5

    .line 35
    add-int/lit8 v0, v0, 0x4

    .line 36
    array-length v6, p3

    if-eq v4, v6, :cond_0

    .line 33
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #src:I
    .restart local v5       #src:I
    goto :goto_1
.end method

.method ggetpix(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 43
    iget v1, p0, Lcom/b2bstudio/digger/board;->width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    const v2, 0xfffc

    and-int v0, v1, v2

    .line 44
    .local v0, ofs:I
    iget-object v1, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v3, v0, 0x3

    aget-byte v2, v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method ginit()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method ginten(I)V
    .locals 0
    .parameter "inten"

    .prologue
    .line 49
    return-void
.end method

.method gpal(I)V
    .locals 0
    .parameter "pal"

    .prologue
    .line 51
    return-void
.end method

.method gputi(II[SII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "p"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 53
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/board;->gputi(II[SIIZ)V

    .line 54
    return-void
.end method

.method gputi(II[SIIZ)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "p"
    .parameter "w"
    .parameter "h"
    .parameter "b"

    .prologue
    .line 56
    const/4 v5, 0x0

    .line 57
    .local v5, src:I
    iget v7, p0, Lcom/b2bstudio/digger/board;->width:I

    mul-int/2addr v7, p2

    const v8, 0xfffc

    and-int/2addr v8, p1

    add-int v1, v7, v8

    .line 59
    .local v1, dest:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p5, :cond_1

    .line 76
    :cond_0
    return-void

    .line 60
    :cond_1
    move v0, v1

    .line 61
    .local v0, d:I
    const/4 v3, 0x0

    .local v3, j:I
    move v6, v5

    .end local v5           #src:I
    .local v6, src:I
    :goto_1
    if-lt v3, p4, :cond_2

    .line 74
    iget v7, p0, Lcom/b2bstudio/digger/board;->width:I

    add-int/2addr v1, v7

    .line 59
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6           #src:I
    .restart local v5       #src:I
    goto :goto_0

    .line 62
    .end local v5           #src:I
    .restart local v6       #src:I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #src:I
    .restart local v5       #src:I
    aget-short v4, p3, v6

    .line 63
    .local v4, px:S
    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x3

    and-int/lit8 v9, v4, 0x3

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 64
    shr-int/lit8 v7, v4, 0x2

    int-to-short v4, v7

    .line 65
    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x2

    and-int/lit8 v9, v4, 0x3

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 66
    shr-int/lit8 v7, v4, 0x2

    int-to-short v4, v7

    .line 67
    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v8, v0, 0x1

    and-int/lit8 v9, v4, 0x3

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 68
    shr-int/lit8 v7, v4, 0x2

    int-to-short v4, v7

    .line 69
    iget-object v7, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    and-int/lit8 v8, v4, 0x3

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    .line 70
    add-int/lit8 v0, v0, 0x4

    .line 71
    array-length v7, p3

    if-eq v5, v7, :cond_0

    .line 61
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #src:I
    .restart local v6       #src:I
    goto :goto_1
.end method

.method gputim(IIIII)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "ch"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 78
    sget-object v11, Lcom/b2bstudio/digger/tables;->table:[[S

    mul-int/lit8 v12, p3, 0x2

    aget-object v9, v11, v12

    .line 79
    .local v9, spr:[S
    sget-object v11, Lcom/b2bstudio/digger/tables;->table:[[S

    mul-int/lit8 v12, p3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v6, v11, v12

    .line 81
    .local v6, msk:[S
    const/4 v10, 0x0

    .line 82
    .local v10, src:I
    iget v11, p0, Lcom/b2bstudio/digger/board;->width:I

    mul-int v11, v11, p2

    const v12, 0xfffc

    and-int/2addr v12, p1

    add-int v3, v11, v12

    .line 84
    .local v3, dest:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move v0, v4

    move/from16 v1, p5

    if-lt v0, v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 85
    :cond_1
    move v2, v3

    .line 86
    .local v2, d:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    move v0, v5

    move/from16 v1, p4

    if-lt v0, v1, :cond_2

    .line 106
    iget v11, p0, Lcom/b2bstudio/digger/board;->width:I

    add-int/2addr v3, v11

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_2
    aget-short v8, v9, v10

    .line 88
    .local v8, px:S
    aget-short v7, v6, v10

    .line 89
    .local v7, mx:S
    add-int/lit8 v10, v10, 0x1

    .line 90
    and-int/lit8 v11, v7, 0x3

    if-nez v11, :cond_3

    .line 91
    iget-object v11, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v12, v2, 0x3

    and-int/lit8 v13, v8, 0x3

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 92
    :cond_3
    shr-int/lit8 v11, v8, 0x2

    int-to-short v8, v11

    .line 93
    and-int/lit8 v11, v7, 0xc

    if-nez v11, :cond_4

    .line 94
    iget-object v11, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v12, v2, 0x2

    and-int/lit8 v13, v8, 0x3

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 95
    :cond_4
    shr-int/lit8 v11, v8, 0x2

    int-to-short v8, v11

    .line 96
    and-int/lit8 v11, v7, 0x30

    if-nez v11, :cond_5

    .line 97
    iget-object v11, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    add-int/lit8 v12, v2, 0x1

    and-int/lit8 v13, v8, 0x3

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 98
    :cond_5
    shr-int/lit8 v11, v8, 0x2

    int-to-short v8, v11

    .line 99
    and-int/lit16 v11, v7, 0xc0

    if-nez v11, :cond_6

    .line 100
    iget-object v11, p0, Lcom/b2bstudio/digger/board;->pixels:[B

    and-int/lit8 v12, v8, 0x3

    int-to-byte v12, v12

    aput-byte v12, v11, v2

    .line 101
    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 102
    array-length v11, v9

    if-eq v10, v11, :cond_0

    array-length v11, v6

    if-eq v10, v11, :cond_0

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
