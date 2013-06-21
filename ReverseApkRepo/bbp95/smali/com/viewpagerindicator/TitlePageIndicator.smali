.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;,
        Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I = null

.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentOffset:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I
    .locals 3

    .prologue
    .line 46
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
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    .line 103
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 105
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    .line 118
    const/high16 v23, -0x4080

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 119
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 138
    .local v21, res:Landroid/content/res/Resources;
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_footer_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 139
    .local v8, defaultFooterColor:I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_line_height:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 140
    .local v12, defaultFooterLineHeight:F
    sget v23, Lcom/viewpagerindicator/R$integer;->default_title_indicator_footer_indicator_style:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 141
    .local v10, defaultFooterIndicatorStyle:I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_height:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 142
    .local v9, defaultFooterIndicatorHeight:F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 143
    .local v11, defaultFooterIndicatorUnderlinePadding:F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 144
    .local v13, defaultFooterPadding:F
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_selected_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 145
    .local v15, defaultSelectedColor:I
    sget v23, Lcom/viewpagerindicator/R$bool;->default_title_indicator_selected_bold:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 146
    .local v14, defaultSelectedBold:Z
    sget v23, Lcom/viewpagerindicator/R$color;->default_title_indicator_text_color:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 147
    .local v16, defaultTextColor:I
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_text_size:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 148
    .local v17, defaultTextSize:F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_title_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 149
    .local v18, defaultTitlePadding:F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_clip_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 150
    .local v7, defaultClipPadding:F
    sget v23, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_top_padding:I

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 153
    .local v19, defaultTopPadding:F
    sget-object v23, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    sget v24, Lcom/viewpagerindicator/R$style;->Widget_TitlePageIndicator:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 156
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 157
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 158
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 159
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    .line 160
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 161
    const/16 v23, 0xc

    move/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 162
    const/16 v23, 0xb

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 163
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 164
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 165
    const/16 v23, 0x9

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 166
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 168
    const/16 v23, 0xa

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    .line 169
    .local v22, textSize:F
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    .line 170
    .local v20, footerColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 181
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v6}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    .line 182
    return-void
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 3
    .parameter "index"
    .parameter "paint"

    .prologue
    .line 617
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 618
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    invoke-interface {v1, p1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 619
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 620
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 10
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iget-object v8, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 592
    .local v1, count:I
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v7

    .line 593
    .local v7, width:I
    div-int/lit8 v3, v7, 0x2

    .line 594
    .local v3, halfWidth:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 605
    return-object v5

    .line 595
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v0

    .line 596
    .local v0, bounds:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v8, v9

    .line 597
    .local v6, w:F
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v8, v9

    .line 598
    .local v2, h:F
    int-to-float v8, v3

    const/high16 v9, 0x4000

    div-float v9, v6, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v9, v4, v9

    mul-int/2addr v9, v7

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v0, Landroid/graphics/RectF;->left:F

    .line 599
    iget v8, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v6

    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 600
    const/4 v8, 0x0

    iput v8, v0, Landroid/graphics/RectF;->top:F

    .line 601
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 602
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
    .locals 2
    .parameter "curViewBound"
    .parameter "curViewWidth"
    .parameter "left"

    .prologue
    .line 577
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 578
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 579
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/RectF;FI)V
    .locals 2
    .parameter "curViewBound"
    .parameter "curViewWidth"
    .parameter "right"

    .prologue
    .line 564
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 565
    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 566
    return-void
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 644
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 312
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    .line 318
    .local v7, count:I
    if-eqz v7, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v6

    .line 326
    .local v6, bounds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 327
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 330
    :cond_2
    add-int/lit8 v8, v7, -0x1

    .line 331
    .local v8, countMinusOne:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v14, v29, v30

    .line 332
    .local v14, halfWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v17

    .line 333
    .local v17, left:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    move/from16 v30, v0

    add-float v19, v29, v30

    .line 334
    .local v19, leftClip:F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v28

    .line 335
    .local v28, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v15

    .line 336
    .local v15, height:I
    add-int v22, v17, v28

    .line 337
    .local v22, right:I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    move/from16 v30, v0

    sub-float v24, v29, v30

    .line 339
    .local v24, rightClip:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v21, v0

    .line 341
    .local v21, page:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v29, v29, v14

    if-gtz v29, :cond_7

    .line 342
    const/high16 v29, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    .line 347
    .local v20, offsetPercent:F
    :goto_1
    const/high16 v29, 0x3e80

    cmpg-float v29, v20, v29

    if-gtz v29, :cond_8

    const/4 v13, 0x1

    .line 348
    .local v13, currentSelected:Z
    :goto_2
    const v29, 0x3d4ccccd

    cmpg-float v29, v20, v29

    if-gtz v29, :cond_9

    const/4 v11, 0x1

    .line 349
    .local v11, currentBold:Z
    :goto_3
    const/high16 v29, 0x3e80

    sub-float v29, v29, v20

    const/high16 v30, 0x3e80

    div-float v25, v29, v30

    .line 352
    .local v25, selectedPercent:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    .line 353
    .local v9, curPageBound:Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    iget v0, v9, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    sub-float v10, v29, v30

    .line 354
    .local v10, curPageWidth:F
    iget v0, v9, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    cmpg-float v29, v29, v19

    if-gez v29, :cond_3

    .line 356
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v10, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/RectF;FI)V

    .line 358
    :cond_3
    iget v0, v9, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    cmpl-float v29, v29, v24

    if-lez v29, :cond_4

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v10, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/RectF;FI)V

    .line 364
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    if-lez v29, :cond_5

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v16, v29, -0x1

    .local v16, i:I
    :goto_4
    if-gez v16, :cond_a

    .line 383
    .end local v16           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v8, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v16, v29, 0x1

    .restart local v16       #i:I
    :goto_5
    move/from16 v0, v16

    if-lt v0, v7, :cond_c

    .line 403
    .end local v16           #i:I
    :cond_6
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_6
    move/from16 v0, v16

    if-lt v0, v7, :cond_e

    .line 426
    new-instance v29, Landroid/graphics/Path;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->moveTo(FF)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Path;->close()V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 432
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    goto/16 :goto_0

    .line 434
    :pswitch_0
    new-instance v29, Landroid/graphics/Path;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    int-to-float v0, v15

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v30, v0

    add-float v30, v30, v14

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v30, v0

    sub-float v30, v14, v30

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Path;->close()V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 344
    .end local v9           #curPageBound:Landroid/graphics/RectF;
    .end local v10           #curPageWidth:F
    .end local v11           #currentBold:Z
    .end local v13           #currentSelected:Z
    .end local v16           #i:I
    .end local v20           #offsetPercent:F
    .end local v25           #selectedPercent:F
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 345
    const/high16 v29, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    move/from16 v30, v0

    sub-int v30, v28, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    .restart local v20       #offsetPercent:F
    goto/16 :goto_1

    .line 347
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 348
    .restart local v13       #currentSelected:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 366
    .restart local v9       #curPageBound:Landroid/graphics/RectF;
    .restart local v10       #curPageWidth:F
    .restart local v11       #currentBold:Z
    .restart local v16       #i:I
    .restart local v25       #selectedPercent:F
    :cond_a
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 368
    .local v5, bound:Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    cmpg-float v29, v29, v19

    if-gez v29, :cond_b

    .line 369
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    sub-float v27, v29, v30

    .line 371
    .local v27, w:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/RectF;FI)V

    .line 373
    add-int/lit8 v29, v16, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/RectF;

    .line 375
    .local v23, rightBound:Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_b

    .line 376
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    sub-float v29, v29, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 377
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    add-float v29, v29, v27

    move/from16 v0, v29

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 365
    .end local v23           #rightBound:Landroid/graphics/RectF;
    .end local v27           #w:F
    :cond_b
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 385
    .end local v5           #bound:Landroid/graphics/RectF;
    :cond_c
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 387
    .restart local v5       #bound:Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    cmpl-float v29, v29, v24

    if-lez v29, :cond_d

    .line 388
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    sub-float v27, v29, v30

    .line 390
    .restart local v27       #w:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-direct {v0, v5, v1, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/RectF;FI)V

    .line 392
    add-int/lit8 v29, v16, -0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/RectF;

    .line 394
    .local v18, leftBound:Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_d

    .line 395
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 396
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    add-float v29, v29, v27

    move/from16 v0, v29

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 384
    .end local v18           #leftBound:Landroid/graphics/RectF;
    .end local v27           #w:F
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 405
    .end local v5           #bound:Landroid/graphics/RectF;
    :cond_e
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 407
    .restart local v5       #bound:Landroid/graphics/RectF;
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_f

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-ltz v29, :cond_10

    :cond_f
    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_11

    .line 408
    :cond_10
    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const/4 v12, 0x1

    .line 410
    .local v12, currentPage:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    if-eqz v12, :cond_13

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_8
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v29

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    if-eqz v12, :cond_11

    if-eqz v13, :cond_11

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    move/from16 v30, v0

    ushr-int/lit8 v30, v30, 0x18

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v25

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v29

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 403
    .end local v12           #currentPage:Z
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 408
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 410
    .restart local v12       #currentPage:Z
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 443
    .end local v5           #bound:Landroid/graphics/RectF;
    .end local v12           #currentPage:Z
    :pswitch_1
    if-eqz v13, :cond_0

    .line 447
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/RectF;

    .line 448
    .local v26, underlineBounds:Landroid/graphics/RectF;
    new-instance v29, Landroid/graphics/Path;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->moveTo(FF)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v31, v0

    add-float v30, v30, v31

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v31, v0

    add-float v30, v30, v31

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Path;->close()V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    const/high16 v30, 0x437f

    mul-float v30, v30, v25

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    const/16 v30, 0xff

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 699
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 702
    .local v4, measuredWidth:I
    const/4 v1, 0x0

    .line 703
    .local v1, height:F
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 704
    .local v2, heightSpecMode:I
    const/high16 v5, 0x4000

    if-ne v2, v5, :cond_1

    .line 706
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v1, v5

    .line 716
    :cond_0
    :goto_0
    float-to-int v3, v1

    .line 718
    .local v3, measuredHeight:I
    invoke-virtual {p0, v4, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 719
    return-void

    .line 709
    .end local v3           #measuredHeight:I
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 710
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 711
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float v1, v5, v6

    .line 712
    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v6, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v5, v6, :cond_0

    .line 713
    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v1, v5

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 665
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    .line 667
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 670
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 673
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 674
    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentOffset:I

    .line 675
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 677
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 680
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 683
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 684
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 685
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 691
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 723
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 724
    .local v0, savedState:Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 725
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 726
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 727
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 731
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 732
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 733
    .local v0, savedState:Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    .line 734
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 464
    :cond_0
    const/16 v17, 0x0

    .line 552
    :goto_0
    return v17

    .line 467
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 469
    .local v2, action:I
    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 552
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 471
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 476
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 477
    .local v3, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 478
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 480
    .local v5, deltaX:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 481
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_3

    .line 482
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 486
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-nez v17, :cond_4

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    .line 491
    :cond_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_1

    .line 501
    .end local v3           #activePointerIndex:I
    .end local v5           #deltaX:F
    .end local v16           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 503
    .local v4, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v15

    .line 504
    .local v15, width:I
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v7, v17, v18

    .line 505
    .local v7, halfWidth:F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40c0

    div-float v14, v17, v18

    .line 506
    .local v14, sixthWidth:F
    sub-float v9, v7, v14

    .line 507
    .local v9, leftThird:F
    add-float v13, v7, v14

    .line 508
    .local v13, rightThird:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 510
    .local v6, eventX:F
    cmpg-float v17, v6, v9

    if-gez v17, :cond_5

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 513
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 515
    :cond_5
    cmpl-float v17, v6, v13

    if-lez v17, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 518
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 522
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 528
    .end local v4           #count:I
    .end local v6           #eventX:F
    .end local v7           #halfWidth:F
    .end local v9           #leftThird:F
    .end local v13           #rightThird:F
    .end local v14           #sixthWidth:F
    .end local v15           #width:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 529
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 534
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 535
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 536
    .restart local v16       #x:F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 537
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 542
    .end local v8           #index:I
    .end local v16           #x:F
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v12

    .line 543
    .local v12, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 544
    .local v11, pointerId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_8

    .line 545
    if-nez v12, :cond_9

    const/4 v10, 0x1

    .line 546
    .local v10, newPointerIndex:I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 548
    .end local v10           #newPointerIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 545
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 469
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
    .parameter "clipPadding"

    .prologue
    .line 292
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 293
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 294
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 660
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 661
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 662
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1
    .parameter "footerColor"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 193
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0
    .parameter "footerTriangleHeight"

    .prologue
    .line 210
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 211
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 212
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0
    .parameter "footerIndicatorPadding"

    .prologue
    .line 219
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 220
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 221
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0
    .parameter "indicatorStyle"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 229
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 230
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2
    .parameter "footerLineHeight"

    .prologue
    .line 200
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 201
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 203
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 653
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 695
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0
    .parameter "selectedBold"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 247
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 248
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .parameter "selectedColor"

    .prologue
    .line 237
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 238
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 239
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 257
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 258
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "textSize"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 267
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0
    .parameter "titlePadding"

    .prologue
    .line 274
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 275
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 276
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0
    .parameter "topPadding"

    .prologue
    .line 283
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 284
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 285
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "typeface"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 299
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 625
    .local v0, adapter:Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 626
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_0
    instance-of v1, v0, Lcom/viewpagerindicator/TitleProvider;

    if-nez v1, :cond_1

    .line 629
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_1
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 632
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 633
    check-cast v0, Lcom/viewpagerindicator/TitleProvider;

    .end local v0           #adapter:Landroid/support/v4/view/PagerAdapter;
    iput-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitleProvider:Lcom/viewpagerindicator/TitleProvider;

    .line 634
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 635
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .parameter "view"
    .parameter "initialPosition"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 639
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 640
    return-void
.end method
