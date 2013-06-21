.class public Lcom/adfonic/android/AdfonicView;
.super Lcom/adfonic/android/view/BaseAdfonicView;
.source "AdfonicView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/adfonic/android/ormma/OrmmaView;


# static fields
.field private static final ADFONIC_ORMMA_BRIDGE:Ljava/lang/String; = "AdfonicOrmmaBridge"


# instance fields
.field private bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

.field private currentOrientation:I

.field private defaultHeight:I

.field private defaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private defaultParent:Landroid/view/ViewGroup;

.field private defaultWidth:I

.field private defaultX:I

.field private defaultY:I

.field private expandedProperties:Lcom/adfonic/android/ormma/ExpandProperties;

.field private manageExpandState:Z

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/AdfonicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adfonic/android/AdfonicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/adfonic/android/view/BaseAdfonicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput v0, p0, Lcom/adfonic/android/AdfonicView;->defaultHeight:I

    .line 89
    iput v0, p0, Lcom/adfonic/android/AdfonicView;->defaultWidth:I

    .line 90
    iput v0, p0, Lcom/adfonic/android/AdfonicView;->currentOrientation:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adfonic/android/AdfonicView;->manageExpandState:Z

    .line 105
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/adfonic/android/AdfonicView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/adfonic/android/AdfonicView;->changeContentAreaOnUiThread(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/adfonic/android/AdfonicView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->resetContentAreaToDefaultOnUiThread()V

    return-void
.end method

.method private addGlobalListener()V
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 372
    return-void
.end method

.method private changeContentArea(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/adfonic/android/AdfonicView;->manageExpandState:Z

    if-nez v0, :cond_0

    .line 389
    const-string v0, "returning as do not have to manage state"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->v(Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "changeContentArea"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->v(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adfonic/android/AdfonicView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adfonic/android/AdfonicView$1;-><init>(Lcom/adfonic/android/AdfonicView;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private changeContentAreaOnUiThread(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x400

    const/4 v5, 0x0

    .line 427
    iget-object v3, p0, Lcom/adfonic/android/AdfonicView;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/adfonic/android/AdfonicView;->createLinearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 429
    .local v1, fl:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v1}, Lcom/adfonic/android/AdfonicView;->createBackground(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 430
    .local v0, background:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/adfonic/android/AdfonicView;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 431
    .local v2, vg:Landroid/view/ViewGroup;
    iget v3, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    if-ne p2, v3, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 436
    :cond_0
    iget v3, p0, Lcom/adfonic/android/AdfonicView;->maxWidth:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    sub-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 437
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    return-void
.end method

.method private createBackground(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 2
    .parameter "fl"

    .prologue
    .line 446
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, background:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/adfonic/android/AdfonicView$3;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicView$3;-><init>(Lcom/adfonic/android/AdfonicView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 453
    invoke-virtual {v0, p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-object v0
.end method

.method private createButton()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method private createLinearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 442
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private createOrmmaBridge()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;

    invoke-direct {v0, p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;-><init>(Lcom/adfonic/android/ormma/OrmmaView;)V

    iput-object v0, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    .line 354
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    const-string v1, "AdfonicOrmmaBridge"

    invoke-virtual {p0, v0, v1}, Lcom/adfonic/android/AdfonicView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    invoke-interface {v0}, Lcom/adfonic/android/ormma/OrmmaBridge;->ready()V

    .line 356
    return-void
.end method

.method private enableJavascript()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 367
    .local v0, ws:Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 368
    return-void
.end method

.method private getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter "context"

    .prologue
    .line 485
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getMeasureSpec(III)I
    .locals 2
    .parameter "measureSpec"
    .parameter "viewSize"
    .parameter "adSize"

    .prologue
    .line 305
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 306
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 307
    invoke-direct {p0, p1, p3}, Lcom/adfonic/android/AdfonicView;->getSizeToBeUsed(II)I

    move-result p1

    .line 317
    :cond_0
    :goto_0
    return p1

    .line 308
    :cond_1
    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_2

    .line 309
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 311
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 312
    invoke-direct {p0, p1, p3}, Lcom/adfonic/android/AdfonicView;->getSizeToBeUsed(II)I

    move-result p1

    goto :goto_0

    .line 314
    :cond_2
    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private getResolutionFactor(Landroid/app/Activity;)F
    .locals 2
    .parameter "activity"

    .prologue
    .line 338
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 339
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 340
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xa0

    int-to-float v1, v1

    return v1
.end method

.method private getSizeToBeUsed(II)I
    .locals 2
    .parameter "measureSpecSize"
    .parameter "adSizePixels"

    .prologue
    .line 321
    if-lez p2, :cond_0

    .line 322
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/adfonic/android/AdfonicView;->getResolutionFactor(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 324
    :cond_0
    return p1
.end method

.method private hideCloseButton()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->setVewViewCustomProperties()V

    .line 345
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->enableJavascript()V

    .line 346
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->addGlobalListener()V

    .line 347
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->createButton()V

    .line 348
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->showCloseButton()V

    .line 349
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->createOrmmaBridge()V

    .line 350
    return-void
.end method

.method private isKeyboardVisible(I)V
    .locals 6
    .parameter "heightMeasureSpec"

    .prologue
    .line 328
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 329
    .local v1, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 331
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 332
    .local v4, statusBarHeight:I
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 333
    .local v3, screenHeight:I
    sub-int v5, v3, v4

    sub-int v0, v5, v1

    .line 334
    .local v0, diff:I
    div-int/lit8 v5, v3, 0x3

    if-le v0, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/adfonic/android/AdfonicView;->onSoftKeyboardShown(Z)V

    .line 335
    return-void

    .line 334
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private resetContentAreaToDefault()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/adfonic/android/AdfonicView;->manageExpandState:Z

    if-nez v0, :cond_0

    .line 403
    const-string v0, "returning as do not have to manage state"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->v(Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adfonic/android/AdfonicView$2;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicView$2;-><init>(Lcom/adfonic/android/AdfonicView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private resetContentAreaToDefaultOnUiThread()V
    .locals 5

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 416
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 417
    iget-object v2, p0, Lcom/adfonic/android/AdfonicView;->defaultParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 418
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 420
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 423
    iget-object v2, p0, Lcom/adfonic/android/AdfonicView;->defaultParent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adfonic/android/AdfonicView;->defaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 424
    return-void
.end method

.method private resetExpandProperties()V
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getExpandProperties()Lcom/adfonic/android/ormma/ExpandProperties;

    move-result-object v0

    .line 479
    .local v0, ep:Lcom/adfonic/android/ormma/ExpandProperties;
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/ormma/ExpandProperties;->setHeight(I)V

    .line 480
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/ormma/ExpandProperties;->setWidth(I)V

    .line 481
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setExpandProperties(Lcom/adfonic/android/ormma/ExpandProperties;)V

    .line 482
    return-void
.end method

.method private saveDefaultParams()V
    .locals 4

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adfonic/android/AdfonicView;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 459
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->currentOrientation:I

    .line 460
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 461
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 462
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->maxWidth:I

    .line 463
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    .line 464
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->defaultWidth:I

    .line 465
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->defaultHeight:I

    .line 466
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/adfonic/android/AdfonicView;->defaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 468
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 469
    .local v2, position:[I
    invoke-virtual {p0, v2}, Lcom/adfonic/android/AdfonicView;->getLocationOnScreen([I)V

    .line 470
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->defaultX:I

    .line 471
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Lcom/adfonic/android/AdfonicView;->defaultY:I

    .line 472
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->resetExpandProperties()V

    .line 474
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/adfonic/android/AdfonicView;->defaultParent:Landroid/view/ViewGroup;

    .line 475
    return-void
.end method

.method private setVewViewCustomProperties()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setScrollContainer(Z)V

    .line 360
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setVerticalScrollBarEnabled(Z)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setHorizontalScrollBarEnabled(Z)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setBackgroundColor(I)V

    .line 363
    return-void
.end method

.method private showCloseButton()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method


# virtual methods
.method public enableAdLogging(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 273
    invoke-static {p1}, Lcom/adfonic/android/utils/Log;->setAdLoggingEnabled(Z)V

    .line 274
    return-void
.end method

.method public expand()V
    .locals 4

    .prologue
    .line 250
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/adfonic/android/AdfonicView;->manageExpandState:Z

    .line 251
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getExpandProperties()Lcom/adfonic/android/ormma/ExpandProperties;

    move-result-object v0

    .line 252
    .local v0, ep:Lcom/adfonic/android/ormma/ExpandProperties;
    invoke-virtual {v0}, Lcom/adfonic/android/ormma/ExpandProperties;->getHeight()I

    move-result v1

    .line 253
    .local v1, height:I
    invoke-virtual {v0}, Lcom/adfonic/android/ormma/ExpandProperties;->getWidth()I

    move-result v2

    .line 254
    .local v2, width:I
    iget v3, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    if-le v1, v3, :cond_0

    .line 255
    iget v1, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    .line 257
    :cond_0
    iget v3, p0, Lcom/adfonic/android/AdfonicView;->maxWidth:I

    if-le v2, v3, :cond_1

    .line 258
    iget v2, p0, Lcom/adfonic/android/AdfonicView;->maxWidth:I

    .line 260
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/adfonic/android/AdfonicView;->changeContentArea(II)V

    .line 261
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/adfonic/android/AdfonicView;->loadUrl(Ljava/lang/String;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->expand()V

    .line 246
    return-void
.end method

.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->defaultHeight:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->defaultWidth:I

    return v0
.end method

.method public getDefaultX()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->defaultX:I

    return v0
.end method

.method public getDefaultY()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->defaultY:I

    return v0
.end method

.method public getExpandProperties()Lcom/adfonic/android/ormma/ExpandProperties;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->expandedProperties:Lcom/adfonic/android/ormma/ExpandProperties;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/adfonic/android/ormma/ExpandProperties;

    invoke-direct {v0}, Lcom/adfonic/android/ormma/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/adfonic/android/AdfonicView;->expandedProperties:Lcom/adfonic/android/ormma/ExpandProperties;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->expandedProperties:Lcom/adfonic/android/ormma/ExpandProperties;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/adfonic/android/AdfonicView;->maxWidth:I

    return v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "inline"

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/adfonic/android/view/BaseAdfonicView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAdContent(Ljava/lang/String;)V
    .locals 6
    .parameter "adContent"

    .prologue
    .line 298
    new-instance v0, Lcom/adfonic/android/utils/HtmlFormatter;

    invoke-direct {v0}, Lcom/adfonic/android/utils/HtmlFormatter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/adfonic/android/utils/HtmlFormatter;->applyHtmlFormatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    const-string v1, "/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adfonic/android/AdfonicView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    invoke-interface {v0}, Lcom/adfonic/android/ormma/OrmmaBridge;->ready()V

    .line 301
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->resetExpandProperties()V

    .line 302
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 126
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/adfonic/android/AdfonicView;->currentOrientation:I

    if-gez v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->saveDefaultParams()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adfonic/android/AdfonicView;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 139
    .local v0, orientation:I
    iget v1, p0, Lcom/adfonic/android/AdfonicView;->currentOrientation:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/adfonic/android/AdfonicView;->currentOrientation:I

    if-eq v0, v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->resetContentAreaToDefault()V

    .line 141
    iget-object v1, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaBridge;->reset()V

    .line 142
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->saveDefaultParams()V

    .line 144
    :cond_1
    return-void

    .line 130
    .end local v0           #orientation:I
    :pswitch_1
    iget-object v1, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/adfonic/android/ormma/OrmmaBridge;->onKeyboardChange(Z)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 278
    invoke-direct {p0, p2}, Lcom/adfonic/android/AdfonicView;->isKeyboardVisible(I)V

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, requestWidth:I
    const/4 v0, 0x0

    .line 281
    .local v0, requestHeight:I
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getRequest()Lcom/adfonic/android/api/Request;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getRequest()Lcom/adfonic/android/api/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adfonic/android/api/Request;->getAdWidth()F

    move-result v2

    float-to-int v1, v2

    .line 283
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getRequest()Lcom/adfonic/android/api/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adfonic/android/api/Request;->getAdHeight()F

    move-result v2

    float-to-int v0, v2

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p1, v2, v1}, Lcom/adfonic/android/AdfonicView;->getMeasureSpec(III)I

    move-result p1

    .line 286
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p2, v2, v0}, Lcom/adfonic/android/AdfonicView;->getMeasureSpec(III)I

    move-result p2

    .line 287
    invoke-super {p0, p1, p2}, Lcom/adfonic/android/view/BaseAdfonicView;->onMeasure(II)V

    .line 288
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adfonic/android/view/BaseAdfonicView;->onSizeChanged(IIII)V

    .line 293
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    invoke-interface {v0, p1, p2}, Lcom/adfonic/android/ormma/OrmmaBridge;->onSizeChange(II)V

    .line 294
    return-void
.end method

.method public onSoftKeyboardShown(Z)V
    .locals 0
    .parameter "isShowing"

    .prologue
    .line 148
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 233
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 234
    .local v0, position:[I
    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->getLocationOnScreen([I)V

    .line 235
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/adfonic/android/AdfonicView;->defaultX:I

    .line 236
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/adfonic/android/AdfonicView;->defaultY:I

    .line 237
    invoke-super {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->onWindowFocusChanged(Z)V

    .line 238
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/adfonic/android/AdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, c:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/adfonic/android/AdfonicActivity;->getOpenUrlIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public resize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/adfonic/android/AdfonicView;->changeContentArea(II)V

    .line 218
    return-void
.end method

.method public setExpandProperties(Lcom/adfonic/android/ormma/ExpandProperties;)V
    .locals 1
    .parameter "expandProperties"

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/adfonic/android/ormma/ExpandProperties;->isUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->hideCloseButton()V

    .line 195
    :goto_0
    iput-object p1, p0, Lcom/adfonic/android/AdfonicView;->expandedProperties:Lcom/adfonic/android/ormma/ExpandProperties;

    .line 196
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->showCloseButton()V

    goto :goto_0
.end method

.method public setOrmmaBridge(Lcom/adfonic/android/ormma/OrmmaBridge;)V
    .locals 0
    .parameter "ormmaBridge"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/adfonic/android/AdfonicView;->bridge:Lcom/adfonic/android/ormma/OrmmaBridge;

    .line 265
    return-void
.end method

.method public showDefaultSize()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/AdfonicView;->setVisibility(I)V

    .line 228
    invoke-direct {p0}, Lcom/adfonic/android/AdfonicView;->resetContentAreaToDefault()V

    .line 229
    return-void
.end method
