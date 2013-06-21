.class public Lcom/jjcgames/android/airhockey/MultitouchGame;
.super Lcom/jjcgames/android/airhockey/Game;
.source "MultitouchGame.java"


# instance fields
.field final playfield:Landroid/graphics/PointF;

.field final screen:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/Game;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->screen:Landroid/graphics/PointF;

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->playfield:Landroid/graphics/PointF;

    .line 6
    return-void
.end method


# virtual methods
.method declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 13
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 14
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 16
    .local v1, actionCode:I
    if-eqz v1, :cond_0

    .line 17
    if-ne v1, v12, :cond_3

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 25
    .local v2, actionPointerId:I
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    const/4 v8, 0x5

    if-ne v1, v8, :cond_7

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    .local v3, alreadyTracking:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    array-length v8, v8

    if-lt v4, v8, :cond_4

    .line 35
    :goto_2
    if-nez v3, :cond_2

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 38
    .local v6, index:I
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->screen:Landroid/graphics/PointF;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 39
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->playfield:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->screen:Landroid/graphics/PointF;

    invoke-virtual {p0, v8, v9}, Lcom/jjcgames/android/airhockey/MultitouchGame;->screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 40
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->playfield:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    move v7, v12

    .line 41
    .local v7, p:I
    :goto_3
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    aget v8, v8, v7

    if-ne v8, v11, :cond_2

    .line 42
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    aput v2, v8, v7

    .line 56
    .end local v3           #alreadyTracking:Z
    .end local v4           #i:I
    .end local v6           #index:I
    .end local v7           #p:I
    :cond_2
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    array-length v8, v8

    if-lt v4, v8, :cond_a

    .line 69
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/MultitouchGame;->waitForNextEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return v12

    .line 21
    .end local v2           #actionPointerId:I
    .end local v4           #i:I
    :cond_3
    const v8, 0xff00

    and-int/2addr v8, v0

    shr-int/lit8 v2, v8, 0x8

    .restart local v2       #actionPointerId:I
    goto :goto_0

    .line 30
    .restart local v3       #alreadyTracking:Z
    .restart local v4       #i:I
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    aget v8, v8, v4

    if-ne v8, v2, :cond_5

    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_2

    .line 29
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 40
    .restart local v6       #index:I
    :cond_6
    const/4 v8, 0x0

    move v7, v8

    goto :goto_3

    .line 45
    .end local v3           #alreadyTracking:Z
    .end local v4           #i:I
    .end local v6           #index:I
    :cond_7
    if-eq v1, v12, :cond_8

    .line 46
    const/4 v8, 0x6

    if-ne v1, v8, :cond_2

    .line 48
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 49
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    aget v8, v8, v4

    if-ne v8, v2, :cond_9

    .line 50
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    const/4 v9, -0x1

    aput v9, v8, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 13
    .end local v0           #action:I
    .end local v1           #actionCode:I
    .end local v2           #actionPointerId:I
    .end local v4           #i:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 48
    .restart local v0       #action:I
    .restart local v1       #actionCode:I
    .restart local v2       #actionPointerId:I
    .restart local v4       #i:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 57
    :cond_a
    :try_start_2
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touchPointer:[I

    aget v5, v8, v4

    .line 59
    .local v5, id:I
    if-ne v5, v11, :cond_c

    .line 56
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 62
    :cond_c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 63
    .restart local v6       #index:I
    if-eq v6, v11, :cond_b

    .line 66
    iget-object v8, p0, Lcom/jjcgames/android/airhockey/MultitouchGame;->touches:[Landroid/graphics/PointF;

    aget-object v8, v8, v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7
.end method
