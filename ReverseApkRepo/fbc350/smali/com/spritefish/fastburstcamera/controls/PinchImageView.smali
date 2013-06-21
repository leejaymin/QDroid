.class public Lcom/spritefish/fastburstcamera/controls/PinchImageView;
.super Landroid/widget/ImageView;
.source "PinchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DURATION:I = 0x64

.field public static final GROW:I = 0x0

.field public static final MAX_SCALE:F = 2.75f

.field public static final MIN_SCALE:F = 0.5f

.field public static final SHRINK:I = 0x1

.field public static final TOUCH_INTERVAL:I = 0x64

.field public static final ZOOM:F = 0.25f

.field private static _interpolator:I


# instance fields
.field distCur:F

.field distDelta:F

.field distPre:F

.field im:Landroid/widget/ImageView;

.field mLastGestureTime:J

.field mPaint:Landroid/graphics/Paint;

.field mScroller:Landroid/widget/Scroller;

.field mTouchSlop:I

.field xCur:F

.field xPre:F

.field xScale:F

.field xSec:F

.field yCur:F

.field yPre:F

.field yScale:F

.field ySec:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x10a0005

    sput v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->_interpolator:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/high16 v1, 0x3f80

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    .line 37
    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 50
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->_init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attr"

    .prologue
    const/high16 v1, 0x3f80

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    .line 37
    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 45
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->_init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "im"

    .prologue
    const/high16 v1, 0x3f80

    .line 54
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    .line 37
    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    iput v1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 55
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->_init()V

    .line 56
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    return-void
.end method

.method private _init()V
    .locals 2

    .prologue
    .line 161
    iput-object p0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mTouchSlop:I

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mScroller:Landroid/widget/Scroller;

    .line 166
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 170
    invoke-virtual {p0, p2}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v10, v2, 0xff

    .line 62
    .local v10, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 64
    .local v14, p_count:I
    packed-switch v10, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 68
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    .line 69
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    .line 71
    const/4 v2, 0x1

    if-le v14, v2, :cond_6

    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xSec:F

    .line 74
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->ySec:F

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xSec:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->ySec:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distCur:F

    .line 78
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distCur:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distPre:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distDelta:F

    .line 81
    const/high16 v3, 0x3e80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x42c8

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    int-to-float v2, v2

    mul-float v15, v3, v2

    .line 82
    .local v15, rate:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 83
    .local v12, now:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mLastGestureTime:J

    sub-long v2, v12, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 84
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mLastGestureTime:J

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, scale:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distDelta:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const/4 v11, 0x0

    .line 88
    .local v11, mode:I
    :goto_2
    packed-switch v11, :pswitch_data_1

    .line 115
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 116
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->_interpolator:I

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mLastGestureTime:J

    .line 146
    .end local v1           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v11           #mode:I
    .end local v12           #now:J
    .end local v15           #rate:F
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xPre:F

    .line 147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yPre:F

    .line 148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distCur:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distPre:F

    goto/16 :goto_0

    .line 81
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 87
    .restart local v1       #scale:Landroid/view/animation/ScaleAnimation;
    .restart local v12       #now:J
    .restart local v15       #rate:F
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distCur:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->distPre:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    const/4 v11, 0x2

    goto :goto_2

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 90
    .restart local v11       #mode:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    const/high16 v3, 0x4030

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 91
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .end local v1           #scale:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    .line 92
    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    add-float/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    .line 93
    move-object/from16 v0, p0

    iget v4, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 94
    move-object/from16 v0, p0

    iget v5, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    add-float/2addr v5, v15

    move-object/from16 v0, p0

    iput v5, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 95
    const/4 v6, 0x1

    .line 96
    const/high16 v7, 0x3f00

    .line 97
    const/4 v8, 0x1

    .line 98
    const/high16 v9, 0x3f00

    .line 91
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 100
    .restart local v1       #scale:Landroid/view/animation/ScaleAnimation;
    goto :goto_3

    .line 102
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    const/high16 v3, 0x3f00

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 103
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .end local v1           #scale:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    .line 104
    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    sub-float/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xScale:F

    .line 105
    move-object/from16 v0, p0

    iget v4, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 106
    move-object/from16 v0, p0

    iget v5, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    sub-float/2addr v5, v15

    move-object/from16 v0, p0

    iput v5, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yScale:F

    .line 107
    const/4 v6, 0x1

    .line 108
    const/high16 v7, 0x3f00

    .line 109
    const/4 v8, 0x1

    .line 110
    const/high16 v9, 0x3f00

    .line 103
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v1       #scale:Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_3

    .line 128
    .end local v1           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v11           #mode:I
    .end local v12           #now:J
    .end local v15           #rate:F
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xPre:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    sub-float v16, v2, v3

    .line 129
    .local v16, xDelta:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yPre:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    sub-float v17, v2, v3

    .line 130
    .local v17, yDelta:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->im:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    sub-float v3, v16, v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    sub-float v4, v17, v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->scrollBy(II)V

    goto/16 :goto_4

    .line 152
    .end local v16           #xDelta:F
    .end local v17           #yDelta:F
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xPre:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->xCur:F

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yPre:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->yCur:F

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/spritefish/fastburstcamera/controls/PinchImageView;->mLastGestureTime:J

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
