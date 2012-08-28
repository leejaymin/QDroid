.class public Lde/mud/terminal/VDUBuffer;
.super Ljava/lang/Object;
.source "VDUBuffer.java"


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
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 117
    return-void
.end method


# virtual methods
.method public deleteArea(IIIII)V
    .locals 5
    .parameter "c"
    .parameter "l"
    .parameter "w"
    .parameter "h"
    .parameter "curAttr"

    .prologue
    .line 529
    add-int v0, p1, p3

    .line 530
    .local v0, endColumn:I
    iget v3, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int v2, v3, p2

    .line 531
    .local v2, targetRow:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p4, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v3, v4, :cond_1

    .line 536
    :cond_0
    invoke-virtual {p0, p2, p4}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 537
    return-void

    .line 532
    :cond_1
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    aget-object v3, v3, v2

    invoke-static {v3, p1, v0, p5}, Ljava/util/Arrays;->fill([IIII)V

    .line 533
    iget-object v3, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v3, v3, v2

    const/16 v4, 0x20

    invoke-static {v3, p1, v0, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public deleteChar(II)V
    .locals 4
    .parameter "c"
    .parameter "l"

    .prologue
    .line 224
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 226
    iget-object v2, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v3, p2

    aget-object v2, v2, v3

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 225
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 228
    iget-object v2, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v3, p2

    aget-object v2, v2, v3

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 227
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_0
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lde/mud/terminal/VDUBuffer;->putChar(IIC)V

    .line 231
    return-void
.end method

.method public deleteLine(I)V
    .locals 9
    .parameter "l"

    .prologue
    .line 493
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    if-le p1, v5, :cond_1

    iget v5, p0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 v0, v5, -0x1

    .line 495
    .local v0, bottom:I
    :goto_0
    sub-int v5, v0, p1

    add-int/lit8 v4, v5, -0x1

    .line 497
    .local v4, numRows:I
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v6, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v6, p1

    aget-object v2, v5, v6

    .line 498
    .local v2, discardedChars:[C
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v6, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v6, p1

    aget-object v1, v5, v6

    .line 500
    .local v1, discardedAttributes:[I
    if-lez v4, :cond_0

    .line 501
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v6, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    .line 502
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v8, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v8, p1

    .line 501
    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v6, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    .line 504
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v8, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v8, p1

    .line 503
    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    :cond_0
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v5, v0

    add-int/lit8 v3, v5, -0x1

    .line 508
    .local v3, newBottomRow:I
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aput-object v2, v5, v3

    .line 509
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    aput-object v1, v5, v3

    .line 510
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v5, v5, v3

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 511
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 513
    sub-int v5, v0, p1

    invoke-virtual {p0, p1, v5}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 514
    return-void

    .line 494
    .end local v0           #bottom:I
    .end local v1           #discardedAttributes:[I
    .end local v2           #discardedChars:[C
    .end local v3           #newBottomRow:I
    .end local v4           #numRows:I
    :cond_1
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-ge p1, v5, :cond_2

    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    add-int/lit8 v0, v5, 0x1

    goto :goto_0
.end method

.method public getAttributes(II)I
    .locals 2
    .parameter "c"
    .parameter "l"

    .prologue
    .line 184
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
    .line 678
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    return v0
.end method

.method public getChar(II)C
    .locals 2
    .parameter "c"
    .parameter "l"

    .prologue
    .line 174
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
    .line 817
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->width:I

    return v0
.end method

.method public getCursorColumn()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorX:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    return v0
.end method

.method public getWindowBase()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    return v0
.end method

.method public insertChar(IICI)V
    .locals 4
    .parameter "c"
    .parameter "l"
    .parameter "ch"
    .parameter "attributes"

    .prologue
    .line 206
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 207
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 206
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 209
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v2, p2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lde/mud/terminal/VDUBuffer;->width:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 208
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mud/terminal/VDUBuffer;->putChar(IICI)V

    .line 211
    return-void
.end method

.method public declared-synchronized insertLine(IIZ)V
    .locals 19
    .parameter "l"
    .parameter "n"
    .parameter "scrollDown"

    .prologue
    .line 330
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [[C

    .line 331
    .local v4, cbuf:[[C
    const/4 v2, 0x0

    check-cast v2, [[I

    .line 332
    .local v2, abuf:[[I
    const/4 v10, 0x0

    .line 333
    .local v10, offset:I
    move-object/from16 v0, p0

    iget v11, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 335
    .local v11, oldBase:I
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 336
    .local v8, newScreenBase:I
    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 337
    .local v9, newWindowBase:I
    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 339
    .local v7, newBufSize:I
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    if-le v0, v14, :cond_0

    .line 483
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_4

    .line 342
    const/4 v13, 0x0

    .line 345
    .local v13, top:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move/from16 v0, p1

    if-le v0, v14, :cond_7

    .line 346
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 v3, v14, -0x1

    .line 352
    .local v3, bottom:I
    :goto_2
    if-eqz p3, :cond_a

    .line 353
    sub-int v14, v3, v13

    move/from16 v0, p2

    if-le v0, v14, :cond_1

    sub-int p2, v3, v13

    .line 354
    :cond_1
    sub-int v14, v3, p1

    add-int/lit8 v15, p2, -0x1

    sub-int v12, v14, v15

    .line 355
    .local v12, size:I
    if-gez v12, :cond_2

    const/4 v12, 0x0

    .line 356
    :cond_2
    new-array v4, v12, [[C

    .line 357
    new-array v2, v12, [[I

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    add-int v15, v11, p1

    const/16 v16, 0x0

    sub-int v17, v3, p1

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    add-int v15, v11, p1

    .line 361
    const/16 v16, 0x0

    sub-int v17, v3, p1

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    .line 360
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    add-int v16, v11, p1

    add-int v16, v16, p2

    .line 363
    sub-int v17, v3, p1

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    .line 362
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v14, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    add-int v16, v11, p1

    add-int v16, v16, p2

    .line 365
    sub-int v17, v3, p1

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    .line 364
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v14, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 462
    .end local v12           #size:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    sub-int v14, v14, p2

    move-object/from16 v0, p0

    iput v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 465
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    move/from16 v0, p2

    if-lt v6, v0, :cond_11

    .line 471
    move-object/from16 v0, p0

    iput-object v4, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 472
    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 473
    move-object/from16 v0, p0

    iput v8, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 474
    move-object/from16 v0, p0

    iput v9, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 475
    move-object/from16 v0, p0

    iput v7, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 477
    if-eqz p3, :cond_15

    .line 478
    sub-int v14, v3, p1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lde/mud/terminal/VDUBuffer;->markLine(II)V

    .line 482
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    invoke-interface {v14}, Lde/mud/terminal/VDUDisplay;->updateScrollBar()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 330
    .end local v2           #abuf:[[I
    .end local v3           #bottom:I
    .end local v4           #cbuf:[[C
    .end local v6           #i:I
    .end local v7           #newBufSize:I
    .end local v8           #newScreenBase:I
    .end local v9           #newWindowBase:I
    .end local v10           #offset:I
    .end local v11           #oldBase:I
    .end local v13           #top:I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 342
    .restart local v2       #abuf:[[I
    .restart local v4       #cbuf:[[C
    .restart local v7       #newBufSize:I
    .restart local v8       #newScreenBase:I
    .restart local v9       #newWindowBase:I
    .restart local v10       #offset:I
    .restart local v11       #oldBase:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    move/from16 v0, p1

    if-le v0, v14, :cond_6

    .line 343
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->height:I

    if-ge v14, v15, :cond_5

    .line 344
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    add-int/lit8 v13, v14, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 v13, v14, -0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    goto/16 :goto_1

    .line 346
    .restart local v13       #top:I
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    if-lez v14, :cond_8

    .line 348
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    add-int/lit8 v3, v14, -0x1

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 370
    .restart local v3       #bottom:I
    :cond_a
    sub-int v14, v3, v13

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_b

    sub-int v14, v3, v13

    add-int/lit8 p2, v14, 0x1

    .line 371
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-ge v14, v15, :cond_10

    .line 372
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    add-int v14, v14, p2

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-le v14, v15, :cond_f

    .line 373
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v14, v15

    sub-int v10, p2, v14

    .line 374
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 375
    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    .line 376
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v14, v15

    add-int/lit8 v8, v14, -0x1

    .line 377
    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 385
    :goto_6
    new-array v4, v7, [[C

    .line 386
    new-array v2, v7, [[I

    .line 394
    :goto_7
    if-lez v11, :cond_c

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 396
    const/4 v15, 0x0

    .line 397
    sub-int v16, v11, v10

    .line 395
    move/from16 v0, v16

    invoke-static {v14, v10, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 399
    const/4 v15, 0x0

    .line 400
    sub-int v16, v11, v10

    .line 398
    move/from16 v0, v16

    invoke-static {v14, v10, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_c
    if-lez v13, :cond_d

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    invoke-static {v14, v11, v4, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    invoke-static {v14, v11, v2, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_d
    if-ltz v11, :cond_e

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    add-int v15, v11, v13

    .line 416
    sub-int v16, v11, v10

    .line 415
    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v14, v15, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    add-int v15, v11, v13

    .line 419
    sub-int v16, v11, v10

    .line 418
    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    add-int v15, v11, v13

    add-int v15, v15, p2

    .line 425
    add-int v16, v8, v13

    .line 426
    sub-int v17, p1, v13

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    .line 424
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    add-int v15, v11, v13

    add-int v15, v15, p2

    .line 428
    add-int v16, v8, v13

    .line 429
    sub-int v17, p1, v13

    add-int/lit8 v18, p2, -0x1

    sub-int v17, v17, v18

    .line 427
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p1

    if-ge v0, v14, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    add-int v15, v11, p1

    add-int/lit8 v15, v15, 0x1

    .line 434
    add-int v16, v8, p1

    add-int/lit8 v16, v16, 0x1

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, p1

    .line 433
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    add-int v15, v11, p1

    add-int/lit8 v15, v15, 0x1

    .line 437
    add-int v16, v8, p1

    add-int/lit8 v16, v16, 0x1

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, p1

    .line 436
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 440
    :catch_0
    move-exception v5

    .line 445
    .local v5, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "*** Error while scrolling up:"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "--- BEGIN STACK TRACE ---"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 448
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "--- END STACK TRACE ---"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bufSize="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", maxBufSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "top="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", bottom="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "n="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", l="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "screenBase="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", windowBase="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "newScreenBase="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", newWindowBase="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "oldBase="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "size.width="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", size.height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "abuf.length="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cbuf.length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "*** done dumping debug information"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 379
    .end local v5           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    add-int v14, v14, p2

    move-object/from16 v0, p0

    iput v14, v0, Lde/mud/terminal/VDUBuffer;->scrollMarker:I

    .line 380
    add-int v8, v8, p2

    .line 381
    add-int v9, v9, p2

    .line 382
    add-int v7, v7, p2

    goto/16 :goto_6

    .line 388
    :cond_10
    move/from16 v10, p2

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_7

    .line 466
    .restart local v6       #i:I
    :cond_11
    add-int v15, v8, p1

    if-eqz p3, :cond_12

    move v14, v6

    :goto_8
    add-int/2addr v14, v15

    :try_start_6
    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->width:I

    new-array v15, v15, [C

    aput-object v15, v4, v14

    .line 467
    add-int v15, v8, p1

    if-eqz p3, :cond_13

    move v14, v6

    :goto_9
    add-int/2addr v14, v15

    aget-object v14, v4, v14

    const/16 v15, 0x20

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([CC)V

    .line 468
    add-int v15, v8, p1

    if-eqz p3, :cond_14

    move v14, v6

    :goto_a
    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lde/mud/terminal/VDUBuffer;->width:I

    new-array v15, v15, [I

    aput-object v15, v2, v14

    .line 465
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 466
    :cond_12
    neg-int v14, v6

    goto :goto_8

    .line 467
    :cond_13
    neg-int v14, v6

    goto :goto_9

    .line 468
    :cond_14
    neg-int v14, v6

    goto :goto_a

    .line 480
    :cond_15
    sub-int v14, p1, v13

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/mud/terminal/VDUBuffer;->markLine(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method public insertLine(IZ)V
    .locals 1
    .parameter "l"
    .parameter "scrollDown"

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lde/mud/terminal/VDUBuffer;->insertLine(IIZ)V

    .line 315
    return-void
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    return v0
.end method

.method public markLine(II)V
    .locals 4
    .parameter "l"
    .parameter "n"

    .prologue
    .line 827
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v1, v2, :cond_1

    .line 829
    :cond_0
    return-void

    .line 828
    :cond_1
    iget-object v1, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putChar(IIC)V
    .locals 1
    .parameter "c"
    .parameter "l"
    .parameter "ch"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/mud/terminal/VDUBuffer;->putChar(IICI)V

    .line 139
    return-void
.end method

.method public putChar(IICI)V
    .locals 3
    .parameter "c"
    .parameter "l"
    .parameter "ch"
    .parameter "attributes"

    .prologue
    .line 161
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aput-char p3, v0, p1

    .line 162
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    iget v1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    aput p4, v0, p1

    .line 163
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-ge p2, v0, :cond_0

    .line 164
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 165
    :cond_0
    return-void
.end method

.method protected redraw()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    invoke-interface {v0}, Lde/mud/terminal/VDUDisplay;->redraw()V

    .line 853
    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 7
    .parameter "amount"

    .prologue
    const/4 v4, 0x0

    .line 686
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-ge p1, v5, :cond_0

    iget p1, p0, Lde/mud/terminal/VDUBuffer;->height:I

    .line 687
    :cond_0
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-ge p1, v5, :cond_3

    .line 688
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->width:I

    filled-new-array {p1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    .line 689
    .local v1, cbuf:[[C
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->width:I

    filled-new-array {p1, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 690
    .local v0, abuf:[[I
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v5, p1

    if-gez v5, :cond_4

    move v3, v4

    .line 691
    .local v3, copyStart:I
    :goto_0
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v5, p1

    if-gez v5, :cond_5

    iget v2, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 692
    .local v2, copyCount:I
    :goto_1
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    if-eqz v5, :cond_1

    .line 693
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    invoke-static {v5, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    :cond_1
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    if-eqz v5, :cond_2

    .line 695
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    invoke-static {v5, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    :cond_2
    iput-object v1, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 697
    iput-object v0, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 698
    iput v2, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 699
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    iget v6, p0, Lde/mud/terminal/VDUBuffer;->height:I

    sub-int/2addr v5, v6

    iput v5, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 700
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    iput v5, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 702
    .end local v0           #abuf:[[I
    .end local v1           #cbuf:[[C
    .end local v2           #copyCount:I
    .end local v3           #copyStart:I
    :cond_3
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    .line 704
    iget-object v5, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 705
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->redraw()V

    .line 706
    return-void

    .line 690
    .restart local v0       #abuf:[[I
    .restart local v1       #cbuf:[[C
    :cond_4
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int v3, v5, p1

    goto :goto_0

    .restart local v3       #copyStart:I
    :cond_5
    move v2, p1

    .line 691
    goto :goto_1
.end method

.method public setCursorPosition(II)V
    .locals 0
    .parameter "c"
    .parameter "l"

    .prologue
    .line 576
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->cursorX:I

    .line 577
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->cursorY:I

    .line 578
    return-void
.end method

.method public setDisplay(Lde/mud/terminal/VDUDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 844
    iput-object p1, p0, Lde/mud/terminal/VDUBuffer;->display:Lde/mud/terminal/VDUDisplay;

    .line 845
    return-void
.end method

.method public setMargins(II)V
    .locals 1
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 623
    if-le p1, p2, :cond_0

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_0
    if-gez p1, :cond_1

    .line 627
    const/4 p1, 0x0

    .line 628
    :cond_1
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt p2, v0, :cond_2

    .line 629
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 p2, v0, -0x1

    .line 631
    :cond_2
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 632
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    goto :goto_0
.end method

.method public setScreenSize(IIZ)V
    .locals 12
    .parameter "w"
    .parameter "h"
    .parameter "broadcast"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 733
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 735
    .local v5, maxSize:I
    if-lt p1, v11, :cond_0

    if-ge p2, v11, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    if-le p2, v7, :cond_2

    .line 741
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->maxBufSize:I

    .line 743
    :cond_2
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-le p2, v7, :cond_3

    .line 744
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 745
    iput v10, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 746
    iput v10, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 749
    :cond_3
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v7, p2

    iget v8, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v7, v8, :cond_4

    .line 750
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v7, p2

    iput v7, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 752
    :cond_4
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v7, p2

    iget v8, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v7, v8, :cond_5

    .line 753
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    sub-int/2addr v7, p2

    iput v7, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 756
    :cond_5
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    filled-new-array {v7, p1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    .line 757
    .local v3, cbuf:[[C
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    filled-new-array {v7, p1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 760
    .local v2, abuf:[[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-lt v4, v7, :cond_a

    .line 764
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    if-ge v7, v5, :cond_6

    .line 765
    iget v5, p0, Lde/mud/terminal/VDUBuffer;->bufSize:I

    .line 768
    :cond_6
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    if-eqz v7, :cond_7

    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    if-eqz v7, :cond_7

    .line 769
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v7, v7, v4

    if-nez v7, :cond_b

    .line 778
    :cond_7
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->getCursorColumn()I

    move-result v0

    .line 779
    .local v0, C:I
    if-gez v0, :cond_e

    .line 780
    const/4 v0, 0x0

    .line 784
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    .line 785
    .local v1, R:I
    if-gez v1, :cond_f

    .line 786
    const/4 v1, 0x0

    .line 790
    :cond_9
    :goto_4
    invoke-virtual {p0, v0, v1}, Lde/mud/terminal/VDUBuffer;->setCursorPosition(II)V

    .line 792
    iput-object v3, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    .line 793
    iput-object v2, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    .line 794
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->width:I

    .line 795
    iput p2, p0, Lde/mud/terminal/VDUBuffer;->height:I

    .line 796
    iput v10, p0, Lde/mud/terminal/VDUBuffer;->topMargin:I

    .line 797
    add-int/lit8 v7, p2, -0x1

    iput v7, p0, Lde/mud/terminal/VDUBuffer;->bottomMargin:I

    .line 798
    add-int/lit8 v7, p2, 0x1

    new-array v7, v7, [Z

    iput-object v7, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    .line 799
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    aput-boolean v11, v7, v10

    goto/16 :goto_0

    .line 761
    .end local v0           #C:I
    .end local v1           #R:I
    :cond_a
    aget-object v7, v3, v4

    const/16 v8, 0x20

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 760
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 770
    :cond_b
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v7, v7, v4

    array-length v6, v7

    .line 771
    .local v6, rowLength:I
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    aget-object v8, v7, v4

    aget-object v9, v3, v4

    .line 772
    if-ge p1, v6, :cond_d

    move v7, p1

    .line 771
    :goto_5
    invoke-static {v8, v10, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    iget-object v7, p0, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    aget-object v7, v7, v4

    aget-object v8, v2, v4

    .line 774
    if-ge p1, v6, :cond_c

    move v6, p1

    .line 773
    .end local v6           #rowLength:I
    :cond_c
    invoke-static {v7, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .restart local v6       #rowLength:I
    :cond_d
    move v7, v6

    .line 772
    goto :goto_5

    .line 781
    .end local v6           #rowLength:I
    .restart local v0       #C:I
    :cond_e
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->width:I

    if-lt v0, v7, :cond_8

    .line 782
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->width:I

    add-int/lit8 v0, v7, -0x1

    goto :goto_3

    .line 787
    .restart local v1       #R:I
    :cond_f
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v1, v7, :cond_9

    .line 788
    iget v7, p0, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/lit8 v1, v7, -0x1

    goto :goto_4
.end method

.method public setWindowBase(I)V
    .locals 3
    .parameter "line"

    .prologue
    .line 601
    iget v0, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    if-le p1, v0, :cond_1

    .line 602
    iget p1, p0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 604
    :cond_0
    :goto_0
    iput p1, p0, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 605
    iget-object v0, p0, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 606
    invoke-virtual {p0}, Lde/mud/terminal/VDUBuffer;->redraw()V

    .line 607
    return-void

    .line 603
    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public showCursor(Z)V
    .locals 0
    .parameter "doshow"

    .prologue
    .line 559
    iput-boolean p1, p0, Lde/mud/terminal/VDUBuffer;->showcursor:Z

    .line 560
    return-void
.end method
