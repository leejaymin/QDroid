.class Lcom/b2bstudio/digger/draw;
.super Ljava/lang/Object;
.source "draw.java"


# instance fields
.field bagbuf1:[S

.field bagbuf2:[S

.field bagbuf3:[S

.field bagbuf4:[S

.field bagbuf5:[S

.field bagbuf6:[S

.field bagbuf7:[S

.field bitmasks:[I

.field bonusbuf:[S

.field dig:Lcom/b2bstudio/digger/main;

.field diggerbuf:[S

.field digspd:I

.field digspr:I

.field field:[I

.field firebuf:[S

.field fireheight:I

.field firespr:I

.field monbuf1:[S

.field monbuf2:[S

.field monbuf3:[S

.field monbuf4:[S

.field monbuf5:[S

.field monbuf6:[S

.field monspd:[I

.field monspr:[I


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    const/16 v1, 0x1e0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x96

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->field:[I

    .line 20
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->diggerbuf:[S

    .line 21
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf1:[S

    .line 22
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf2:[S

    .line 23
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf3:[S

    .line 24
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf4:[S

    .line 25
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf5:[S

    .line 26
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf6:[S

    .line 27
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bagbuf7:[S

    .line 28
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf1:[S

    .line 29
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf2:[S

    .line 30
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf3:[S

    .line 31
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf4:[S

    .line 32
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf5:[S

    .line 33
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monbuf6:[S

    .line 34
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bonusbuf:[S

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->firebuf:[S

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->bitmasks:[I

    .line 39
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    .line 40
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/b2bstudio/digger/draw;->monspd:[I

    .line 42
    iput v2, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    iput v2, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    iput v2, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/b2bstudio/digger/draw;->fireheight:I

    .line 45
    iput-object p1, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    .line 46
    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0xfet 0xfft 0x0t 0x0t
        0xfdt 0xfft 0x0t 0x0t
        0xfbt 0xfft 0x0t 0x0t
        0xf7t 0xfft 0x0t 0x0t
        0xeft 0xfft 0x0t 0x0t
        0xdft 0xfft 0x0t 0x0t
        0xbft 0xfft 0x0t 0x0t
        0x7ft 0xfft 0x0t 0x0t
        0xfft 0xfet 0x0t 0x0t
        0xfft 0xfdt 0x0t 0x0t
        0xfft 0xfbt 0x0t 0x0t
        0xfft 0xf7t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method createdbfspr()V
    .locals 14

    .prologue
    const/4 v4, 0x4

    const/16 v5, 0xf

    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    .line 50
    iput v1, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    .line 51
    iput v1, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    .line 52
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->diggerbuf:[S

    move v2, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 53
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v6, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v7, 0xe

    const/16 v8, 0x51

    iget-object v9, p0, Lcom/b2bstudio/digger/draw;->bonusbuf:[S

    move v10, v4

    move v11, v5

    move v12, v1

    move v13, v1

    invoke-virtual/range {v6 .. v13}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 54
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v4, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v6, 0x52

    iget-object v7, p0, Lcom/b2bstudio/digger/draw;->firebuf:[S

    const/4 v8, 0x2

    iget v9, p0, Lcom/b2bstudio/digger/draw;->fireheight:I

    move v10, v1

    move v11, v1

    invoke-virtual/range {v4 .. v11}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 55
    return-void
.end method

.method creatembspr()V
    .locals 10

    .prologue
    const/16 v9, 0x47

    const/16 v2, 0x3e

    const/16 v5, 0xf

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 59
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf1:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 60
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf2:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 61
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf3:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 62
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf4:[S

    move v1, v4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 63
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf5:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 64
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf6:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 65
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->bagbuf7:[S

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 66
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf1:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 67
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf2:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 68
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf3:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 69
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf4:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 70
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf5:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 71
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->monbuf6:[S

    move v2, v9

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/b2bstudio/digger/sprite;->createspr(II[SIIII)V

    .line 72
    invoke-virtual {p0}, Lcom/b2bstudio/digger/draw;->createdbfspr()V

    .line 73
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x6

    if-lt v8, v0, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aput v6, v0, v8

    .line 75
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspd:[I

    const/4 v1, 0x1

    aput v1, v0, v8

    .line 73
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method drawbackg(I)V
    .locals 6
    .parameter "l"

    .prologue
    .line 80
    const/16 v2, 0xe

    .local v2, y:I
    :goto_0
    const/16 v0, 0xc8

    if-lt v2, v0, :cond_0

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    const/16 v0, 0x140

    if-lt v1, v0, :cond_1

    .line 80
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v3, p1, 0x5d

    const/4 v4, 0x5

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 81
    add-int/lit8 v1, v1, 0x14

    goto :goto_1
.end method

.method drawbonus(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0xe

    const/4 v5, 0x0

    .line 85
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v2, 0x51

    const/4 v3, 0x4

    const/16 v4, 0xf

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 86
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/digger/sprite;->movedrawspr(III)I

    .line 87
    return-void
.end method

.method drawbottomblob(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x6

    .line 89
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0xf

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 90
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0xf

    const/16 v3, 0x69

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 91
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 92
    return-void
.end method

.method drawdigger(IIIZ)I
    .locals 7
    .parameter "t"
    .parameter "x"
    .parameter "y"
    .parameter "f"

    .prologue
    const/4 v3, 0x4

    const/16 v4, 0xf

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    iget v2, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    .line 95
    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    if-nez v0, :cond_1

    .line 96
    :cond_0
    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    neg-int v0, v0

    iput v0, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    .line 97
    :cond_1
    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    if-le v0, v5, :cond_2

    .line 98
    iput v5, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    .line 99
    :cond_2
    iget v0, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    if-gez v0, :cond_3

    .line 100
    iput v1, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    .line 101
    :cond_3
    if-ltz p1, :cond_5

    const/4 v0, 0x6

    if-gt p1, v0, :cond_5

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    if-eqz p4, :cond_4

    move v2, v1

    :goto_0
    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x3

    iget v5, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 103
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v1, p2, p3}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    .line 109
    :goto_1
    return v0

    .line 102
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_6

    if-gt p1, v4, :cond_6

    .line 106
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v2, 0x28

    sub-int/2addr v2, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 107
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v1, p2, p3}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method drawemerald(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x4

    .line 112
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 113
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v3, 0x6c

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 114
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 115
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, p1, p2}, Lcom/b2bstudio/digger/main;->drawemerald(II)V

    .line 116
    return-void
.end method

.method drawfield()V
    .locals 12

    .prologue
    const/16 v11, 0xfdf

    const/16 v10, 0xf

    const/16 v9, 0xc

    const/16 v8, 0x9

    .line 119
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    if-lt v0, v10, :cond_0

    .line 148
    return-void

    .line 120
    :cond_0
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/16 v4, 0xa

    if-lt v2, v4, :cond_1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0x2000

    if-nez v4, :cond_5

    .line 122
    mul-int/lit8 v4, v0, 0x14

    add-int/lit8 v1, v4, 0xc

    .line 123
    .local v1, xp:I
    mul-int/lit8 v4, v2, 0x12

    add-int/lit8 v3, v4, 0x12

    .line 124
    .local v3, yp:I
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfc0

    const/16 v5, 0xfc0

    if-eq v4, v5, :cond_2

    .line 125
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    const v7, 0xd03f

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 126
    sub-int v4, v3, v10

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 127
    sub-int v4, v3, v9

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 128
    sub-int v4, v3, v8

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 129
    const/4 v4, 0x6

    sub-int v4, v3, v4

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 130
    const/4 v4, 0x3

    sub-int v4, v3, v4

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 131
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/b2bstudio/digger/draw;->drawtopblob(II)V

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_3

    .line 134
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    const v7, 0xdfe0

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 135
    const/16 v4, 0x10

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 136
    sub-int v4, v1, v9

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 137
    const/16 v4, 0x8

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 138
    const/4 v4, 0x4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 139
    add-int/lit8 v4, v1, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/b2bstudio/digger/draw;->drawleftblob(II)V

    .line 141
    :cond_3
    const/16 v4, 0xe

    if-ge v0, v4, :cond_4

    .line 142
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v2, 0xf

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfdf

    if-eq v4, v11, :cond_4

    .line 143
    invoke-virtual {p0, v1, v3}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 144
    :cond_4
    if-ge v2, v8, :cond_5

    .line 145
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfdf

    if-eq v4, v11, :cond_5

    .line 146
    invoke-virtual {p0, v1, v3}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 120
    .end local v1           #xp:I
    .end local v3           #yp:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method drawfire(III)I
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    const/16 v1, 0xf

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 150
    if-nez p3, :cond_1

    .line 151
    iget v0, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    .line 152
    iget v0, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    if-le v0, v3, :cond_0

    .line 153
    iput v5, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget v2, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    add-int/lit8 v2, v2, 0x52

    iget v4, p0, Lcom/b2bstudio/digger/draw;->fireheight:I

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b2bstudio/digger/main;->drawfire(III)V

    .line 161
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v1, p1, p2}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    return v0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v2, p3, 0x54

    iget v4, p0, Lcom/b2bstudio/digger/draw;->fireheight:I

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    goto :goto_0
.end method

.method drawfurryblob(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 164
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0xf

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 165
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0xf

    const/16 v3, 0x6b

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 166
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 167
    return-void
.end method

.method drawgold(IIII)I
    .locals 8
    .parameter "n"
    .parameter "t"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 169
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v2, p2, 0x3e

    const/16 v4, 0xf

    move v1, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 170
    if-ge p2, v3, :cond_0

    .line 171
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    sub-int v1, p1, v7

    invoke-virtual {v0, v1, p3, p4, p2}, Lcom/b2bstudio/digger/main;->drawbag(IIII)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, p1, p3, p4}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    sub-int v1, p1, v7

    const/4 v2, 0x3

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, p3, p4, v2}, Lcom/b2bstudio/digger/main;->drawgold(IIII)V

    goto :goto_0
.end method

.method drawleftblob(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x12

    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 179
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v6

    sub-int v2, p2, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 180
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v6

    sub-int v2, p2, v3

    const/16 v3, 0x68

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 181
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 182
    return-void
.end method

.method drawmon(IZIII)I
    .locals 7
    .parameter "n"
    .parameter "nobf"
    .parameter "dir"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 184
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v1, v0, p1

    iget-object v2, p0, Lcom/b2bstudio/digger/draw;->monspd:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 185
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v0, v0, p1

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspd:[I

    iget-object v1, p0, Lcom/b2bstudio/digger/draw;->monspd:[I

    aget v1, v1, p1

    neg-int v1, v1

    aput v1, v0, p1

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v0, v0, p1

    if-le v0, v6, :cond_2

    .line 188
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aput v6, v0, p1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v0, v0, p1

    if-gez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aput v5, v0, p1

    .line 191
    :cond_3
    if-eqz p2, :cond_4

    .line 192
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x45

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/main;->drawmon(IIIZI)V

    .line 203
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1, p4, p5}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    return v0

    .line 194
    :cond_4
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 196
    :sswitch_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x49

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    goto :goto_0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lcom/b2bstudio/digger/draw;->monspr:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x4d

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method drawmondie(IZIII)I
    .locals 7
    .parameter "n"
    .parameter "nobf"
    .parameter "dir"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x48

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/main;->drawmondie(IIIZI)V

    .line 217
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1, p4, p5}, Lcom/b2bstudio/digger/sprite;->drawspr(III)I

    move-result v0

    return v0

    .line 209
    :cond_0
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 211
    :sswitch_0
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x4c

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x50

    const/16 v4, 0xe

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method drawrightblob(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 220
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x10

    sub-int v2, p2, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 221
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x10

    sub-int v2, p2, v3

    const/16 v3, 0x66

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 222
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 223
    return-void
.end method

.method drawsquareblob(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x6

    .line 225
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 226
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    add-int/lit8 v2, p2, 0x11

    const/16 v3, 0x6a

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 227
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 228
    return-void
.end method

.method drawstatics()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->setretr(Z)V

    .line 231
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/board;->gpal(I)V

    .line 232
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/board;->ginten(I)V

    .line 233
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->levplan()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/draw;->drawbackg(I)V

    .line 234
    invoke-virtual {p0}, Lcom/b2bstudio/digger/draw;->drawfield()V

    .line 235
    return-void
.end method

.method drawtopblob(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x6

    .line 237
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    sub-int v2, p2, v4

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 238
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    sub-int v1, p1, v3

    sub-int v2, p2, v4

    const/16 v3, 0x67

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 239
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 240
    return-void
.end method

.method eatfield(III)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "dir"

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xc

    const v9, 0xdfff

    .line 245
    sub-int v4, p1, v5

    div-int/lit8 v0, v4, 0x14

    .local v0, h:I
    sub-int v4, p1, v5

    rem-int/lit8 v4, v4, 0x14

    div-int/lit8 v2, v4, 0x4

    .local v2, xr:I
    sub-int v4, p2, v6

    div-int/lit8 v1, v4, 0x12

    .local v1, v:I
    sub-int v4, p2, v6

    rem-int/lit8 v4, v4, 0x12

    div-int/lit8 v3, v4, 0x3

    .line 246
    .local v3, yr:I
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 247
    packed-switch p3, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 249
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 250
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    iget-object v7, p0, Lcom/b2bstudio/digger/draw;->bitmasks:[I

    aget v7, v7, v2

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 251
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1f

    if-nez v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    and-int/2addr v6, v9

    aput v6, v4, v5

    goto :goto_0

    .line 256
    :pswitch_2
    add-int/lit8 v2, v2, -0x1

    .line 257
    if-gez v2, :cond_1

    .line 258
    add-int/lit8 v2, v2, 0x5

    .line 259
    add-int/lit8 v0, v0, -0x1

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    iget-object v7, p0, Lcom/b2bstudio/digger/draw;->bitmasks:[I

    aget v7, v7, v2

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 262
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit8 v4, v4, 0x1f

    if-nez v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    and-int/2addr v6, v9

    aput v6, v4, v5

    goto :goto_0

    .line 267
    :pswitch_3
    add-int/lit8 v3, v3, -0x1

    .line 268
    if-gez v3, :cond_2

    .line 269
    add-int/lit8 v3, v3, 0x6

    .line 270
    add-int/lit8 v1, v1, -0x1

    .line 272
    :cond_2
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    iget-object v7, p0, Lcom/b2bstudio/digger/draw;->bitmasks:[I

    add-int/lit8 v8, v3, 0x6

    aget v7, v7, v8

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 273
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfc0

    if-nez v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    and-int/2addr v6, v9

    aput v6, v4, v5

    goto :goto_0

    .line 278
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 279
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    iget-object v7, p0, Lcom/b2bstudio/digger/draw;->bitmasks:[I

    add-int/lit8 v8, v3, 0x6

    aget v7, v7, v8

    and-int/2addr v6, v7

    aput v6, v4, v5

    .line 280
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v4, v4, v5

    and-int/lit16 v4, v4, 0xfc0

    if-nez v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v5, v1, 0xf

    add-int/2addr v5, v0

    aget v6, v4, v5

    and-int/2addr v6, v9

    aput v6, v4, v5

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method eraseemerald(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x4

    .line 286
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/b2bstudio/digger/sprite;->initmiscspr(IIII)V

    .line 287
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v3, 0x6d

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/sprite;->drawmiscspr(IIIII)V

    .line 288
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/sprite;->getis()V

    .line 289
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, p1, p2}, Lcom/b2bstudio/digger/main;->eraseemerald(II)V

    .line 290
    return-void
.end method

.method getfield(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v1, p2, 0xf

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method initdbfspr()V
    .locals 12

    .prologue
    const/4 v3, 0x4

    const/16 v4, 0xf

    const/4 v1, 0x0

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/draw;->digspd:I

    .line 293
    iput v1, p0, Lcom/b2bstudio/digger/draw;->digspr:I

    .line 294
    iput v1, p0, Lcom/b2bstudio/digger/draw;->firespr:I

    .line 295
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    move v2, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 296
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v5, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v6, 0xe

    const/16 v7, 0x51

    move v8, v3

    move v9, v4

    move v10, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 297
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v5, 0x52

    const/4 v6, 0x2

    iget v7, p0, Lcom/b2bstudio/digger/draw;->fireheight:I

    move v8, v1

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 298
    return-void
.end method

.method initmbspr()V
    .locals 8

    .prologue
    const/16 v7, 0x47

    const/16 v2, 0x3e

    const/16 v4, 0xf

    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 300
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 301
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 302
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 303
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    move v1, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 304
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x5

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 305
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x6

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 306
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/4 v1, 0x7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 307
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0x8

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 308
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0x9

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 309
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xa

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 310
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xb

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 311
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xc

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 312
    iget-object v0, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    const/16 v1, 0xd

    move v2, v7

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/b2bstudio/digger/sprite;->initspr(IIIIII)V

    .line 313
    invoke-virtual {p0}, Lcom/b2bstudio/digger/draw;->initdbfspr()V

    .line 314
    return-void
.end method

.method makefield()V
    .locals 8

    .prologue
    const/16 v7, 0x53

    .line 317
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xf

    if-lt v1, v3, :cond_0

    .line 326
    return-void

    .line 318
    :cond_0
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v4, v2, 0xf

    add-int/2addr v4, v1

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 320
    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    iget-object v4, p0, Lcom/b2bstudio/digger/draw;->dig:Lcom/b2bstudio/digger/main;

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->levplan()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/b2bstudio/digger/construct;->getlevch(III)I

    move-result v0

    .line 321
    .local v0, c:I
    if-eq v0, v7, :cond_2

    const/16 v3, 0x56

    if-ne v0, v3, :cond_3

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v4, v2, 0xf

    add-int/2addr v4, v1

    aget v5, v3, v4

    const v6, 0xd03f

    and-int/2addr v5, v6

    aput v5, v3, v4

    .line 323
    :cond_3
    if-eq v0, v7, :cond_4

    const/16 v3, 0x48

    if-ne v0, v3, :cond_5

    .line 324
    :cond_4
    iget-object v3, p0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v4, v2, 0xf

    add-int/2addr v4, v1

    aget v5, v3, v4

    const v6, 0xdfe0

    and-int/2addr v5, v6

    aput v5, v3, v4

    .line 318
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
