.class final Lcom/wooboo/adlib_android/_;
.super Landroid/widget/RelativeLayout;
.source "_.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/wooboo/adlib_android/__$N;


# static fields
.field private static final ADS_BY_WOOBOO:Ljava/lang/String; = "Ads by Wooboo"

.field private static final ADS_BY_WOOBOO_FONT:Landroid/graphics/Typeface; = null

.field private static final ADS_BY_WOOBOO_FONT_SIZE:F = 10.0f

.field private static final AD_FONT:Landroid/graphics/Typeface; = null

.field private static final AD_FONT_SIZE:F = 16.0f

.field private static final AD_FONT_SIZE_SMALL:F = 14.0f

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

.field private static final NUM_MILLIS_IN_SECS:I = 0x3e8

.field private static final PADDING_DEFAULT:I = 0x6

.field private static final PULSE_ANIMATION_DURATION:F = 0.5f

.field private static final PULSE_GROWN_SCALE:F = 1.2f

.field private static final PULSE_GROW_KEY_TIME:F = 0.4f

.field private static final PULSE_INITIAL_SCALE:F = 1.0f

.field private static final PULSE_SHRUNKEN_SCALE:F = 0.0010f

.field private static final TIME_OUT:I = 0x1388


# instance fields
.field private activityIndicator:Landroid/widget/ProgressBar;

.field private adMeta:Lcom/wooboo/adlib_android/__;

.field private adTextView:Landroid/widget/TextView;

.field private backgroundColor:I

.field private clickInProgress:Z

.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field private focusedBackground:Landroid/graphics/drawable/Drawable;

.field private gifView:Lcom/wooboo/adlib_android/gg;

.field private isPopWindow:Z

.field private iv:Landroid/widget/ImageView;

.field private lastBackground:Landroid/graphics/drawable/Drawable;

.field private padding:I

.field private pressedBackground:Landroid/graphics/drawable/Drawable;

.field private textColor:I

.field private woobooBrandingTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/_;->AD_FONT:Landroid/graphics/Typeface;

    .line 52
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/_;->ADS_BY_WOOBOO_FONT:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/wooboo/adlib_android/__;Landroid/content/Context;ZII)V
    .locals 2
    .parameter "adMeta"
    .parameter "context"
    .parameter "isPopWindow"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/high16 v0, -0x100

    iput v0, p0, Lcom/wooboo/adlib_android/_;->backgroundColor:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    .line 80
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    .line 81
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    .line 141
    iput-boolean p3, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    .line 142
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/wooboo/adlib_android/_;->init(Lcom/wooboo/adlib_android/__;Landroid/content/Context;II)V

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/wooboo/adlib_android/_;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wooboo/adlib_android/_;)Lcom/wooboo/adlib_android/gg;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wooboo/adlib_android/_;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

    return-void
.end method

.method static synthetic access$3(Lcom/wooboo/adlib_android/_;)Lcom/wooboo/adlib_android/__;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    return-object v0
.end method

