.class Lcom/mopub/mobileads/MraidDisplayController;
.super Lcom/mopub/mobileads/MraidAbstractController;
.source "MraidDisplayController.java"


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x32

.field private static final LOGTAG:Ljava/lang/String; = "MraidDisplayController"

.field private static final VIEWABILITY_TIMER_MILLIS:J = 0xbb8L


# instance fields
.field private mAdWantsCustomCloseButton:Z

.field private mCheckViewabilityTask:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field protected mDensity:F

.field private final mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewable:Z

.field private final mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field private mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOriginalRequestedOrientation:I

.field private mRootView:Landroid/widget/FrameLayout;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

.field private mViewIndexInParent:I

.field private mViewState:Lcom/mopub/mobileads/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .parameter "view"
    .parameter "expStyle"
    .parameter "buttonStyle"

    .prologue
    const/4 v1, -0x1

    .line 116
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidAbstractController;-><init>(Lcom/mopub/mobileads/MraidView;)V

    .line 43
    sget-object v2, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 61
    new-instance v2, Lcom/mopub/mobileads/MraidDisplayController$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidDisplayController$1;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    .line 74
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v2, Lcom/mopub/mobileads/MraidDisplayController$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidDisplayController$2;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    .line 109
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    .line 117
    iput-object p2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    .line 118
    iput-object p3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 120
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, context:Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOriginalRequestedOrientation:I

    .line 125
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initialize()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MraidDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MraidDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MraidDisplayController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MraidDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MraidDisplayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidDisplayController;->onOrientationChanged(I)V

    return-void
.end method

.method private createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 8
    .parameter "expansionContentView"
    .parameter "expandWidth"
    .parameter "expandHeight"

    .prologue
    const/4 v7, -0x1

    .line 301
    const/high16 v5, 0x4248

    iget v6, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 302
    .local v1, closeButtonSize:I
    if-ge p2, v1, :cond_0

    move p2, v1

    .line 303
    :cond_0
    if-ge p3, v1, :cond_1

    move p3, v1

    .line 305
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 306
    .local v3, expansionLayout:Landroid/widget/RelativeLayout;
    const/16 v5, 0x65

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 308
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, dimmingView:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    new-instance v5, Lcom/mopub/mobileads/MraidDisplayController$4;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MraidDisplayController$4;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    const/16 v5, 0x66

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 322
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-object v3
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 168
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    return v1
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 129
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->LOADING:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 130
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeScreenMetrics()V

    .line 131
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeViewabilityTimer()V

    .line 132
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method private initializeScreenMetrics()V
    .locals 19

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 138
    .local v4, context:Landroid/content/Context;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v6, metrics:Landroid/util/DisplayMetrics;
    const-string v13, "window"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 140
    .local v12, wm:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget v13, v6, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    .line 143
    const/4 v8, 0x0

    .local v8, statusBarHeight:I
    const/4 v9, 0x0

    .line 144
    .local v9, titleBarHeight:I
    instance-of v13, v4, Landroid/app/Activity;

    if-eqz v13, :cond_0

    move-object v2, v4

    .line 145
    check-cast v2, Landroid/app/Activity;

    .line 146
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 147
    .local v11, window:Landroid/view/Window;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 148
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 149
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 150
    const v13, 0x1020002

    invoke-virtual {v11, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    .line 151
    .local v3, contentViewTop:I
    sub-int v9, v3, v8

    .line 154
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #contentViewTop:I
    .end local v7           #rect:Landroid/graphics/Rect;
    .end local v11           #window:Landroid/view/Window;
    :cond_0
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 155
    .local v10, widthPixels:I
    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v13, v8

    sub-int v5, v13, v9

    .line 156
    .local v5, heightPixels:I
    int-to-double v13, v10

    const-wide/high16 v15, 0x4064

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    .line 157
    int-to-double v13, v5

    const-wide/high16 v15, 0x4064

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    .line 158
    return-void
.end method

.method private initializeViewabilityTimer()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3
    .parameter "currentRotation"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeScreenMetrics()V

    .line 173
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MraidScreenSizeProperty;->createWithSize(II)Lcom/mopub/mobileads/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 175
    return-void
.end method

.method private resetViewToDefaultState()V
    .locals 6

    .prologue
    .line 214
    iget-object v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 216
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 218
    .local v1, expansionLayout:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 221
    .local v3, placeholderView:Landroid/widget/FrameLayout;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 222
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 223
    iget-object v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->requestLayout()V

    .line 227
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 228
    .local v2, parent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    iget v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewIndexInParent:I

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 231
    return-void
.end method

.method private setOrientationLockEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 334
    .local v2, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 336
    .local v1, activity:Landroid/app/Activity;
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    .line 340
    .local v4, requestedOrientation:I
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 344
    .end local v4           #requestedOrientation:I
    :goto_1
    return-void

    .line 337
    :cond_0
    iget v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOriginalRequestedOrientation:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v3

    .line 342
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "MraidDisplayController"

    const-string v6, "Unable to modify device orientation."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private swapViewWithPlaceholderView()V
    .locals 7

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 282
    .local v2, parent:Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 297
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v3, placeholderView:Landroid/widget/FrameLayout;
    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 288
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 289
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 290
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 293
    :cond_1
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewIndexInParent:I

    .line 294
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected checkViewable()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method protected close()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->resetViewToDefaultState()V

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 200
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 201
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 208
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseListener()Lcom/mopub/mobileads/MraidView$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseListener()Lcom/mopub/mobileads/MraidView$OnCloseListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/mopub/mobileads/MraidView$OnCloseListener;->onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V

    .line 211
    :cond_1
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setVisibility(I)V

    .line 204
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 205
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method protected expand(Ljava/lang/String;IIZZ)V
    .locals 8
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "shouldUseCustomClose"
    .parameter "shouldLockOrientation"

    .prologue
    const/4 v7, -0x1

    .line 235
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    if-ne v2, v3, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    const-string v3, "expand"

    const-string v4, "URL passed to expand() was invalid."

    invoke-virtual {v2, v3, v4}, Lcom/mopub/mobileads/MraidView;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    .line 247
    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/MraidDisplayController;->useCustomClose(Z)V

    .line 248
    invoke-direct {p0, p5}, Lcom/mopub/mobileads/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 249
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->swapViewWithPlaceholderView()V

    .line 251
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    .line 252
    .local v0, expansionContentView:Landroid/view/View;
    if-eqz p1, :cond_3

    .line 253
    new-instance v2, Lcom/mopub/mobileads/MraidView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v5, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v6, Lcom/mopub/mobileads/MraidView$PlacementType;->INLINE:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    .line 255
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    new-instance v3, Lcom/mopub/mobileads/MraidDisplayController$3;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MraidDisplayController$3;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MraidView;->setOnCloseListener(Lcom/mopub/mobileads/MraidView$OnCloseListener;)V

    .line 260
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v2, p1}, Lcom/mopub/mobileads/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    .line 264
    :cond_3
    int-to-float v2, p2

    iget v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p3

    iget v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/mopub/mobileads/MraidDisplayController;->createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v1

    .line 266
    .local v1, expansionViewContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v2, v3, :cond_5

    .line 272
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 275
    :cond_5
    sget-object v2, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 276
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v3}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 277
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnExpandListener()Lcom/mopub/mobileads/MraidView$OnExpandListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnExpandListener()Lcom/mopub/mobileads/MraidView$OnExpandListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mopub/mobileads/MraidView$OnExpandListener;->onExpand(Lcom/mopub/mobileads/MraidView;)V

    goto/16 :goto_0
