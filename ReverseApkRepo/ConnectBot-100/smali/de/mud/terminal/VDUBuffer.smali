.class public Lde/mud/terminal/VDUBuffer;
.super Ljava/lang/Object;
.source "VDUBuffer.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final COLOR:I = 0x1fe0

.field public static final COLOR_BG:I = 0x1e00

.field public static final COLOR_BG_SHIFT:I = 0x9

.field public static final COLOR_FG:I = 0x1e0

.field public static final COLOR_FG_SHIFT:I = 0x5

.field public static final ID:Ljava/lang/String; = "$Id: VDUBuffer.java 503 2005-10-24 07:34:13Z marcus $"

.field public static final INVERT:I = 0x4

.field public static final INVISIBLE:I = 0x10

.field public static final LOW:I = 0x8

.field public static final NORMAL:I = 0x0

.field public static final SCROLL_DOWN:Z = true

.field public static final SCROLL_UP:Z = false

.field public static final UNDERLINE:I = 0x2

.field public static final debug:I


# instance fields
.field private bottomMargin:I

.field public bufSize:I

.field public charArray:[[C

.field public charAttributes:[[I

.field protected cursorX:I

.field protected cursorY:I

.field protected display:Lde/mud/terminal/VDUDisplay;

.field public height:I

.field public maxBufSize:I

.field public screenBase:I

.field public scrollMarker:I

.field protected showcursor:Z

.field private topMargin:I

.field public update:[Z

.field public width:I

.field public windowBase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    const/16 v0, 0x50

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lde/mud/terminal/VDUBuffer;-><init>(II)V

    .line 109
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 102
    return-void
.end method

.method private checkBounds(III)I
    .locals 1
    .parameter "value"
    .parameter "lower"
    .parameter "upper"

    .prologue
    .line 797
    if-ge p1, p2, :cond_0

    move v0, p2

    .line 799
    :goto_0
    return v0

    .line 798
    :cond_0
    if-le p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    .line 799
    goto :goto_0
.end method


# virtual methods
.method public deleteArea(IIII)V
    .locals 6
    .parameter "c"
    .parameter "l"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, v4

    invoke-direct {p0, p1, v5, v3}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 533
    iget v3, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v3, v4

    invoke-direct {p0, p2, v5, v3}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 535
    new-array v1, p3, [C

    .line 536
    .local v1, cbuf:[C
    new-array v0, p3, [I

    .line 538
    .local v0, abuf:[I
    const/16 v3, 0x20

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 540
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p4, :cond_0

    add-int v3, p2, v2

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v3, v4, :cond_1

    .line 544
    :cond_0
    invoke-virtual {p0, p2, p4}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 545
    return-void

    .line 541
    :cond_1
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-static {v1, v5, v3, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-static {v0, v5, v3, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public deleteArea(IIIII)V
    .locals 6
    .parameter "c"
    .parameter "l"
    .parameter "w"
    .parameter "h"
    .parameter "curAttr"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 504
    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, v4

    invoke-direct {p0, p1, v5, v3}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 505
    iget v3, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v3, v4

    invoke-direct {p0, p2, v5, v3}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 507
    new-array v1, p3, [C

    .line 508
    .local v1, cbuf:[C
    new-array v0, p3, [I

    .line 510
    .local v0, abuf:[I
    const/16 v3, 0x20

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 512
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p3, :cond_1

    .line 513
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_0

    add-int v3, p2, v2

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v3, v4, :cond_2

    .line 517
    :cond_0
    invoke-virtual {p0, p2, p4}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 518
    return-void

    .line 512
    :cond_1
    aput p5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_2
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-static {v1, v5, v3, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p2

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    invoke-static {v0, v5, v3, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public deleteChar(II)V
    .locals 6
    .parameter "c"
    .parameter "l"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v4

    invoke-direct {p0, p1, v5, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 217
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v4

    invoke-direct {p0, p2, v5, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 218
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 220
    iget-object v2, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v3, p2

    aget-object v2, v2, v3

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    .line 219
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 222
    iget-object v2, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v3, p2

    aget-object v2, v2, v3

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    .line 221
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :cond_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0, p2, v5}, Lde/mud/terminal/VDUBuffer;->putChar(IIC)V

    .line 225
    return-void
.end method

.method public deleteLine(I)V
    .locals 7
    .parameter "l"

    .prologue
    const/4 v6, 0x1

    .line 478
    const/4 v1, 0x0

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v2, v6

    invoke-direct {p0, p1, v1, v2}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 480
    iget v1, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    if-le p1, v1, :cond_0

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v1, v6

    move v0, v1

    .line 482
    .local v0, bottom:I
    :goto_0
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 483
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p1

    sub-int v5, v0, p1

    sub-int/2addr v5, v6

    .line 482
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 485
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p1

    sub-int v5, v0, p1

    sub-int/2addr v5, v6

    .line 484
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v6

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    new-array v3, v3, [C

    aput-object v3, v1, v2

    .line 487
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v6

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    new-array v3, v3, [I

    aput-object v3, v1, v2

    .line 488
    sub-int v1, v0, p1

    invoke-virtual {p0, p1, v1}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 489
    return-void

    .line 481
    .end local v0           #bottom:I
    :cond_0
    iget v1, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public getAttributes(II)I
    .locals 3
    .parameter "c"
    .parameter "l"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 173
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p2, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 174
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aget v0, v0, p1

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    return v0
.end method

.method public getChar(II)C
    .locals 3
    .parameter "c"
    .parameter "l"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 161
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p2, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 162
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aget-char v0, v0, p1

    return v0
.end method

.method public getColumns()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    return v0
.end method

.method public getCursorColumn()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorX:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    return v0
.end method

.method public getWindowBase()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    return v0
.end method

.method public insertChar(IICI)V
    .locals 5
    .parameter "c"
    .parameter "l"
    .parameter "ch"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 196
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v4

    invoke-direct {p0, p1, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 197
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v4

    invoke-direct {p0, p2, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 198
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 199
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    .line 198
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 201
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    .line 200
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mud/terminal/VDUBuffer;->putChar(IICI)V

    .line 203
    return-void
.end method

.method public insertLine(I)V
    .locals 2
    .parameter "l"

    .prologue
    .line 281
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lde/mud/terminal/VDUBuffer;->insertLine(IIZ)V

    .line 282
    return-void
.end method

.method public insertLine(II)V
    .locals 1
    .parameter "l"
    .parameter "n"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/mud/terminal/VDUBuffer;->insertLine(IIZ)V

    .line 294
    return-void
.end method

.method public declared-synchronized insertLine(IIZ)V
    .locals 18
    .parameter "l"
    .parameter "n"
    .parameter "scrollDown"

    .prologue
    .line 324
    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v14, v0

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 326
    const/4 v7, 0x0

    check-cast v7, [[C

    .line 327
    .local v7, cbuf:[[C
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 328
    .local v5, abuf:[[I
    const/4 v10, 0x0

    .line 329
    .local v10, offset:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v11, v0

    .line 331
    .local v11, oldBase:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_0

    .line 468
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v13, v0

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_3

    .line 334
    const/4 v13, 0x0

    move v12, v13

    .line 337
    .local v12, top:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v6, v13

    .line 342
    .local v6, bottom:I
    :goto_2
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "l is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", top is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bottom is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bottomargin is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", topMargin is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    if-eqz p3, :cond_9

    .line 345
    sub-int v13, v6, v12

    move/from16 v0, p2

    move v1, v13

    if-le v0, v1, :cond_1

    sub-int p2, v6, v12

    .line 346
    :cond_1
    sub-int v13, v6, p1

    const/4 v14, 0x1

    sub-int v14, p2, v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cbuf:[[C
    check-cast v7, [[C

    .line 347
    .restart local v7       #cbuf:[[C
    sub-int v13, v6, p1

    const/4 v14, 0x1

    sub-int v14, p2, v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #abuf:[[I
    check-cast v5, [[I

    .line 349
    .restart local v5       #abuf:[[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    add-int v14, v11, p1

    const/4 v15, 0x0

    sub-int v16, v6, p1

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    move-object v0, v13

    move v1, v14

    move-object v2, v7

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    add-int v14, v11, p1

    .line 351
    const/4 v15, 0x0

    sub-int v16, v6, p1

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    .line 350
    move-object v0, v13

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v14, v0

    add-int v15, v11, p1

    add-int v15, v15, p2

    .line 353
    sub-int v16, v6, p1

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    .line 352
    move-object v0, v7

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v14, v0

    add-int v15, v11, p1

    add-int v15, v15, p2

    .line 355
    sub-int v16, v6, p1

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    .line 354
    move-object v0, v5

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v7, v0

    .line 357
    .restart local v7       #cbuf:[[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v5, v0

    .line 451
    .restart local v5       #abuf:[[I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    move v13, v0

    sub-int v13, v13, p2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 454
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    move v0, v9

    move/from16 v1, p2

    if-lt v0, v1, :cond_10

    .line 459
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 460
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 462
    if-eqz p3, :cond_13

    .line 463
    sub-int v13, v6, p1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 467
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    move-object v13, v0

    invoke-interface {v13}, Lde/mud/terminal/VDUDisplay;->updateScrollBar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 324
    .end local v10           #offset:I
    .end local v11           #oldBase:I
    .end local v12           #top:I
    .end local v6           #bottom:I
    .end local v7           #cbuf:[[C
    .end local v5           #abuf:[[I
    .end local v9           #i:I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 334
    .restart local v5       #abuf:[[I
    .restart local v7       #cbuf:[[C
    .restart local v10       #offset:I
    .restart local v11       #oldBase:I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v14, v0

    if-ge v13, v14, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v12, v13

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v12, v13

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v13, v0

    move v12, v13

    goto/16 :goto_1

    .line 338
    .restart local v12       #top:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v13, v0

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_8

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v13, v0

    if-lez v13, :cond_7

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v6, v13

    goto/16 :goto_2

    :cond_7
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move v13, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v13

    goto/16 :goto_2

    .line 360
    .restart local v6       #bottom:I
    :cond_9
    sub-int v13, v6, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p2

    move v1, v13

    if-le v0, v1, :cond_a

    sub-int v13, v6, v12

    add-int/lit8 p2, v13, 0x1

    .line 361
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v14, v0

    if-ge v13, v14, :cond_f

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v13, v0

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v14, v0

    if-le v13, v14, :cond_e

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v14, v0

    sub-int/2addr v13, v14

    sub-int v10, p2, v13

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    move v13, v0

    add-int/2addr v13, v10

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v13, v0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v14, v0

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v13, v0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 375
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [[C

    move-object v7, v0

    .line 376
    .restart local v7       #cbuf:[[C
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [[I

    move-object v5, v0

    .line 384
    .restart local v5       #abuf:[[I
    :goto_7
    if-lez v11, :cond_b

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    .line 386
    const/4 v14, 0x0

    .line 387
    sub-int v15, v11, v10

    .line 385
    invoke-static {v13, v10, v7, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    .line 389
    const/4 v14, 0x0

    .line 390
    sub-int v15, v11, v10

    .line 388
    invoke-static {v13, v10, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    :cond_b
    if-lez v12, :cond_c

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v14, v0

    .line 395
    invoke-static {v13, v11, v7, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v14, v0

    .line 398
    invoke-static {v13, v11, v5, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_c
    if-lez v11, :cond_d

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    add-int v14, v11, v12

    .line 406
    sub-int v15, v11, v10

    .line 405
    move-object v0, v13

    move v1, v14

    move-object v2, v7

    move v3, v15

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    add-int v14, v11, v12

    .line 409
    sub-int v15, v11, v10

    .line 408
    move-object v0, v13

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    add-int v14, v11, v12

    add-int v14, v14, p2

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v15, v0

    add-int/2addr v15, v12

    .line 416
    sub-int v16, p1, v12

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    .line 414
    move-object v0, v13

    move v1, v14

    move-object v2, v7

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    add-int v14, v11, v12

    add-int v14, v14, p2

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v15, v0

    add-int/2addr v15, v12

    .line 419
    sub-int v16, p1, v12

    const/16 v17, 0x1

    sub-int v17, p2, v17

    sub-int v16, v16, v17

    .line 417
    move-object v0, v13

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v13, v0

    add-int v14, v11, p1

    add-int/lit8 v14, v14, 0x1

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v15, v0

    add-int v15, v15, p1

    add-int/lit8 v15, v15, 0x1

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v16, v16, p1

    .line 423
    move-object v0, v13

    move v1, v14

    move-object v2, v7

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v13, v0

    add-int v14, v11, p1

    add-int/lit8 v14, v14, 0x1

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v15, v0

    add-int v15, v15, p1

    add-int/lit8 v15, v15, 0x1

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v16, v16, p1

    .line 426
    move-object v0, v13

    move v1, v14

    move-object v2, v5

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 430
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 435
    .local v8, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "*** Error while scrolling up:"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "--- BEGIN STACK TRACE ---"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 438
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "--- END STACK TRACE ---"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bufSize="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", maxBufSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "top="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bottom="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "n="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", l="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "screenBase="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", windowBase="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "oldBase="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "size.width="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", size.height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "abuf.length="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", cbuf.length="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "*** done dumping debug information"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 369
    .end local v8           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    move v13, v0

    add-int v13, v13, p2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v13, v0

    add-int v13, v13, p2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    move v13, v0

    add-int v13, v13, p2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v13, v0

    add-int v13, v13, p2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/VDUBuffer;->bufSize:I

    goto/16 :goto_6

    .line 378
    :cond_f
    move/from16 v10, p2

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object v7, v0

    .line 380
    .restart local v7       #cbuf:[[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object v5, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v5       #abuf:[[I
    goto/16 :goto_7

    .line 455
    .restart local v9       #i:I
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v13, v0

    add-int v13, v13, p1

    if-eqz p3, :cond_11

    move v14, v9

    :goto_8
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    new-array v14, v14, [C

    aput-object v14, v7, v13

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move v13, v0

    add-int v13, v13, p1

    if-eqz p3, :cond_12

    move v14, v9

    :goto_9
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move v14, v0

    new-array v14, v14, [I

    aput-object v14, v5, v13

    .line 454
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 455
    :cond_11
    neg-int v14, v9

    goto :goto_8

    .line 456
    :cond_12
    neg-int v14, v9

    goto :goto_9

    .line 465
    :cond_13
    sub-int v13, p1, v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/VDUBuffer;->markLine(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method public insertLine(IZ)V
    .locals 1
    .parameter "l"
    .parameter "scrollDown"

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lde/mud/terminal/VDUBuffer;->insertLine(IIZ)V

    .line 309
    return-void
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    return v0
.end method

.method public markLine(II)V
    .locals 4
    .parameter "l"
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    .line 791
    const/4 v1, 0x0

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 792
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v1, v2, :cond_1

    .line 794
    :cond_0
    return-void

    .line 793
    :cond_1
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput-boolean v3, v1, v2

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putChar(IIC)V
    .locals 1
    .parameter "c"
    .parameter "l"
    .parameter "ch"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mud/terminal/VDUBuffer;->putChar(IICI)V

    .line 124
    return-void
.end method

.method public putChar(IICI)V
    .locals 3
    .parameter "c"
    .parameter "l"
    .parameter "ch"
    .parameter "attributes"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p1

    .line 147
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p2, v1, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result p2

    .line 148
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aput-char p3, v0, p1

    .line 149
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aput p4, v0, p1

    .line 150
    invoke-virtual {p0, p2, v2}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 151
    return-void
.end method

.method public putString(IILjava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "l"
    .parameter "s"

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mud/terminal/VDUBuffer;->putString(IILjava/lang/String;I)V

    .line 246
    return-void
.end method

.method public putString(IILjava/lang/String;I)V
    .locals 3
    .parameter "c"
    .parameter "l"
    .parameter "s"
    .parameter "attributes"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->width:I

    if-lt v1, v2, :cond_1

    .line 270
    :cond_0
    return-void

    .line 269
    :cond_1
    add-int v1, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, p2, v2, p4}, Lde/mud/terminal/VDUBuffer;->putChar(IICI)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected redraw()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    invoke-interface {v0}, Lde/mud/terminal/VDUDisplay;->redraw()V

    .line 815
    :cond_0
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 3
    .parameter "l"

    .prologue
    const/4 v2, 0x1

    .line 646
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-ge p1, v0, :cond_2

    .line 647
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 648
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 651
    :goto_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 652
    :cond_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v2

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 654
    :cond_1
    return-void

    .line 650
    :cond_2
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 7
    .parameter "amount"

    .prologue
    const/4 v6, 0x0

    .line 668
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-ge p1, v4, :cond_0

    iget p1, p0, Lde/mud/terminal/VDUBuffer;->height:I

    .line 669
    :cond_0
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-ge p1, v4, :cond_3

    .line 670
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->width:I

    filled-new-array {p1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    .line 671
    .local v1, cbuf:[[C
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->width:I

    filled-new-array {p1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 672
    .local v0, abuf:[[I
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v4, p1

    if-gez v4, :cond_4

    move v3, v6

    .line 673
    .local v3, copyStart:I
    :goto_0
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v4, p1

    if-gez v4, :cond_5

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move v2, v4

    .line 674
    .local v2, copyCount:I
    :goto_1
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    if-eqz v4, :cond_1

    .line 675
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    invoke-static {v4, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    :cond_1
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    if-eqz v4, :cond_2

    .line 677
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    invoke-static {v4, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    :cond_2
    iput-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 679
    iput-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 680
    iput v2, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 681
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    iget v5, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v4, v5

    iput v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 682
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    iput v4, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 684
    .end local v1           #cbuf:[[C
    .end local v0           #abuf:[[I
    .end local v3           #copyStart:I
    .end local v2           #copyCount:I
    :cond_3
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    .line 686
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v6

    .line 687
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->redraw()V

    .line 688
    return-void

    .line 672
    .restart local v0       #abuf:[[I
    .restart local v1       #cbuf:[[C
    :cond_4
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v4, p1

    move v3, v4

    goto :goto_0

    .restart local v3       #copyStart:I
    :cond_5
    move v2, p1

    .line 673
    goto :goto_1
.end method

.method public setCursorPosition(II)V
    .locals 3
    .parameter "c"
    .parameter "l"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 571
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v2, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result v0

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->cursorX:I

    .line 572
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p2, v2, v0}, Lde/mud/terminal/VDUBuffer;->checkBounds(III)I

    move-result v0

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    .line 573
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    invoke-virtual {p0, v0, v1}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 574
    return-void
.end method

.method public setDisplay(Lde/mud/terminal/VDUDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 806
    iput-object p1, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    .line 807
    return-void
.end method

.method public setScreenSize(IIZ)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "broadcast"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 715
    iget v1, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 717
    .local v1, bsize:I
    if-lt p1, v8, :cond_0

    if-ge p2, v8, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-le p2, v4, :cond_2

    .line 723
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    .line 725
    :cond_2
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-le p2, v4, :cond_3

    .line 726
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 727
    iput v7, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 728
    iput v7, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 731
    :cond_3
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v4, p2

    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v4, v5, :cond_4

    .line 732
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v4, p2

    iput v4, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 734
    :cond_4
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v4, p2

    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v4, v5, :cond_5

    .line 735
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v4, p2

    iput v4, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 738
    :cond_5
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    filled-new-array {v4, p1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[C

    .line 739
    .local v2, cbuf:[[C
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    filled-new-array {v4, p1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 742
    .local v0, abuf:[[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v3, v4, :cond_7

    .line 746
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    if-eqz v4, :cond_6

    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    if-eqz v4, :cond_6

    .line 747
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v3, v4, :cond_8

    .line 755
    :cond_6
    iput-object v2, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 756
    iput-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 757
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->width:I

    .line 758
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    .line 759
    iput v7, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 760
    sub-int v4, p2, v8

    iput v4, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 761
    add-int/lit8 v4, p2, 0x1

    new-array v4, v4, [Z

    iput-object v4, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    .line 762
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    aput-boolean v8, v4, v7

    goto :goto_0

    .line 743
    :cond_7
    aget-object v4, v2, v3

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 748
    :cond_8
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v4, v4, v3

    aget-object v5, v2, v3

    .line 749
    iget v6, p0, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge p1, v6, :cond_9

    move v6, p1

    .line 748
    :goto_3
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    iget-object v4, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    aget-object v4, v4, v3

    aget-object v5, v0, v3

    .line 751
    iget v6, p0, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge p1, v6, :cond_a

    move v6, p1

    .line 750
    :goto_4
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 749
    :cond_9
    iget v6, p0, Lde/mud/terminal/VDUBuffer;->width:I

    goto :goto_3

    .line 751
    :cond_a
    iget v6, p0, Lde/mud/terminal/VDUBuffer;->width:I

    goto :goto_4
.end method

.method public setTopMargin(I)V
    .locals 3
    .parameter "l"

    .prologue
    const/4 v2, 0x1

    .line 621
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    if-le p1, v0, :cond_2

    .line 622
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 623
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 626
    :goto_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 627
    :cond_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v0, v2

    iput v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 629
    :cond_1
    return-void

    .line 625
    :cond_2
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    goto :goto_0
.end method

.method public setWindowBase(I)V
    .locals 3
    .parameter "line"

    .prologue
    .line 597
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    if-le p1, v0, :cond_1

    .line 598
    iget p1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 600
    :cond_0
    :goto_0
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 601
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 602
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->redraw()V

    .line 603
    return-void

    .line 599
    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public showCursor(Z)V
    .locals 2
    .parameter "doshow"

    .prologue
    .line 552
    iget-boolean v0, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    if-eq p1, v0, :cond_0

    .line 553
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 554
    :cond_0
    iput-boolean p1, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    .line 555
    return-void
.end method
