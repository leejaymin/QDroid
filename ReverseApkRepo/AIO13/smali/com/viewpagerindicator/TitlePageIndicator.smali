.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# static fields
.field private static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I = null

.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageOffset:F

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I
    .locals 3

    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/viewpagerindicator/R$color;->default_title_indicator_footer_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget v7, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_line_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget v8, Lcom/viewpagerindicator/R$integer;->default_title_indicator_footer_indicator_style:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sget v9, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sget v10, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    sget v11, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_padding:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sget v12, Lcom/viewpagerindicator/R$color;->default_title_indicator_selected_color:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    sget v13, Lcom/viewpagerindicator/R$bool;->default_title_indicator_selected_bold:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    sget v14, Lcom/viewpagerindicator/R$color;->default_title_indicator_text_color:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    sget v15, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_text_size:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    sget v16, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_title_padding:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    sget v17, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_clip_padding:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    sget v18, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_top_padding:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget-object v18, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    const/4 v7, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const/4 v7, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    const/16 v7, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    const/16 v7, 0x9

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    const/16 v7, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    const/16 v5, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    const/4 v5, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    const/16 v5, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v7, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 12

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v9, v5

    int-to-float v10, v7

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iput v1, v6, Landroid/graphics/Rect;->top:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;FI)V
    .locals 2

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;FI)V
    .locals 2

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v18, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v19

    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float v6, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v21

    add-int v22, v19, v20

    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float v7, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    move v14, v3

    move v3, v2

    :goto_1
    const/high16 v2, 0x3e80

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    move v13, v2

    :goto_2
    const v2, 0x3d4ccccd

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_a

    const/4 v2, 0x1

    move v10, v2

    :goto_3
    const/high16 v2, 0x3e80

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e80

    div-float v23, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_4
    if-gez v4, :cond_b

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-ge v2, v5, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_5
    if-lt v4, v15, :cond_d

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    ushr-int/lit8 v24, v2, 0x18

    const/4 v2, 0x0

    move v12, v2

    :goto_6
    if-lt v12, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v3}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    sub-float/2addr v3, v4

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float v3, v3, v18

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    sub-float v3, v18, v3

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v2, v4

    move v14, v3

    move v3, v2

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_c

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v2, v8

    int-to-float v2, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v2, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v9, v11

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_c

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->right:I

    :cond_c
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_e

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_e

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v19

    if-le v2, v0, :cond_10

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_11

    :cond_10
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v19

    if-le v2, v0, :cond_13

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v2, v0, :cond_13

    :cond_11
    if-ne v12, v14, :cond_14

    const/4 v2, 0x1

    move v11, v2

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    if-eqz v11, :cond_15

    if-eqz v10, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_12

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v4, v4

    sub-int v4, v24, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_12
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_13

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_13
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_7

    :cond_15
    const/4 v2, 0x0

    goto :goto_8

    :pswitch_1
    if-eqz v13, :cond_0

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float/2addr v2, v4

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    :cond_0
    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v3, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    sub-float v2, v0, v2

    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x40c0

    div-float/2addr v3, v5

    sub-float v5, v4, v3

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v2, :cond_8

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_6
    cmpl-float v3, v4, v3

    if-lez v3, :cond_7

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_8

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-interface {v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    :cond_8
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_a

    if-nez v2, :cond_9

    move v0, v1

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    :cond_a
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

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

.method public setClipPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTopPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void
.end method
