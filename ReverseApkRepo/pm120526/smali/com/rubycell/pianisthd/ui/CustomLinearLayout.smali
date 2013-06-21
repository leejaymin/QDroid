.class public Lcom/rubycell/pianisthd/ui/CustomLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/rubycell/pianisthd/ui/PianoView;

.field private b:Lcom/rubycell/pianisthd/ui/PianoView;

.field private c:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field private d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field private e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

.field private f:Lcom/rubycell/pianisthd/ui/MiniPianoView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->i:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->c:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->i:Z

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-lt v6, v7, :cond_4

    iget-object v6, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->b:Lcom/rubycell/pianisthd/ui/PianoView;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, p1, v1, v7}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/util/ArrayList;Landroid/view/MotionEvent;FI)Z

    move-result v3

    if-eqz v3, :cond_0

    neg-float v1, v1

    sget v3, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->a:Lcom/rubycell/pianisthd/ui/PianoView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/util/ArrayList;Landroid/view/MotionEvent;FI)Z

    move-result v1

    if-eqz v1, :cond_1

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->f:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v5, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a(Landroid/view/MotionEvent;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v4, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a(Landroid/view/MotionEvent;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-lez v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_7

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_7

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_7

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_8

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v9, v9, 0x5

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_8

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget v7, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_9

    sget v7, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-lez v7, :cond_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-lt v6, v7, :cond_11

    iget-object v6, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->b:Lcom/rubycell/pianisthd/ui/PianoView;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, p1, v1, v7}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/util/ArrayList;Landroid/view/MotionEvent;FI)Z

    move-result v3

    if-eqz v3, :cond_d

    neg-float v1, v1

    sget v3, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_d
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->a:Lcom/rubycell/pianisthd/ui/PianoView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/rubycell/pianisthd/ui/PianoView;->a(Ljava/util/ArrayList;Landroid/view/MotionEvent;FI)Z

    move-result v1

    if-eqz v1, :cond_e

    neg-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_e
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->f:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v5, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a(Landroid/view/MotionEvent;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_f
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v4, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a(Landroid/view/MotionEvent;Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_12

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_12

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_13

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-lez v9, :cond_14

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15

    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_16

    sget v9, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v9, v9, 0x5

    div-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_16

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_16

    sget v9, Lcom/rubycell/pianisthd/d/b;->c:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    sget v7, Lcom/rubycell/pianisthd/d/b;->d:I

    mul-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_17

    sget v7, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-lez v7, :cond_18

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    :cond_18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public setMenuDownLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->h:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setMenuUpLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->g:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setMiniDown(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->f:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    return-void
.end method

.method public setMiniUp(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->i:Z

    return-void
.end method

.method public setPianoViewDown(Lcom/rubycell/pianisthd/ui/PianoView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->b:Lcom/rubycell/pianisthd/ui/PianoView;

    return-void
.end method

.method public setPianoViewUp(Lcom/rubycell/pianisthd/ui/PianoView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->a:Lcom/rubycell/pianisthd/ui/PianoView;

    return-void
.end method

.method public setScrollViewDown(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    return-void
.end method

.method public setScrollViewUp(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->c:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    return-void
.end method
