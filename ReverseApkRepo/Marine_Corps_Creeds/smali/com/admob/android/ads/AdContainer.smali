.class Lcom/admob/android/ads/AdContainer;
.super Landroid/widget/RelativeLayout;
.source "AdContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/admob/android/ads/Ad$NetworkListener;


# static fields
.field private static final ADMOB_TEXT_ID:I = 0x3

.field private static final ADS_BY_ADMOB:Ljava/lang/String; = "Ads by AdMob"

.field private static final ADS_BY_ADMOB_FONT:Landroid/graphics/Typeface; = null

.field private static final ADS_BY_ADMOB_FONT_SIZE:F = 9.5f

.field private static final AD_FONT:Landroid/graphics/Typeface; = null

.field private static final AD_FONT_SIZE:F = 13.0f

.field private static final AD_TEXT_ID:I = 0x2

.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final FOCUS_COLOR:I = -0x1180d9

.field private static final FOCUS_CORNER_ROUNDING:F = 3.0f

.field private static final FOCUS_WIDTH:F = 3.0f

.field private static final GRADIENT_BACKGROUND_COLOR:I = -0x1

.field private static final GRADIENT_STOP:D = 0.4375

.field private static final GRADIENT_TOP_ALPHA:I = 0x7f

.field private static final HIGHLIGHT_BACKGROUND_COLOR:I = -0x1180d9

.field private static final HIGHLIGHT_COLOR:I = -0x4c00

.field private static final HIGHLIGHT_TEXT_COLOR:I = -0x1000000

.field private static final ICON_ID:I = 0x1

.field public static final MAX_WIDTH:I = 0x140

.field private static final NUM_MILLIS_IN_SECS:I = 0x3e8

.field private static final PADDING_DEFAULT:I = 0x8

.field private static final PULSE_ANIMATION_DURATION:F = 0.5f

.field private static final PULSE_GROWN_SCALE:F = 1.2f

.field private static final PULSE_GROW_KEY_TIME:F = 0.4f

.field private static final PULSE_INITIAL_SCALE:F = 1.0f

.field private static final PULSE_SHRUNKEN_SCALE:F = 0.0010f


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private ad:Lcom/admob/android/ads/Ad;

.field private adMobBrandingTextView:Landroid/widget/TextView;

.field private adTextView:Landroid/widget/TextView;

.field private backgroundColor:I

.field private clickInProgress:Z

.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field private focusedBackground:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private lastBackground:Landroid/graphics/drawable/Drawable;

.field private padding:I

.field private pressedBackground:Landroid/graphics/drawable/Drawable;

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdContainer;->AD_FONT:Landroid/graphics/Typeface;

    .line 111
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdContainer;->ADS_BY_ADMOB_FONT:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;)V
    .locals 2
    .parameter "ad"
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 178
    const/high16 v0, -0x100

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/admob/android/ads/AdContainer;->init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/admob/android/ads/AdContainer;-><init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 256
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    const/high16 v0, -0x100

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/admob/android/ads/AdContainer;->init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/admob/android/ads/AdContainer;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/admob/android/ads/AdContainer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/admob/android/ads/AdContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/admob/android/ads/AdContainer;->clickInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/Ad;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    return-object v0
.end method

