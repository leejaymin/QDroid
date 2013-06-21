.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentOffset:I

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageSize:I

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/high16 v10, -0x4080

    iput v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 61
    const/4 v10, -0x1

    iput v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 77
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 78
    .local v9, res:Landroid/content/res/Resources;
    sget v10, Lcom/viewpagerindicator/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 79
    .local v3, defaultFillColor:I
    sget v10, Lcom/viewpagerindicator/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 80
    .local v4, defaultOrientation:I
    sget v10, Lcom/viewpagerindicator/R$color;->default_circle_indicator_stroke_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 81
    .local v7, defaultStrokeColor:I
    sget v10, Lcom/viewpagerindicator/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 82
    .local v8, defaultStrokeWidth:F
    sget v10, Lcom/viewpagerindicator/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 83
    .local v5, defaultRadius:F
    sget v10, Lcom/viewpagerindicator/R$bool;->default_circle_indicator_centered:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 84
    .local v2, defaultCentered:Z
    sget v10, Lcom/viewpagerindicator/R$bool;->default_circle_indicator_snap:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 87
    .local v6, defaultSnap:Z
    sget-object v10, Lcom/viewpagerindicator/R$styleable;->CirclePageIndicator:[I

    sget v11, Lcom/viewpagerindicator/R$style;->Widget_CirclePageIndicator:I

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    .line 90
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    .line 91
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 92
    iget-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v11, 0x6

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 96
    iget-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 99
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 104
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v10

    iput v10, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    .line 105
    return-void
.end method

.method private measureLong(I)I
    .locals 7
    .parameter "measureSpec"

    .prologue
    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 425
    .local v2, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 427
    .local v3, specSize:I
    const/high16 v4, 0x4000

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 429
    :cond_0
    move v1, v3

    .line 440
    :cond_1
    :goto_0
    return v1

    .line 432
    :cond_2
    iget-object v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 433
    .local v0, count:I
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 434
    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 433
    add-float/2addr v4, v5

    .line 434
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 433
    add-float/2addr v4, v5

    .line 434
    const/high16 v5, 0x3f80

    .line 433
    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 436
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_1

    .line 437
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 453
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 455
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 457
    move v0, v2

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    const/high16 v3, 0x4000

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 462
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 463
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private updatePageSize()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPageSize:I

    .line 346
    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 364
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 187
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v14, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 193
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v14, :cond_4

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 203
    .local v10, longSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v9

    .line 204
    .local v9, longPaddingBefore:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v8

    .line 205
    .local v8, longPaddingAfter:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v12

    .line 213
    .local v12, shortPaddingBefore:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    const/high16 v15, 0x4040

    mul-float v13, v14, v15

    .line 214
    .local v13, threeRadius:F
    int-to-float v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    add-float v11, v14, v15

    .line 215
    .local v11, shortOffset:F
    int-to-float v14, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    add-float v7, v14, v15

    .line 216
    .local v7, longOffset:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    if-eqz v14, :cond_2

    .line 217
    sub-int v14, v10, v9

    sub-int/2addr v14, v8

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    int-to-float v15, v1

    mul-float/2addr v15, v13

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    add-float/2addr v7, v14

    .line 224
    :cond_2
    const/4 v6, 0x0

    .local v6, iLoop:I
    :goto_2
    if-lt v6, v1, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    :goto_3
    int-to-float v14, v14

    mul-float v2, v14, v13

    .line 238
    .local v2, cx:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPageSize:I

    if-eqz v14, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentOffset:I

    int-to-float v14, v14

    const/high16 v15, 0x3f80

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPageSize:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float/2addr v14, v13

    add-float/2addr v2, v14

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v14, :cond_8

    .line 242
    add-float v3, v7, v2

    .line 243
    .local v3, dX:F
    move v4, v11

    .line 248
    .local v4, dY:F
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 207
    .end local v2           #cx:F
    .end local v3           #dX:F
    .end local v4           #dY:F
    .end local v6           #iLoop:I
    .end local v7           #longOffset:F
    .end local v8           #longPaddingAfter:I
    .end local v9           #longPaddingBefore:I
    .end local v10           #longSize:I
    .end local v11           #shortOffset:F
    .end local v12           #shortPaddingBefore:I
    .end local v13           #threeRadius:F
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v10

    .line 208
    .restart local v10       #longSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v9

    .line 209
    .restart local v9       #longPaddingBefore:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v8

    .line 210
    .restart local v8       #longPaddingAfter:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v12

    .restart local v12       #shortPaddingBefore:I
    goto :goto_1

    .line 225
    .restart local v6       #iLoop:I
    .restart local v7       #longOffset:F
    .restart local v11       #shortOffset:F
    .restart local v13       #threeRadius:F
    :cond_5
    int-to-float v14, v6

    mul-float/2addr v14, v13

    add-float v5, v7, v14

    .line 226
    .local v5, drawLong:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v14, :cond_6

    .line 227
    move v3, v5

    .line 228
    .restart local v3       #dX:F
    move v4, v11

    .line 233
    .restart local v4       #dY:F
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 230
    .end local v3           #dX:F
    .end local v4           #dY:F
    :cond_6
    move v3, v11

    .line 231
    .restart local v3       #dX:F
    move v4, v5

    .restart local v4       #dY:F
    goto :goto_5

    .line 237
    .end local v3           #dX:F
    .end local v4           #dY:F
    .end local v5           #drawLong:F
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    goto :goto_3

    .line 245
    .restart local v2       #cx:F
    :cond_8
    move v3, v11

    .line 246
    .restart local v3       #dX:F
    add-float v4, v7, v2

    .restart local v4       #dY:F
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 408
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 367
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    .line 369
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 375
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 376
    iput p3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentOffset:I

    .line 377
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->updatePageSize()V

    .line 378
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 380
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 383
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 387
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 388
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 389
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 395
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 471
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    .line 472
    .local v0, savedState:Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 473
    iget v1, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 474
    iget v1, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnapPage:I

    .line 475
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 476
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 480
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 481
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 482
    .local v0, savedState:Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->currentPage:I

    .line 483
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 252
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 253
    :cond_0
    const/4 v12, 0x0

    .line 329
    :goto_0
    return v12

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 258
    .local v0, action:I
    and-int/lit16 v12, v0, 0xff

    packed-switch v12, :pswitch_data_0

    .line 329
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 260
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 265
    :pswitch_2
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 266
    .local v1, activePointerIndex:I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 267
    .local v11, x:F
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 269
    .local v3, deltaX:F
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_3

    .line 270
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 271
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 275
    :cond_3
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_2

    .line 276
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_4

    .line 277
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    .line 280
    :cond_4
    iput v11, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 282
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 290
    .end local v1           #activePointerIndex:I
    .end local v3           #deltaX:F
    .end local v11           #x:F
    :pswitch_3
    iget-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_6

    .line 291
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 292
    .local v2, count:I
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 293
    .local v10, width:I
    int-to-float v12, v10

    const/high16 v13, 0x4000

    div-float v4, v12, v13

    .line 294
    .local v4, halfWidth:F
    int-to-float v12, v10

    const/high16 v13, 0x40c0

    div-float v9, v12, v13

    .line 296
    .local v9, sixthWidth:F
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 297
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 298
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 299
    :cond_5
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 300
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 301
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 305
    .end local v2           #count:I
    .end local v4           #halfWidth:F
    .end local v9           #sixthWidth:F
    .end local v10           #width:I
    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mIsDragging:Z

    .line 306
    const/4 v12, -0x1

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 307
    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 311
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 312
    .local v5, index:I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 313
    .restart local v11       #x:F
    iput v11, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    .line 314
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 319
    .end local v5           #index:I
    .end local v11           #x:F
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 320
    .local v8, pointerIndex:I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 321
    .local v7, pointerId:I
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_7

    .line 322
    if-nez v8, :cond_8

    const/4 v6, 0x1

    .line 323
    .local v6, newPointerIndex:I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    .line 325
    .end local v6           #newPointerIndex:I
    :cond_7
    iget v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 322
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .parameter "centered"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCentered:Z

    .line 110
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 111
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 358
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mCurrentPage:I

    .line 359
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 360
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .parameter "fillColor"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 120
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 399
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mOrientation:I

    .line 131
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->updatePageSize()V

    .line 132
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 138
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 163
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mRadius:F

    .line 164
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 165
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .parameter "snap"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mSnap:Z

    .line 173
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 174
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter "strokeColor"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 147
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter "strokeWidth"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 156
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 337
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 338
    invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->updatePageSize()V

    .line 339
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 340
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter "view"
    .parameter "initialPosition"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 350
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 351
    return-void
.end method
