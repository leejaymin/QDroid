.class Lcom/admob/android/ads/AdContainer;
.super Landroid/view/View;
.source "AdContainer.java"


# static fields
.field private static final ADS_BY_ADMOB:Ljava/lang/String; = "Ads by AdMob"

.field private static final ADS_BY_ADMOB_FONT:Landroid/graphics/Typeface; = null

.field private static final ADS_BY_ADMOB_FONT_SIZE:F = 9.5f

.field private static final AD_FONT:Landroid/graphics/Typeface; = null

.field private static final AD_FONT_SIZE:F = 13.0f

.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final FOCUS_COLOR:I = -0x1180d9

.field private static final FOCUS_CORNER_ROUNDING:F = 3.0f

.field private static final FOCUS_WIDTH:F = 2.0f

.field private static final GRADIENT_BACKGROUND_COLOR:I = -0x1

.field private static final GRADIENT_STOP:D = 0.4375

.field private static final GRADIENT_TOP_ALPHA:I = 0x7f

.field public static final HEIGHT:I = 0x30

.field private static final HIGHLIGHT_BACKGROUND_COLOR:I = -0x1180d9

.field private static final HIGHLIGHT_COLOR:I = -0x4c00

.field private static final HIGHLIGHT_TEXT_COLOR:I = -0x1000000

.field public static final MAX_WIDTH:I = 0x140

.field private static final PADDING:I = 0x8

.field private static final TEXT_SPACING:I = 0x4


# instance fields
.field private ad:Lcom/admob/android/ads/Ad;

.field private adsByAdmobPaint:Landroid/graphics/Paint;

