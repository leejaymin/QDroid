.class public final Lcom/wooboo/adlib_android/WoobooAdView;
.super Landroid/widget/RelativeLayout;
.source "WoobooAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/WoobooAdView$ER;,
        Lcom/wooboo/adlib_android/WoobooAdView$SW;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x2bc

.field private static final ANIMATION_Z_DEPTH_PERCENTAGE:F = -0.4f

.field private static height:I

.field private static uiThreadHandler:Landroid/os/Handler;

.field private static width:I


# instance fields
.field private ad:Lcom/wooboo/adlib_android/_;

.field private backgroundColor:I

.field private hideWhenNoAd:Z

.field private isOnScreen:Z

.field private listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;

.field private requestInterval:I

.field protected requestingFreshAd:Z

.field private textColor:I

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x30

    sput v0, Lcom/wooboo/adlib_android/WoobooAdView;->height:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/WoobooAdView;->uiThreadHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wooboo/adlib_android/WoobooAdView;->isOnScreen:Z

    .line 147
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setFocusable(Z)V

    .line 148
    const/high16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setDescendantFocusability(I)V

    .line 149
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setClickable(Z)V

    .line 151
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v5, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 153
    move-object v0, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    sput v17, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    .line 155
    const/4 v14, -0x1

    .line 156
    .local v14, tc:I
    const/4 v4, 0x0

    .line 157
    .local v4, bc:I
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/WoobooAdView;->getPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, publisherId:Ljava/lang/String;
    invoke-static {v13}, Lcom/wooboo/adlib_android/___;->c(Ljava/lang/String;)V

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/WoobooAdView;->getMID(Landroid/content/Context;)I

    move-result v7

    .line 160
    .local v7, market_ID:I
    invoke-static {v7}, Lcom/wooboo/adlib_android/___;->e(I)V

    .line 161
    if-eqz p2, :cond_1

    .line 162
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "http://schemas.android.com/apk/res/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 162
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, namespace:Ljava/lang/String;
    const-string v17, "testing"

    const/16 v18, 0x0

    .line 165
    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 167
    .local v15, testing:Z
    if-eqz v15, :cond_0

    .line 168
    invoke-static {v15}, Lcom/wooboo/adlib_android/___;->setInTestMode(Z)V

    .line 171
    :cond_0
    const-string v17, "textColor"

    .line 172
    const/16 v18, -0x1

    .line 171
    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 174
    const-string v17, "backgroundColor"

    const/16 v18, 0x0

    .line 173
    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 177
    const-string v17, "refreshInterval"

    const/16 v18, 0x1e

    .line 176
    move-object/from16 v0, p2

    move-object v1, v10

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 178
    .local v6, freshAdsEvery:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setRequestInterval(I)V

    .line 181
    .end local v6           #freshAdsEvery:I
    .end local v10           #namespace:Ljava/lang/String;
    .end local v15           #testing:Z
    :cond_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setGoneWithoutAd(Z)V

    .line 182
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setTextColor(I)V

    .line 183
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setBackgroundColor(I)V

    .line 185
    sget v17, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    const/16 v18, 0x140

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 186
    const/16 v17, 0x140

    sput v17, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    .line 189
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/___;->m(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lcom/wooboo/adlib_android/___;->tc()V

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/___;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, pit:Ljava/lang/String;
    invoke-static {v11}, Lcom/wooboo/adlib_android/___;->r(Ljava/lang/String;)V

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/___;->gd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 195
    .local v16, uid:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/wooboo/adlib_android/___;->d(Ljava/lang/String;)V

    .line 196
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/___;->gl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, ml:Ljava/lang/String;
    invoke-static {v9}, Lcom/wooboo/adlib_android/___;->o(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, pk:Ljava/lang/String;
    invoke-static {v12}, Lcom/wooboo/adlib_android/___;->_p(Ljava/lang/String;)V

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/wooboo/adlib_android/u;->getInstance(Landroid/content/Context;)Lcom/wooboo/adlib_android/u;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lcom/wooboo/adlib_android/u;->getValue(Ljava/lang/String;)I

    move-result v8

    .line 201
    .local v8, mid:I
    invoke-static {v8}, Lcom/wooboo/adlib_android/___;->setS(I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZIII)V
    .locals 11
    .parameter "context"
    .parameter "Wooboo_PID"
    .parameter "backgroundColor"
    .parameter "textColor"
    .parameter "testMode"
    .parameter "refreshInterval"
    .parameter "height"
    .parameter "Market_ID"

    .prologue
    .line 62
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wooboo/adlib_android/WoobooAdView;->isOnScreen:Z

    .line 65
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setFocusable(Z)V

    .line 66
    const/high16 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setDescendantFocusability(I)V

    .line 67
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setClickable(Z)V

    .line 68
    if-eqz p5, :cond_0

    .line 69
    invoke-static/range {p5 .. p5}, Lcom/wooboo/adlib_android/___;->setInTestMode(Z)V

    .line 72
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 74
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v8, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    .line 75
    invoke-static {p2}, Lcom/wooboo/adlib_android/___;->c(Ljava/lang/String;)V

    .line 76
    const-string v8, "Wooboo SDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Your Wooboo_PID is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static/range {p8 .. p8}, Lcom/wooboo/adlib_android/___;->e(I)V

    .line 78
    const-string v8, "Wooboo SDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The Market_ID is set to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p4}, Lcom/wooboo/adlib_android/WoobooAdView;->setTextColor(I)V

    .line 80
    invoke-virtual {p0, p3}, Lcom/wooboo/adlib_android/WoobooAdView;->setBackgroundColor(I)V

    .line 81
    move-object v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setRequestInterval(I)V

    .line 82
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setGoneWithoutAd(Z)V

    .line 83
    sget v8, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    const/16 v9, 0x140

    if-lt v8, v9, :cond_1

    .line 84
    const/16 v8, 0x140

    sput v8, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->m(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/wooboo/adlib_android/___;->tc()V

    .line 89
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, pit:Ljava/lang/String;
    invoke-static {v5}, Lcom/wooboo/adlib_android/___;->r(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->gd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, uid:Ljava/lang/String;
    invoke-static {v7}, Lcom/wooboo/adlib_android/___;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/wooboo/adlib_android/___;->gl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, ml:Ljava/lang/String;
    invoke-static {v4}, Lcom/wooboo/adlib_android/___;->o(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, pk:Ljava/lang/String;
    invoke-static {v6}, Lcom/wooboo/adlib_android/___;->_p(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/wooboo/adlib_android/u;->getInstance(Landroid/content/Context;)Lcom/wooboo/adlib_android/u;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/wooboo/adlib_android/u;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, mid:I
    invoke-static {v3}, Lcom/wooboo/adlib_android/___;->setS(I)V

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/_;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    return-void
.end method

.method static synthetic access$2(Lcom/wooboo/adlib_android/WoobooAdView;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/WoobooAdView$ER;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;

    return-object v0
.end method

.method static synthetic access$4()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/wooboo/adlib_android/WoobooAdView;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView;->applyFadeIn(Lcom/wooboo/adlib_android/_;)V

    return-void
.end method

.method static synthetic access$6(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView;->applyRotation(Lcom/wooboo/adlib_android/_;)V

    return-void
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->width:I

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/wooboo/adlib_android/WoobooAdView;->height:I

    return v0
.end method

.method private applyFadeIn(Lcom/wooboo/adlib_android/_;)V
    .locals 3
    .parameter "newAd"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/_;->stopGIFShow()V

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    .line 470
    iget-boolean v1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->isOnScreen:Z

    if-eqz v1, :cond_1

    .line 471
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 472
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 473
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 475
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    return-void
.end method

.method private applyRotation(Lcom/wooboo/adlib_android/_;)V
    .locals 7
    .parameter "newAd"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x4000

    .line 483
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/wooboo/adlib_android/_;->setVisibility(I)V

    .line 484
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 485
    .local v3, centerX:F
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 486
    .local v4, centerY:F
    const v1, -0x41333333

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 487
    .local v5, zDepth:F
    new-instance v0, Lcom/wooboo/adlib_android/RA;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/RA;-><init>(FFFFFZ)V

    .line 488
    .local v0, rotation:Lcom/wooboo/adlib_android/RA;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/wooboo/adlib_android/RA;->setDuration(J)V

    .line 489
    invoke-virtual {v0, v6}, Lcom/wooboo/adlib_android/RA;->setFillAfter(Z)V

    .line 490
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/RA;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 491
    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$3;

    invoke-direct {v1, p0, p1}, Lcom/wooboo/adlib_android/WoobooAdView$3;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/RA;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    return-void
.end method

.method private static getMID(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "Wooboo SDK"

    .line 107
    const/4 v3, 0x1

    .line 109
    .local v3, mid:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 110
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 112
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 113
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "Market_ID"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 114
    const-string v4, "Wooboo SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The Market_ID is set to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 116
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Wooboo SDK"

    .line 119
    const-string v4, "Could not read Market_ID meta-data from AndroidManifest.xml."

    .line 118
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const-string v7, "Wooboo SDK"

    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, id:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 129
    .local v3, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 128
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 131
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 132
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "Wooboo_PID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v4, "Wooboo SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wooboo_PID reads from AndroidManifest.xml is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Wooboo SDK"

    .line 139
    const-string v4, "Could not read Wooboo_PID meta-data from AndroidManifest.xml."

    .line 138
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private manageRequestIntervalTimer(Z)V
    .locals 6
    .parameter "start"

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestInterval:I

    if-lez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    .line 326
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$2;

    invoke-direct {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView$2;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;)V

    .line 330
    const-wide/16 v2, 0x7d0

    iget v4, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestInterval:I

    int-to-long v4, v4

    .line 326
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    .line 344
    return-void

    .line 332
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestInterval:I

    if-nez v0, :cond_3

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 337
    :cond_3
    :try_start_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->timer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->backgroundColor:I

    return v0
.end method

.method public getRequestInterval()I
    .locals 2

    .prologue
    .line 299
    iget v1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestInterval:I

    div-int/lit16 v0, v1, 0x3e8

    .line 300
    .local v0, requestIntervalSecs:I
    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->textColor:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->hideWhenNoAd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/16 v0, 0x8

    .line 431
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneWithoutAd()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->hideWhenNoAd:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->isOnScreen:Z

    .line 455
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 456
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->isOnScreen:Z

    .line 461
    invoke-direct {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->manageRequestIntervalTimer(Z)V

    .line 462
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 463
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 447
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 448
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getMeasuredWidth()I

    move-result v0

    .line 449
    .local v0, width:I
    sget v1, Lcom/wooboo/adlib_android/WoobooAdView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 354
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->manageRequestIntervalTimer(Z)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    if-nez p1, :cond_0

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->manageRequestIntervalTimer(Z)V

    goto :goto_0
.end method

.method public requestFreshAd(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 206
    move v1, p1

    .line 207
    .local v1, w:I
    move v0, p2

    .line 209
    .local v0, h:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "Wooboo SDK"

    .line 213
    const-string v3, "You have set ads view invisible.  You must call ads view.setVisibility(View.VISIBLE)."

    .line 211
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 217
    new-instance v2, Lcom/wooboo/adlib_android/WoobooAdView$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/wooboo/adlib_android/WoobooAdView$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;II)V

    .line 294
    invoke-virtual {v2}, Lcom/wooboo/adlib_android/WoobooAdView$1;->start()V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 378
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->backgroundColor:I

    .line 380
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v0, p1}, Lcom/wooboo/adlib_android/_;->setBackgroundColor(I)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->invalidate()V

    .line 384
    return-void
.end method

.method public setGoneWithoutAd(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->hideWhenNoAd:Z

    .line 392
    return-void
.end method

.method public setListener(Lcom/wooboo/adlib_android/WoobooAdView$ER;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView;->listener:Lcom/wooboo/adlib_android/WoobooAdView$ER;

    .line 436
    monitor-exit p0

    .line 439
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRequestInterval(I)V
    .locals 8
    .parameter "requestInterval"

    .prologue
    const/16 v6, 0x258

    const/16 v5, 0x14

    const-string v7, "Fresh ads Interval("

    .line 304
    const/16 v1, 0x14

    .line 305
    .local v1, minSecs:I
    const/16 v0, 0x258

    .line 307
    .local v0, maxSecs:I
    if-gtz p1, :cond_1

    .line 308
    const/4 p1, 0x0

    .line 317
    :cond_0
    :goto_0
    mul-int/lit16 v2, p1, 0x3e8

    .line 318
    .local v2, requestIntervalMillisecs:I
    iput v2, p0, Lcom/wooboo/adlib_android/WoobooAdView;->requestInterval:I

    .line 319
    return-void

    .line 309
    .end local v2           #requestIntervalMillisecs:I
    :cond_1
    if-ge p1, v5, :cond_2

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fresh ads Interval("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    const-string v4, ") seconds must be >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_2
    if-le p1, v6, :cond_0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fresh ads Interval("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    const-string v4, ") seconds must be <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 365
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->textColor:I

    .line 367
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v0, p1}, Lcom/wooboo/adlib_android/_;->setTextColor(I)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->invalidate()V

    .line 371
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    .line 402
    .local v3, originalVisiblity:I
    if-eq v3, p1, :cond_1

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->getChildCount()I

    move-result v1

    .line 406
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 411
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    if-eqz p1, :cond_0

    .line 416
    iget-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v4}, Lcom/wooboo/adlib_android/_;->stopGIFShow()V

    .line 417
    iget-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {p0, v4}, Lcom/wooboo/adlib_android/WoobooAdView;->removeView(Landroid/view/View;)V

    .line 418
    iget-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v4}, Lcom/wooboo/adlib_android/_;->recycleAll()V

    .line 419
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;

    .line 420
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/WoobooAdView;->invalidate()V

    .line 403
    :cond_0
    monitor-exit p0

    .line 424
    .end local v1           #children:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 407
    .restart local v1       #children:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