.end method

.method protected initializeJavaScriptState()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mopub/mobileads/MraidProperty;>;"
    iget v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MraidScreenSizeProperty;->createWithSize(II)Lcom/mopub/mobileads/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-boolean v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    invoke-static {v1}, Lcom/mopub/mobileads/MraidViewableProperty;->createWithViewable(Z)Lcom/mopub/mobileads/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperties(Ljava/util/ArrayList;)V

    .line 188
    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 189
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v2}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 190
    return-void
.end method

.method protected isExpanded()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeCloseButtonEnabled(Z)V
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 347
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 352
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_3

    .line 353
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    if-nez v5, :cond_2

    .line 354
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 355
    .local v3, states:Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v9, [I

    const v6, -0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 357
    new-array v5, v9, [I

    const v6, 0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_pressed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 359
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    .line 360
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/mopub/mobileads/MraidDisplayController$5;

    invoke-direct {v6, p0}, Lcom/mopub/mobileads/MraidDisplayController$5;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .end local v3           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    const/high16 v5, 0x4248

    iget v6, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 370
    .local v2, buttonSize:I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x5

    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 372
    .local v1, buttonLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .end local v1           #buttonLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #buttonSize:I
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    .line 378
    .local v4, view:Lcom/mopub/mobileads/MraidView;
    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 379
    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v5

    invoke-interface {v5, v4, p1}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    goto/16 :goto_0

    .line 374
    .end local v4           #view:Lcom/mopub/mobileads/MraidView;
    :cond_3
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected useCustomClose(Z)V
    .locals 3
    .parameter "shouldUseCustomCloseButton"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    .line 386
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    .line 387
    .local v1, view:Lcom/mopub/mobileads/MraidView;
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 388
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    .line 391
    :cond_0
    return-void

    .line 387
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