.field private backgroundColor:I

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdContainer;->AD_FONT:Landroid/graphics/Typeface;

    .line 93
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
    .line 170
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    const/high16 v0, -0x100

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/admob/android/ads/AdContainer;->init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/admob/android/ads/AdContainer;-><init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 200
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    const/high16 v0, -0x100

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/admob/android/ads/AdContainer;->init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method protected static breakIntoLines(Landroid/graphics/Paint;Ljava/lang/String;F)[Ljava/lang/String;
    .locals 13
    .parameter "paint"
    .parameter "string"
    .parameter "width"

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 874
    .local v0, lines:[Ljava/lang/String;
    if-eqz p1, :cond_13

    .line 877
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 883
    .local v10, parsedLines:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 886
    .local v5, startsParagraph:Z
    const/4 v4, 0x0

    .line 892
    .local v4, lineStart:I
    const/4 v2, 0x0

    .line 896
    .local v2, lastBreakableSpot:I
    const/4 v3, 0x0

    .line 903
    .local v3, lastNonWhiteSpace:I
    const-string v0, "0"

    .end local v0           #lines:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 904
    .local v0, charWidth:F
    sub-float/2addr p2, v0

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 909
    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v3

    .end local v3           #lastNonWhiteSpace:I
    .local v7, lastNonWhiteSpace:I
    move v6, v2

    .end local v2           #lastBreakableSpot:I
    .local v6, lastBreakableSpot:I
    move v9, v4

    .end local v4           #lineStart:I
    .local v9, lineStart:I
    move v11, v5

    .end local v5           #startsParagraph:Z
    .local v11, startsParagraph:Z
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 911
    aget-char v2, v0, v1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    aget-char v2, v0, v1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    :cond_0
    const/4 v2, 0x1

    move v4, v2

    .line 914
    .local v4, isSeparator:Z
    :goto_1
    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    move v5, v2

    .line 917
    .local v5, isWhiteSpace:Z
    :goto_2
    aget-char v2, v0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    move v3, v2

    .line 919
    .local v3, isNewLine:Z
    :goto_3
    aget-char v2, v0, v1

    const/16 v8, 0xd

    if-ne v2, v8, :cond_a

    const/4 v2, 0x1

    .line 922
    .local v2, isCarrageReturn:Z
    :goto_4
    if-nez v3, :cond_1

    if-eqz v2, :cond_b

    :cond_1
    const/4 v2, 0x1

    .line 923
    .local v2, isLineBreak:Z
    :goto_5
    sub-int v8, v1, v9

    invoke-virtual {p0, v0, v9, v8}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v8

    .line 926
    .local v8, lineWidth:F
    if-nez v2, :cond_2

    cmpl-float v8, v8, p2

    if-lez v8, :cond_12

    .line 930
    .end local v8           #lineWidth:F
    :cond_2
    if-eqz v2, :cond_c

    .line 932
    move v8, v1

    .line 946
    .local v8, lineEnd:I
    :goto_6
    if-gez v9, :cond_3

    .line 948
    const/4 v9, 0x0

    .line 950
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-le v8, v12, :cond_4

    .line 952
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 954
    :cond_4
    if-le v9, v8, :cond_5

    .line 956
    move v9, v8

    .line 960
    :cond_5
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 961
    .local v9, newLine:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/admob/android/ads/AdContainer;->smartTrim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 962
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 965
    if-eqz v2, :cond_e

    .line 967
    add-int/lit8 v2, v8, 0x1

    .line 970
    .local v2, lineStart:I
    if-eqz v3, :cond_6

    .line 972
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 975
    .end local v3           #isNewLine:Z
    :cond_6
    const/4 v3, 0x1

    .end local v11           #startsParagraph:Z
    .local v3, startsParagraph:Z
    move v8, v2

    .end local v2           #lineStart:I
    .local v8, lineStart:I
    move v9, v3

    .line 985
    .end local v3           #startsParagraph:Z
    .local v9, startsParagraph:Z
    :goto_7
    if-eqz v4, :cond_11

    .line 988
    add-int/lit8 v2, v1, 0x1

    .line 991
    .end local v6           #lastBreakableSpot:I
    .local v2, lastBreakableSpot:I
    :goto_8
    if-eqz v5, :cond_f

    .line 994
    add-int/lit8 v2, v7, 0x1

    move v3, v7

    .line 909
    .end local v7           #lastNonWhiteSpace:I
    .local v3, lastNonWhiteSpace:I
    :goto_9
    add-int/lit8 v1, v1, 0x1

    move v7, v3

    .end local v3           #lastNonWhiteSpace:I
    .restart local v7       #lastNonWhiteSpace:I
    move v6, v2

    .end local v2           #lastBreakableSpot:I
    .restart local v6       #lastBreakableSpot:I
    move v11, v9

    .end local v9           #startsParagraph:Z
    .restart local v11       #startsParagraph:Z
    move v9, v8

    .end local v8           #lineStart:I
    .local v9, lineStart:I
    goto :goto_0

    .line 911
    .end local v4           #isSeparator:Z
    .end local v5           #isWhiteSpace:Z
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto :goto_1

    .line 914
    .restart local v4       #isSeparator:Z
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    goto :goto_2

    .line 917
    .restart local v5       #isWhiteSpace:Z
    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    .line 919
    .local v3, isNewLine:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 922
    .local v2, isCarrageReturn:Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 934
    .local v2, isLineBreak:Z
    :cond_c
    if-le v6, v9, :cond_d

    .line 936
    move v8, v6

    .local v8, lineEnd:I
    goto :goto_6

    .line 942
    .end local v8           #lineEnd:I
    :cond_d
    const/4 v8, 0x1

    sub-int v8, v1, v8

    .restart local v8       #lineEnd:I
    goto :goto_6

    .line 979
    .local v9, newLine:Ljava/lang/String;
    :cond_e
    move v2, v8

    .line 980
    .local v2, lineStart:I
    const/4 v3, 0x0

    .end local v11           #startsParagraph:Z
    .local v3, startsParagraph:Z
    move v8, v2

    .end local v2           #lineStart:I
    .local v8, lineStart:I
    move v9, v3

    .end local v3           #startsParagraph:Z
    .local v9, startsParagraph:Z
    goto :goto_7

    .line 999
    .end local v6           #lastBreakableSpot:I
    .local v2, lastBreakableSpot:I
    :cond_f
    move v3, v1

    .end local v7           #lastNonWhiteSpace:I
    .local v3, lastNonWhiteSpace:I
    goto :goto_9

    .line 1004
    .end local v2           #lastBreakableSpot:I
    .end local v3           #lastNonWhiteSpace:I
    .end local v4           #isSeparator:Z
    .end local v5           #isWhiteSpace:Z
    .end local v8           #lineStart:I
    .restart local v6       #lastBreakableSpot:I
    .restart local v7       #lastNonWhiteSpace:I
    .local v9, lineStart:I
    .restart local v11       #startsParagraph:Z
    :cond_10
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1005
    .local p0, newLine:Ljava/lang/String;
    invoke-static {p0, v11}, Lcom/admob/android/ads/AdContainer;->smartTrim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 1006
    invoke-virtual {v10, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result p0

    .end local p0           #newLine:Ljava/lang/String;
    new-array p0, p0, [Ljava/lang/String;

    .line 1010
    .local p0, lines:[Ljava/lang/String;
    invoke-virtual {v10, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1013
    .end local v0           #chars:[C
    .end local v1           #i:I
    .end local v6           #lastBreakableSpot:I
    .end local v7           #lastNonWhiteSpace:I
    .end local v9           #lineStart:I
    .end local v10           #parsedLines:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v11           #startsParagraph:Z
    :goto_a
    return-object p0

    .restart local v0       #chars:[C
    .restart local v1       #i:I
    .restart local v4       #isSeparator:Z
    .restart local v5       #isWhiteSpace:Z
    .restart local v6       #lastBreakableSpot:I
    .restart local v7       #lastNonWhiteSpace:I
    .restart local v8       #lineStart:I
    .local v9, startsParagraph:Z
    .restart local v10       #parsedLines:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p0, paint:Landroid/graphics/Paint;
    :cond_11
    move v2, v6

    .end local v6           #lastBreakableSpot:I
    .restart local v2       #lastBreakableSpot:I
    goto :goto_8

    .end local v8           #lineStart:I
    .local v2, isLineBreak:Z
    .local v3, isNewLine:Z
    .restart local v6       #lastBreakableSpot:I
    .local v9, lineStart:I
    .restart local v11       #startsParagraph:Z
    :cond_12
    move v8, v9

    .end local v9           #lineStart:I
    .restart local v8       #lineStart:I
    move v9, v11

    .end local v11           #startsParagraph:Z
    .local v9, startsParagraph:Z
    goto :goto_7

    .end local v1           #i:I
    .end local v2           #isLineBreak:Z
    .end local v3           #isNewLine:Z
    .end local v4           #isSeparator:Z
    .end local v5           #isWhiteSpace:Z
    .end local v6           #lastBreakableSpot:I
    .end local v7           #lastNonWhiteSpace:I
    .end local v8           #lineStart:I
    .end local v9           #startsParagraph:Z
    .end local v10           #parsedLines:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, lines:[Ljava/lang/String;
    :cond_13
    move-object p0, v0

    .end local v0           #lines:[Ljava/lang/String;
    .local p0, lines:[Ljava/lang/String;
    goto :goto_a
.end method

.method private click()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    invoke-virtual {v0}, Lcom/admob/android/ads/Ad;->clicked()V

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 845
    :cond_0
    return-void
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 12
    .parameter "c"
    .parameter "r"
    .parameter "backgroundColor"
    .parameter "color"

    .prologue
    const/4 v11, 0x1

    .line 507
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 508
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 510
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 514
    const/16 v7, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 515
    .local v6, topColor:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    const/4 v7, 0x0

    aput v6, v0, v7

    aput p3, v0, v11

    .line 516
    .local v0, gradientColors:[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v4, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 518
    .local v4, shine:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fdc

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 519
    .local v5, stop:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 520
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 524
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 525
    .local v3, shadowRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 526
    .local v2, shadowPaint:Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 528
    return-void
.end method

.method private static drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "c"
    .parameter "r"

    .prologue
    const/high16 v4, 0x4040

    .line 668
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 669
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 670
    const v2, -0x1180d9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 671
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 672
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 673
    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 675
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 676
    .local v1, path:Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 678
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 679
    return-void
.end method

.method private static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "c"
    .parameter "r"
    .parameter "tile"

    .prologue
    .line 541
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 542
    .local v0, paint:Landroid/graphics/Paint;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 543
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 23
    .parameter "c"
    .parameter "r"
    .parameter "adTextColor"

    .prologue
    .line 558
    const/4 v14, 0x0

    .line 559
    .local v14, lines:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 560
    .local v16, textHeight:F
    const/16 v17, 0x0

    .line 561
    .local v17, textLineHeight:F
    const/4 v6, 0x0

    .line 563
    .local v6, adsByAdmobLineHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/admob/android/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v15

    .line 565
    .local v15, text:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/AdContainer;->breakIntoLines(Landroid/graphics/Paint;Ljava/lang/String;F)[Ljava/lang/String;

    move-result-object v14

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 576
    .local v9, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    move-object v0, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v20, v0

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v21, v0

    sub-float v17, v20, v21

    .line 577
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v16, v17, v20

    .line 580
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/admob/android/ads/Ad;->hasImage()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-static {}, Lcom/admob/android/ads/AdManager;->showAdsByAdmob()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const-string v21, "Ads by AdMob"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/admob/android/ads/AdContainer;->breakIntoLines(Landroid/graphics/Paint;Ljava/lang/String;F)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 586
    .local v5, admobFontMetrics:Landroid/graphics/Paint$FontMetrics;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v20, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v21, v0

    sub-float v6, v20, v21

    .line 599
    .end local v5           #admobFontMetrics:Landroid/graphics/Paint$FontMetrics;
    .end local v9           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    :cond_0
    :goto_0
    move/from16 v19, v16

    .line 601
    .local v19, totalHeight:F
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-lez v20, :cond_1

    .line 604
    const/high16 v20, 0x4080

    add-float v20, v20, v19

    add-float v20, v20, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_4

    .line 607
    const/high16 v20, 0x4080

    add-float v19, v19, v20

    .line 610
    add-float v19, v19, v6

    .line 623
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v19

    const/high16 v21, 0x4000

    div-float v18, v20, v21

    .line 625
    .local v18, top:F
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gez v20, :cond_2

    .line 627
    const-string v20, "AdMob SDK"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The ad\'s calculated height ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") is bigger than the view height ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v18, 0x0

    .line 631
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    .line 634
    if-eqz v14, :cond_7

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 637
    .local v8, ascent:I
    move v0, v8

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    .line 639
    move-object v7, v14

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v12, :cond_6

    aget-object v13, v7, v10

    .line 641
    .local v13, line:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move/from16 v2, v20

    move/from16 v3, v18

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 642
    add-float v18, v18, v17

    .line 639
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 590
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #ascent:I
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #line:Ljava/lang/String;
    .end local v18           #top:F
    .end local v19           #totalHeight:F
    .restart local v9       #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    :cond_3
    const-string v20, "AdMob SDK"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 592
    const-string v20, "AdMob SDK"

    const-string v21, "Cannot write \"Ads by AdMob\" because it does not fit onto one line."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    .end local v9           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    .restart local v19       #totalHeight:F
    :cond_4
    const-string v20, "AdMob SDK"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 616
    const-string v20, "AdMob SDK"

    const-string v21, "Cannot write \"Ads by AdMob\" because it will make the ad too tall."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 646
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v8       #ascent:I
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v18       #top:F
    :cond_6
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-lez v20, :cond_7

    .line 648
    move v0, v8

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 651
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const-string v22, "Ads by AdMob"

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    sub-float v11, v20, v21

    .line 652
    .local v11, left:F
    move v0, v8

    neg-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    .line 653
    const-string v20, "Ads by AdMob"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v11

    move/from16 v3, v18

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 656
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #ascent:I
    .end local v10           #i$:I
    .end local v11           #left:F
    .end local v12           #len$:I
    :cond_7
    return-void
.end method

.method private init(Lcom/admob/android/ads/Ad;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "ad"
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    .line 219
    iput-object p1, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    .line 222
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/AdContainer;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/AdContainer;->setClickable(Z)V

    .line 229
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    .line 230
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/admob/android/ads/AdContainer;->AD_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 232
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4150

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    .line 235
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/admob/android/ads/AdContainer;->ADS_BY_ADMOB_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    iget-object v3, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4118

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    const/4 v2, -0x1

    .line 241
    .local v2, tc:I
    const/high16 v0, -0x100

    .line 243
    .local v0, bc:I
    if-eqz p3, :cond_1

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://schemas.android.com/apk/res/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, namespace:Ljava/lang/String;
    const-string v3, "textColor"

    const/4 v4, -0x1

    invoke-interface {p3, v1, v3, v4}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 248
    const-string v3, "backgroundColor"

    const/high16 v4, -0x100

    invoke-interface {p3, v1, v3, v4}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 251
    .end local v1           #namespace:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 253
    return-void
.end method

.method private measureHeight(I)I
    .locals 7
    .parameter "measureSpec"

    .prologue
    const/16 v6, 0x30

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 380
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 382
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_2

    .line 385
    move v0, v2

    .line 398
    :cond_0
    :goto_0
    if-eq v0, v6, :cond_1

    .line 400
    const-string v3, "AdMob SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot render the ad into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vertical pixels because it must be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tall."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    .line 404
    :cond_1
    return v0

    .line 389
    :cond_2
    const/16 v0, 0x30

    .line 392
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 394
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 1
    .parameter "measureSpec"

    .prologue
    .line 366
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 367
    .local v0, specSize:I
    return v0
.end method

.method private static smartTrim(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "string"
    .parameter "startsParagraph"

    .prologue
    .line 1030
    if-eqz p1, :cond_2

    .line 1033
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 1035
    .local v0, len:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    .line 1037
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1040
    :cond_0
    if-gtz v0, :cond_1

    .line 1043
    move-object v1, p0

    .line 1055
    .end local v0           #len:I
    .local v1, trimmed:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1047
    .end local v1           #trimmed:Ljava/lang/String;
    .restart local v0       #len:I
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #trimmed:Ljava/lang/String;
    goto :goto_1

    .line 1052
    .end local v0           #len:I
    .end local v1           #trimmed:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #trimmed:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "AdMob SDK"

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 739
    .local v0, action:I
    const-string v7, "AdMob SDK"

    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 741
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

    .line 744
    :cond_0
    if-nez v0, :cond_2

    .line 746
    invoke-virtual {p0, v9}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 780
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 748
    :cond_2
    if-ne v0, v11, :cond_5

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 752
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 754
    .local v6, y:F
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getLeft()I

    move-result v2

    .line 755
    .local v2, left:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getTop()I

    move-result v4

    .line 756
    .local v4, top:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getRight()I

    move-result v3

    .line 757
    .local v3, right:I
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getBottom()I

    move-result v1

    .line 759
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

    .line 762
    :cond_3
    invoke-virtual {p0, v10}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0

    .line 766
    :cond_4
    invoke-virtual {p0, v9}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0

    .line 769
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_5
    if-ne v0, v9, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 773
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 776
    :cond_6
    invoke-virtual {p0, v10}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v3, "AdMob SDK"

    .line 791
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
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

    .line 796
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 798
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 811
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 800
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 807
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    goto :goto_0
.end method

.method protected getAd()Lcom/admob/android/ads/Ad;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/16 v13, 0x8

    .line 417
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 419
    iget-object v9, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    if-eqz v9, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getWidth()I

    move-result v8

    .line 423
    .local v8, width:I
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->getHeight()I

    move-result v11

    invoke-direct {v7, v9, v10, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    .local v7, viewRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;

    invoke-virtual {v9}, Lcom/admob/android/ads/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 427
    .local v2, icon:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 430
    .local v5, iconRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 432
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 433
    .local v6, iconWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 434
    .local v3, iconHeight:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v3

    div-int/lit8 v4, v9, 0x2

    .line 436
    .local v4, iconIndent:I
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #iconRect:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x8

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v4

    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v11, 0x8

    add-int/2addr v11, v6

    iget v12, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v4

    add-int/2addr v12, v3

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 442
    .restart local v5       #iconRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v9, v9, 0x8

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v13

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .end local v3           #iconHeight:I
    .end local v4           #iconIndent:I
    .end local v6           #iconWidth:I
    .local v0, adRect:Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 461
    const v9, -0x1180d9

    const/16 v10, -0x4c00

    invoke-static {p1, v7, v9, v10}, Lcom/admob/android/ads/AdContainer;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 464
    const/high16 v9, -0x100

    invoke-direct {p0, p1, v0, v9}, Lcom/admob/android/ads/AdContainer;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 481
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 484
    invoke-static {p1, v5, v2}, Lcom/admob/android/ads/AdContainer;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 492
    .end local v0           #adRect:Landroid/graphics/Rect;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v5           #iconRect:Landroid/graphics/Rect;
    .end local v7           #viewRect:Landroid/graphics/Rect;
    .end local v8           #width:I
    :cond_1
    :goto_2
    return-void

    .line 450
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #iconRect:Landroid/graphics/Rect;
    .restart local v7       #viewRect:Landroid/graphics/Rect;
    .restart local v8       #width:I
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x8

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v13

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #adRect:Landroid/graphics/Rect;
    goto :goto_0

    .line 469
    :cond_3
    const/4 v9, -0x1

    iget v10, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    invoke-static {p1, v7, v9, v10}, Lcom/admob/android/ads/AdContainer;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 472
    iget v9, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    invoke-direct {p0, p1, v0, v9}, Lcom/admob/android/ads/AdContainer;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 475
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 477
    invoke-static {p1, v7}, Lcom/admob/android/ads/AdContainer;->drawFocusRing(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 488
    .end local v0           #adRect:Landroid/graphics/Rect;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v5           #iconRect:Landroid/graphics/Rect;
    .end local v7           #viewRect:Landroid/graphics/Rect;
    .end local v8           #width:I
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 490
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "AdMob SDK"

    const-string v10, "Exception raised during onDraw."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v2, "AdMob SDK"

    .line 689
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
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

    .line 694
    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 696
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 700
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v2, "AdMob SDK"

    .line 711
    const-string v0, "AdMob SDK"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
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

    .line 716
    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/admob/android/ads/AdContainer;->click()V

    .line 721
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdContainer;->setPressed(Z)V

    .line 724
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const-string v4, "AdMob SDK"

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, w:I
    const/4 v0, 0x0

    .line 322
    .local v0, h:I
    invoke-direct {p0, p2}, Lcom/admob/android/ads/AdContainer;->measureHeight(I)I

    move-result v0

    .line 324
    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdContainer;->measureWidth(I)I

    move-result v1

    .line 329
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/AdContainer;->setMeasuredDimension(II)V

    .line 331
    const-string v2, "AdMob SDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const-string v2, "AdMob SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdContainer.onMeasure() determined the ad to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pixels."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    if-lez v1, :cond_2

    .line 339
    const/16 v2, 0x80

    if-gt v1, v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    const v3, 0x41119999

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    :cond_2
    :goto_0
    return-void

    .line 344
    :cond_3
    const/16 v2, 0xb0

    if-gt v1, v2, :cond_4

    .line 346
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    const v3, 0x41266667

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    const v3, 0x40f33333

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4150

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    iget-object v2, p0, Lcom/admob/android/ads/AdContainer;->adsByAdmobPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4118

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 288
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->backgroundColor:I

    .line 289
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->postInvalidate()V

    .line 290
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 826
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->invalidate()V

    .line 829
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 264
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdContainer;->textColor:I

    .line 265
    invoke-virtual {p0}, Lcom/admob/android/ads/AdContainer;->postInvalidate()V

    .line 266
    return-void
.end method