.method private click()V
    .locals 21

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/admob/android/ads/AdContainer;->clickInProgress:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 865
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/admob/android/ads/AdContainer;->clickInProgress:Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 869
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 871
    .local v18, animSet:Landroid/view/animation/AnimationSet;
    const-wide/16 v19, 0xc8

    .line 873
    .local v19, firstDuration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v9, v5, v6

    .line 874
    .local v9, pivotX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v10, v5, v6

    .line 875
    .local v10, pivotY:F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const v6, 0x3f99999a

    const/high16 v7, 0x3f80

    const v8, 0x3f99999a

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 878
    .local v4, growAnim:Landroid/view/animation/ScaleAnimation;
    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 879
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 881
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f99999a

    const v13, 0x3a83126f

    const v14, 0x3f99999a

    const v15, 0x3a83126f

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 884
    .local v11, shrinkAnim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x12b

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 885
    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 886
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 887
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 892
    new-instance v5, Lcom/admob/android/ads/AdContainer$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/admob/android/ads/AdContainer$3;-><init>(Lcom/admob/android/ads/AdContainer;)V

    const-wide/16 v6, 0x1f4

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/admob/android/ads/AdContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 908
    .end local v4           #growAnim:Landroid/view/animation/ScaleAnimation;
    .end local v9           #pivotX:F
    .end local v10           #pivotY:F
    .end local v11           #shrinkAnim:Landroid/view/animation/ScaleAnimation;
    .end local v18           #animSet:Landroid/view/animation/AnimationSet;
    .end local v19           #firstDuration:J
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/admob/android/ads/Ad;->clicked()V

    goto :goto_0
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 12
    .parameter "c"
    .parameter "r"
    .parameter "backgroundColor"
    .parameter "color"

    .prologue
    const/4 v11, 0x1

    .line 537
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 538
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 540
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 545
    const/16 v7, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 547
    .local v6, topColor:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    const/4 v7, 0x0

    aput v6, v0, v7

    aput p3, v0, v11

    .line 548
    .local v0, gradientColors:[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v4, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 551
    .local v4, shine:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fdc

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 552
    .local v5, stop:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 553
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 559
    .local v3, shadowRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 560
    .local v2, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 562
    return-void
.end method

.method private static drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "c"
    .parameter "r"

    .prologue
    const/high16 v4, 0x4040

    .line 631
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 632
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 633
    const v2, -0x1180d9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 635
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 636
    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 638
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 639
    .local v1, path:Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 642
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 643
    return-void
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "r"
    .parameter "backgroundColor"
    .parameter "color"

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/admob/android/ads/AdContainer;->generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "r"
    .parameter "backgroundColor"
    .parameter "color"
    .parameter "addFocusRing"

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-static {v1, p1, p2, p3}, Lcom/admob/android/ads/AdContainer;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 578
    if-eqz p4, :cond_0

    .line 580
    invoke-static {v1, p1}, Lcom/admob/android/ads/AdContainer;->drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 583
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    .line 281
    invoke-virtual {p1, p0}, Lcom/admob/android/ads/Ad;->setNetworkListener(Lcom/admob/android/ads/Ad$NetworkListener;)V

    .line 283
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 284
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 286
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    .line 287
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/admob/android/ads/AdContainer;->clickInProgress:Z

    .line 290
    if-eqz p1, :cond_2

    .line 292
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->setFocusable(Z)V

    .line 293
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->setClickable(Z)V

    .line 295
    invoke-virtual {p1}, Lcom/admob/android/ads/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 296
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    .line 297
    const/16 v7, 0x8

    iput v7, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    .line 298
    if-eqz v3, :cond_0

    .line 300
    const/16 v7, 0x30

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    .line 302
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    .line 303
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    iget v8, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 308
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 310
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->addView(Landroid/view/View;)V

    .line 314
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    .line 315
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 316
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setId(I)V

    .line 317
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->activityIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->addView(Landroid/view/View;)V

    .line 324
    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    .line 325
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/admob/android/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    sget-object v8, Lcom/admob/android/ads/AdContainer;->AD_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 327
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    const/high16 v8, 0x4150

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 331
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 335
    .local v1, adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 337
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 339
    :cond_1
    iget v7, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    iget v8, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    iget v9, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    iget v10, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 340
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->addView(Landroid/view/View;)V

    .line 347
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    .line 348
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const-string v8, "Ads by AdMob"

    invoke-static {v8}, Lcom/admob/android/ads/AdMobLocalizer;->localize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    sget-object v8, Lcom/admob/android/ads/AdContainer;->ADS_BY_ADMOB_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 351
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    iget v8, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const/high16 v8, 0x4118

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 354
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    .local v0, adMobBrandingTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    iget v10, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 358
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v7, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdContainer;->addView(Landroid/view/View;)V

    .line 366
    .end local v0           #adMobBrandingTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, -0x1

    .line 367
    .local v6, tc:I
    const/high16 v2, -0x100

    .line 369
    .local v2, bc:I
    if-eqz p3, :cond_3

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://schemas.android.com/apk/res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, namespace:Ljava/lang/String;
    const-string v7, "textColor"

    const/4 v8, -0x1

    invoke-interface {p3, v4, v7, v8}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 376
    const-string v7, "backgroundColor"

    const/high16 v8, -0x100

    invoke-interface {p3, v4, v7, v8}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 380
    .end local v4           #namespace:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 381
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 382
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "AdMob SDK"

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 706
    .local v0, action:I
    const-string v7, "AdMob SDK"

    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 708
    const-string v7, "AdMob SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    if-nez v0, :cond_2

    .line 714
    invoke-virtual {p0, v10}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 750
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 715
    :cond_2
    if-ne v0, v11, :cond_5

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 719
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 721
    .local v6, y:F
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getLeft()I

    move-result v2

    .line 722
    .local v2, left:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getTop()I

    move-result v4

    .line 723
    .local v4, top:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getRight()I

    move-result v3

    .line 724
    .local v3, right:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getBottom()I

    move-result v1

    .line 726
    .local v1, bottom:I
    int-to-float v7, v2

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_3

    int-to-float v7, v3

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_3

    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_3

    int-to-float v7, v1

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 729
    :cond_3
    invoke-virtual {p0, v9}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0

    .line 732
    :cond_4
    invoke-virtual {p0, v10}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0

    .line 734
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    if-ne v0, v10, :cond_7

    .line 736
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 738
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 741
    :cond_6
    invoke-virtual {p0, v9}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0

    .line 743
    :cond_7
    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    .line 746
    invoke-virtual {p0, v9}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v3, "AdMob SDK"

    .line 761
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "AdMob SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTrackballEvent: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 769
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 781
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 770
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 777
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0
.end method

.method protected getAd()Lcom/admob/android/ads/Ad;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 937
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 918
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 928
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 791
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 794
    if-eqz p1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->focusedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v2, "AdMob SDK"

    .line 653
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "AdMob SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 661
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 665
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v2, "AdMob SDK"

    .line 676
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "AdMob SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp: keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 684
    :cond_1
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 687
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 690
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNetworkActivityEnd()V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/admob/android/ads/AdContainer$1;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdContainer$1;-><init>(Lcom/admob/android/ads/AdContainer;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method public onNetworkActivityStart()V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Lcom/admob/android/ads/AdContainer$2;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdContainer$2;-><init>(Lcom/admob/android/ads/AdContainer;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->post(Ljava/lang/Runnable;)Z

    .line 616
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 452
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    .line 453
    .local v1, brandingVisibility:I
    if-lez p1, :cond_0

    .line 455
    const/16 v8, 0x80

    if-gt p1, v8, :cond_4

    .line 457
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    const v9, 0x41119999

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 458
    const/16 v1, 0x8

    .line 478
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 480
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    .line 481
    .local v7, tf:Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    invoke-virtual {v8}, Lcom/admob/android/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 484
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 485
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 486
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 487
    .local v5, textSize:F
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 488
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 489
    .local v6, textViewWidth:F
    iget v8, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, p1, v8

    int-to-float v0, v8

    .line 490
    .local v0, adTextViewWidth:F
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 492
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/admob/android/ads/AdContainer;->padding:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v0, v8

    .line 494
    :cond_1
    cmpl-float v8, v6, v0

    if-lez v8, :cond_2

    .line 497
    const/16 v1, 0x8

    .line 501
    .end local v0           #adTextViewWidth:F
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #textSize:F
    .end local v6           #textViewWidth:F
    .end local v7           #tf:Landroid/graphics/Typeface;
    :cond_2
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 506
    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 508
    .local v3, r:Landroid/graphics/Rect;
    const/4 v8, -0x1

    iget v9, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    invoke-direct {p0, v3, v8, v9}, Lcom/admob/android/ads/AdContainer;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/admob/android/ads/AdContainer;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 509
    const v8, -0x1180d9

    const/16 v9, -0x4c00

    invoke-direct {p0, v3, v8, v9}, Lcom/admob/android/ads/AdContainer;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/admob/android/ads/AdContainer;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 510
    const/4 v8, -0x1

    iget v9, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    const/4 v10, 0x1

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/admob/android/ads/AdContainer;->generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/admob/android/ads/AdContainer;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 512
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/admob/android/ads/AdContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_3
    return-void

    .line 459
    :cond_4
    const/16 v8, 0xb0

    if-gt p1, v8, :cond_5

    .line 461
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    const v9, 0x41266667

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    const/4 v1, 0x0

    .line 463
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const v9, 0x40f33333

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 466
    :cond_5
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    const/high16 v9, 0x4150

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 467
    const/4 v1, 0x0

    .line 468
    iget-object v8, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    const/high16 v9, 0x4118

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 422
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 423
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 817
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/admob/android/ads/AdContainer;->clickInProgress:Z

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/admob/android/ads/AdContainer;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 822
    .local v1, newBackground:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 823
    .local v0, color:I
    if-eqz p1, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/AdContainer;->lastBackground:Landroid/graphics/drawable/Drawable;

    .line 826
    iget-object v1, p0, Lcom/admob/android/ads/AdContainer;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 827
    const/high16 v0, -0x100

    .line 834
    :goto_0
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 839
    :cond_1
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 841
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 845
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->invalidate()V

    .line 847
    .end local v0           #color:I
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void

    .line 831
    .restart local v0       #color:I
    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v1, p0, Lcom/admob/android/ads/AdContainer;->lastBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 394
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 395
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->adTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->adMobBrandingTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->postInvalidate()V

    .line 398
    return-void
.end method