.method private click()V
    .locals 21

    .prologue
    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/wooboo/adlib_android/_;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 590
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    .line 591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 592
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 594
    :cond_0
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 595
    .local v18, animSet:Landroid/view/animation/AnimationSet;
    const-wide/16 v19, 0xc8

    .line 597
    .local v19, firstDuration:J
    const/high16 v9, 0x41a0

    .line 598
    .local v9, pivotX:F
    const/high16 v10, 0x41a0

    .line 599
    .local v10, pivotY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wooboo/adlib_android/gg;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v9, v5, v6

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wooboo/adlib_android/gg;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v10, v5, v6

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wooboo/adlib_android/gg;->stop()V

    .line 605
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v9, v5, v6

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v10, v5, v6

    .line 610
    :cond_2
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 611
    const/high16 v5, 0x3f80

    const v6, 0x3f99999a

    .line 612
    const/high16 v7, 0x3f80

    const v8, 0x3f99999a

    .line 610
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 614
    .local v4, growAnim:Landroid/view/animation/ScaleAnimation;
    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 615
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 616
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    .line 617
    const v12, 0x3f99999a

    const v13, 0x3a83126f

    .line 618
    const v14, 0x3f99999a

    const v15, 0x3a83126f

    move/from16 v16, v9

    move/from16 v17, v10

    .line 616
    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 621
    .local v11, shrinkAnim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x12b

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 623
    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 624
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 625
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 628
    new-instance v5, Lcom/wooboo/adlib_android/_$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wooboo/adlib_android/_$3;-><init>(Lcom/wooboo/adlib_android/_;)V

    .line 634
    const-wide/16 v6, 0x1f4

    .line 627
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/wooboo/adlib_android/_;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/gg;->startAnimation(Landroid/view/animation/Animation;)V

    .line 638
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 649
    .end local v4           #growAnim:Landroid/view/animation/ScaleAnimation;
    .end local v9           #pivotX:F
    .end local v10           #pivotY:F
    .end local v11           #shrinkAnim:Landroid/view/animation/ScaleAnimation;
    .end local v18           #animSet:Landroid/view/animation/AnimationSet;
    .end local v19           #firstDuration:J
    :cond_4
    :goto_0
    return-void

    .line 643
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wooboo/adlib_android/__;->h()V

    .line 644
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

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

    .line 403
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 406
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 407
    const/16 v7, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 408
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 407
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 409
    .local v6, topColor:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    const/4 v7, 0x0

    aput v6, v0, v7

    aput p3, v0, v11

    .line 410
    .local v0, gradientColors:[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 411
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 410
    invoke-direct {v4, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 413
    .local v4, shine:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fdc

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 414
    .local v5, stop:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 415
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 417
    .local v3, shadowRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 418
    .local v2, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 420
    return-void
.end method

.method private static drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "c"
    .parameter "r"

    .prologue
    const/high16 v4, 0x4040

    .line 468
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 469
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 470
    const v2, -0x1180d9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 473
    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 475
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 476
    .local v1, path:Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 477
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 476
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 479
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    return-void
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "r"
    .parameter "backgroundColor"
    .parameter "color"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wooboo/adlib_android/_;->generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

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
    .line 429
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 430
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 429
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v2, :cond_0

    .line 433
    invoke-static {v1, p1, p2, p3}, Lcom/wooboo/adlib_android/_;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 436
    :cond_0
    if-eqz p4, :cond_1

    .line 437
    invoke-static {v1, p1}, Lcom/wooboo/adlib_android/_;->drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 439
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private init(Lcom/wooboo/adlib_android/__;Landroid/content/Context;II)V
    .locals 22
    .parameter "adMeta"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/__;->setNetworkListener(Lcom/wooboo/adlib_android/__$N;)V

    .line 148
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 149
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 150
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    .line 152
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

    .line 153
    if-eqz p1, :cond_4

    .line 154
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->setFocusable(Z)V

    .line 155
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->setClickable(Z)V

    .line 156
    const/4 v12, 0x0

    .line 157
    .local v12, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 158
    .local v8, conn:Ljava/net/HttpURLConnection;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    const/16 v18, -0x2

    const/16 v19, -0x2

    .line 158
    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v10, gifViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/wooboo/adlib_android/__;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 162
    .local v13, len:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/wooboo/adlib_android/__;->getImgURL()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 163
    .local v11, imageUrl:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 165
    :try_start_1
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v17, url:Ljava/net/URL;
    sget v18, Lcom/wooboo/adlib_android/___;->k:I

    sget v19, Lcom/wooboo/adlib_android/___;->g:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 168
    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 169
    const/16 v18, 0x1388

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 171
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 193
    .end local v17           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    if-eqz v12, :cond_2

    .line 194
    const/16 v18, 0x9

    :try_start_2
    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    if-gtz v13, :cond_8

    .line 196
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    :goto_1
    const-string v18, ".gif"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 205
    const-string v18, ".GIF"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 206
    :cond_1
    new-instance v18, Lcom/wooboo/adlib_android/gg;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/wooboo/adlib_android/gg;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/gg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 223
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 229
    .end local v11           #imageUrl:Ljava/lang/String;
    :cond_3
    :goto_3
    const/16 v18, 0xf

    move v0, v13

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 230
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/wooboo/adlib_android/__;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/wooboo/adlib_android/_;->AD_FONT:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->textColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, 0x4160

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 237
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, 0x32

    sub-int v18, p3, v18

    .line 238
    const/16 v19, -0x2

    .line 237
    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v5, adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 240
    const/16 v18, 0x2d

    const/16 v19, 0x2

    const/16 v20, 0x6

    .line 241
    const/16 v21, 0x6

    .line 240
    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V

    .line 264
    :goto_5
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, 0x30

    const/16 v19, 0x30

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v14, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->padding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->padding:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->padding:I

    move/from16 v21, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    new-instance v18, Landroid/widget/ProgressBar;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->activityIndicator:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V

    .line 273
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/wooboo/adlib_android/_;->ADS_BY_WOOBOO_FONT:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 278
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getTextColor()I

    move-result v19

    .line 277
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, 0x4120

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "Ads by Wooboo"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    const/16 v18, -0x2

    .line 287
    const/16 v19, -0x2

    .line 285
    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v6, bTVP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 289
    const/16 v18, 0x0

    const/16 v19, 0x18

    sub-int v19, p4, v19

    .line 290
    const/16 v20, 0x6

    const/16 v21, 0x6

    .line 289
    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    :goto_7
    const/16 v18, 0xb

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    if-lez v13, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V

    .line 304
    .end local v5           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #bTVP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #conn:Ljava/net/HttpURLConnection;
    .end local v10           #gifViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #len:I
    .end local v14           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v16, -0x1

    .line 305
    .local v16, tc:I
    const/high16 v7, -0x100

    .line 307
    .local v7, bc:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->setTextColor(I)V

    .line 308
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->setBackgroundColor(I)V

    .line 309
    return-void

    .line 172
    .end local v7           #bc:I
    .end local v16           #tc:I
    .restart local v8       #conn:Ljava/net/HttpURLConnection;
    .restart local v10       #gifViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #imageUrl:Ljava/lang/String;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #len:I
    .restart local v17       #url:Ljava/net/URL;
    :cond_5
    :try_start_4
    sget v18, Lcom/wooboo/adlib_android/___;->k:I

    sget v19, Lcom/wooboo/adlib_android/___;->h:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 173
    sget v18, Lcom/wooboo/adlib_android/___;->k:I

    sget v19, Lcom/wooboo/adlib_android/___;->i:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 174
    :cond_6
    new-instance v15, Ljava/net/Proxy;

    sget-object v18, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 175
    new-instance v19, Ljava/net/InetSocketAddress;

    const-string v20, "10.0.0.172"

    const/16 v21, 0x50

    invoke-direct/range {v19 .. v21}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 174
    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 176
    .local v15, proxy:Ljava/net/Proxy;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 177
    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 178
    const/16 v18, 0x1388

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 180
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    goto/16 :goto_0

    .line 181
    .end local v15           #proxy:Ljava/net/Proxy;
    :cond_7
    sget v18, Lcom/wooboo/adlib_android/___;->k:I

    sget v19, Lcom/wooboo/adlib_android/___;->j:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 182
    new-instance v15, Ljava/net/Proxy;

    sget-object v18, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 183
    new-instance v19, Ljava/net/InetSocketAddress;

    const-string v20, "10.0.0.200"

    const/16 v21, 0x50

    invoke-direct/range {v19 .. v21}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 182
    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 184
    .restart local v15       #proxy:Ljava/net/Proxy;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 185
    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 186
    const/16 v18, 0x1388

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 187
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 188
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v12

    goto/16 :goto_0

    .line 190
    .end local v15           #proxy:Ljava/net/Proxy;
    .end local v17           #url:Ljava/net/URL;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 191
    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/wooboo/adlib_android/_;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v19, "logo.png"

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    goto/16 :goto_0

    .line 198
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 199
    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 218
    .end local v11           #imageUrl:Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 221
    if-eqz v12, :cond_3

    .line 223
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 224
    :catch_2
    move-exception v18

    goto/16 :goto_3

    .line 201
    .restart local v11       #imageUrl:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x4

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x4

    :try_start_7
    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 220
    .end local v11           #imageUrl:Ljava/lang/String;
    :catchall_0
    move-exception v18

    .line 221
    if-eqz v12, :cond_a

    .line 223
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 227
    :cond_a
    :goto_8
    throw v18

    .line 210
    .restart local v11       #imageUrl:Ljava/lang/String;
    :cond_b
    :try_start_9
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    .line 213
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 243
    .end local v11           #imageUrl:Ljava/lang/String;
    .restart local v5       #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_c
    const/16 v18, 0x2d

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 248
    .end local v5           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/wooboo/adlib_android/__;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/wooboo/adlib_android/_;->AD_FONT:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->textColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, 0x4180

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 254
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, 0x32

    sub-int v18, p3, v18

    .line 255
    const/16 v19, -0x2

    .line 254
    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .restart local v5       #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 257
    const/16 v18, 0x2d

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 261
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/_;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 259
    :cond_e
    const/16 v18, 0x2d

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_9

    .line 280
    .restart local v14       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/_;->textColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 292
    .restart local v6       #bTVP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_10
    const/16 v18, 0x0

    const/16 v19, 0x12

    sub-int v19, p4, v19

    .line 293
    const/16 v20, 0x6

    const/16 v21, 0x6

    .line 292
    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_7

    .line 224
    .end local v5           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #bTVP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_3
    move-exception v19

    goto/16 :goto_8

    .restart local v11       #imageUrl:Ljava/lang/String;
    :catch_4
    move-exception v18

    goto/16 :goto_3
.end method

.method private recycleBG()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_2
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 111
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->lastBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->lastBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_3
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->lastBackground:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 505
    .local v0, action:I
    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0, v9}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    .line 530
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 507
    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 509
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 511
    .local v6, y:F
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->getLeft()I

    move-result v2

    .line 512
    .local v2, left:I
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->getTop()I

    move-result v4

    .line 513
    .local v4, top:I
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->getRight()I

    move-result v3

    .line 514
    .local v3, right:I
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->getBottom()I

    move-result v1

    .line 516
    .local v1, bottom:I
    int-to-float v7, v2

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_2

    int-to-float v7, v3

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_2

    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_2

    int-to-float v7, v1

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 517
    :cond_2
    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    goto :goto_0

    .line 519
    :cond_3
    invoke-virtual {p0, v9}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    goto :goto_0

    .line 521
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_4
    if-ne v0, v9, :cond_6

    .line 522
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 523
    invoke-direct {p0}, Lcom/wooboo/adlib_android/_;->click()V

    .line 526
    :cond_5
    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    goto :goto_0

    .line 527
    :cond_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 528
    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    .line 544
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 537
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/wooboo/adlib_android/_;->click()V

    .line 542
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    goto :goto_0
.end method

.method protected getAd()Lcom/wooboo/adlib_android/__;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/wooboo/adlib_android/_;->backgroundColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 658
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 652
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 655
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 551
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v0, :cond_0

    .line 552
    if-eqz p1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 484
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 485
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    .line 488
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 493
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 494
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/wooboo/adlib_android/_;->click()V

    .line 498
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->setPressed(Z)V

    .line 499
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNetworkActivityEnd()V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/wooboo/adlib_android/_$1;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/_$1;-><init>(Lcom/wooboo/adlib_android/_;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public onNetworkActivityStart()V
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/wooboo/adlib_android/_$2;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/_$2;-><init>(Lcom/wooboo/adlib_android/_;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/_;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, brandingVisibility:I
    iget-boolean v8, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v8, :cond_0

    .line 341
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    .line 365
    :cond_0
    if-nez v1, :cond_1

    .line 366
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    .line 367
    .local v7, tf:Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->adMeta:Lcom/wooboo/adlib_android/__;

    invoke-virtual {v8}, Lcom/wooboo/adlib_android/__;->getText()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 369
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 370
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 371
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 372
    .local v5, textSize:F
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 373
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 374
    .local v6, textViewWidth:F
    iget v8, p0, Lcom/wooboo/adlib_android/_;->padding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, p1, v8

    int-to-float v0, v8

    .line 376
    .local v0, adTextViewWidth:F
    cmpl-float v8, v6, v0

    if-lez v8, :cond_1

    .line 377
    const/16 v1, 0x8

    .line 381
    .end local v0           #adTextViewWidth:F
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #textSize:F
    .end local v6           #textViewWidth:F
    .end local v7           #tf:Landroid/graphics/Typeface;
    :cond_1
    iget-boolean v8, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v8, :cond_2

    .line 382
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 386
    iget-boolean v8, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v8, :cond_3

    .line 387
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 388
    .local v3, r:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/wooboo/adlib_android/_;->recycleBG()V

    .line 390
    iget v8, p0, Lcom/wooboo/adlib_android/_;->backgroundColor:I

    .line 389
    invoke-direct {p0, v3, v10, v8}, Lcom/wooboo/adlib_android/_;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 392
    const v8, -0x1180d9

    const/16 v9, -0x4c00

    .line 391
    invoke-direct {p0, v3, v8, v9}, Lcom/wooboo/adlib_android/_;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 394
    iget v8, p0, Lcom/wooboo/adlib_android/_;->backgroundColor:I

    const/4 v9, 0x1

    .line 393
    invoke-direct {p0, v3, v10, v8, v9}, Lcom/wooboo/adlib_android/_;->generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/wooboo/adlib_android/_;->focusedBackground:Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v8, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/_;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_3
    return-void
.end method

.method public recycleAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/wooboo/adlib_android/_;->recycleBG()V

    .line 91
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/gg;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 325
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/_;->backgroundColor:I

    .line 326
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 563
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/wooboo/adlib_android/_;->clickInProgress:Z

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->isPressed()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/wooboo/adlib_android/_;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 565
    .local v1, newBackground:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    .line 566
    .local v0, color:I
    if-eqz p1, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/wooboo/adlib_android/_;->lastBackground:Landroid/graphics/drawable/Drawable;

    .line 568
    iget-object v1, p0, Lcom/wooboo/adlib_android/_;->pressedBackground:Landroid/graphics/drawable/Drawable;

    .line 569
    const/high16 v0, -0x100

    .line 574
    :goto_0
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/_;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v2, p0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->invalidate()V

    .line 585
    .end local v0           #color:I
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void

    .line 571
    .restart local v0       #color:I
    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v1, p0, Lcom/wooboo/adlib_android/_;->lastBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 312
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    .line 313
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->adTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/_;->isPopWindow:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->woobooBrandingTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/wooboo/adlib_android/_;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/_;->postInvalidate()V

    .line 318
    return-void
.end method

.method public startGIFShow()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->start()V

    .line 123
    :cond_0
    return-void
.end method

.method public stopGIFShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->stop()V

    .line 129
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/gg;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    iget-object v0, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/gg;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    iput-object v1, p0, Lcom/wooboo/adlib_android/_;->gifView:Lcom/wooboo/adlib_android/gg;

    .line 136
    :cond_1
    return-void
.end method
