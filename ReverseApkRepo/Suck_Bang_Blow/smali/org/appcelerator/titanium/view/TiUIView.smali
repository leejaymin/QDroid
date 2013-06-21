.class public abstract Lorg/appcelerator/titanium/view/TiUIView;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIView"

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static motionEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field

.field protected layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

.field protected nativeView:Landroid/view/View;

.field protected parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected zIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    .line 704
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchmove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchcancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    .line 73
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 78
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method private applyCustomBackground()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 493
    return-void
.end method

.method private applyCustomBackground(Z)V
    .locals 3
    .parameter "reuseCurrentDrawable"

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 501
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 502
    .local v0, currentDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 503
    if-eqz p1, :cond_2

    .line 504
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    .end local v0           #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_1
    return-void

    .line 506
    .restart local v0       #currentDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 508
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0           #currentDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    goto :goto_0
.end method

.method private dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "e"

    .prologue
    .line 712
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 713
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v1, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    return-object v0
.end method

.method private handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .parameter "d"

    .prologue
    const/4 v11, 0x0

    .line 614
    const-string v10, "backgroundImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, bg:Ljava/lang/String;
    const-string v10, "backgroundSelectedImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, bgSelected:Ljava/lang/String;
    const-string v10, "backgroundFocusedImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 617
    .local v7, bgFocused:Ljava/lang/String;
    const-string v10, "backgroundDisabledImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, bgDisabled:Ljava/lang/String;
    const-string v10, "backgroundColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, bgColor:Ljava/lang/String;
    const-string v10, "backgroundSelectedColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, bgSelectedColor:Ljava/lang/String;
    const-string v10, "backgroundFocusedColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 622
    .local v8, bgFocusedColor:Ljava/lang/String;
    const-string v10, "backgroundDisabledColor"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 624
    .local v6, bgDisabledColor:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 625
    .local v0, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {v0, v11, v1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    :cond_0
    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {v0, v11, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    :cond_1
    if-eqz v7, :cond_2

    .line 632
    invoke-virtual {v0, v11, v7}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 634
    :cond_2
    if-eqz v5, :cond_3

    .line 635
    invoke-virtual {v0, v11, v5}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 638
    :cond_3
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v7, :cond_4

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    if-nez v4, :cond_4

    if-nez v8, :cond_4

    if-eqz v6, :cond_6

    .line 641
    :cond_4
    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v10, :cond_5

    .line 642
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 645
    :cond_5
    invoke-static/range {v0 .. v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    .line 646
    .local v9, bgDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v10, v9}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    .end local v9           #bgDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    return-void
.end method

.method private handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 686
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v1

    if-nez v1, :cond_0

    .line 687
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    new-instance v2, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;-><init>()V

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V

    .line 689
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v0

    .line 691
    .local v0, border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    const-string v1, "borderColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    .line 698
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 699
    return-void

    .line 693
    :cond_2
    const-string v1, "borderRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setRadius(F)V

    goto :goto_0

    .line 695
    :cond_3
    const-string v1, "borderWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setWidth(F)V

    goto :goto_0
.end method

.method private hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 205
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 2
    .parameter "d"

    .prologue
    const-string v1, "backgroundFocusedColor"

    .line 212
    const-string v0, "backgroundSelectedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasImage(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 197
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundSelectedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundDisabledImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V
    .locals 6
    .parameter "d"
    .parameter "bgColor"

    .prologue
    const-string v5, "borderRadius"

    const-string v4, "borderWidth"

    const-string v3, "borderColor"

    .line 652
    const-string v1, "borderRadius"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "borderColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "borderWidth"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 655
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v1, :cond_1

    .line 656
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 659
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v1

    if-nez v1, :cond_2

    .line 660
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    new-instance v2, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;-><init>()V

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBorder(Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;)V

    .line 663
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->getBorder()Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;

    move-result-object v0

    .line 665
    .local v0, border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    const-string v1, "borderRadius"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 666
    const-string v1, "borderRadius"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setRadius(F)V

    .line 668
    :cond_3
    const-string v1, "borderColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "borderWidth"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 669
    :cond_4
    const-string v1, "borderColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 670
    const-string v1, "borderColor"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    .line 676
    :cond_5
    :goto_0
    const-string v1, "borderWidth"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 677
    const-string v1, "borderWidth"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setWidth(F)V

    .line 682
    .end local v0           #border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    :cond_6
    return-void

    .line 672
    .restart local v0       #border:Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;
    :cond_7
    if-eqz p2, :cond_5

    .line 673
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable$Border;->setColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 83
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, nv:Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 89
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #nv:Landroid/view/View;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v0           #cv:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected allowRegisterForTouch()Z
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public animate()V
    .locals 5

    .prologue
    .line 177
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    move-result-object v1

    .line 178
    .local v1, builder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 180
    .local v0, as:Landroid/view/animation/AnimationSet;
    sget-boolean v2, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v2, :cond_0

    .line 181
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting animation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->clearAnimation()V

    .line 187
    .end local v0           #as:Landroid/view/animation/AnimationSet;
    :cond_1
    return-void
.end method

.method protected applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 219
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 220
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 224
    if-eqz p1, :cond_2

    .line 225
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-result-object v0

    .line 226
    .local v0, matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->interpolate:Z

    .line 227
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setDuration(J)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setFillAfter(Z)V

    .line 229
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    .end local v0           #matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public blur()V
    .locals 3

    .prologue
    .line 549
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 550
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getIMM()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 551
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 554
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 556
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public clearOpacity(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 795
    return-void
.end method

.method public focus()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 545
    :cond_0
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIMM()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 537
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    return-object v0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndex:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "TiUIView"

    const-string v1, "Attempt to hide null native control"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected layoutNativeView()V
    .locals 4

    .prologue
    .line 238
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 240
    .local v1, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    if-eqz v3, :cond_0

    .line 241
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-object v2, v0

    .line 242
    .local v2, matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->invalidateWithMatrix(Landroid/view/View;)V

    .line 244
    .end local v2           #matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 246
    .end local v1           #a:Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 190
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 193
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->requestSoftInputChange(Lorg/appcelerator/kroll/KrollProxy;Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "focus"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "blur"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "d"

    .prologue
    const-string v9, "opacity"

    const-string v8, "layout"

    const-string v7, "focusable"

    const-string v6, "enabled"

    const-string v5, "backgroundColor"

    .line 427
    const-string v4, "layout"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    const-string v4, "layout"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, layout:Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v4, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 433
    .end local v2           #layout:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 435
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 439
    :cond_1
    const/4 v0, 0x0

    .line 443
    .local v0, bgColor:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 444
    :cond_2
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 449
    :cond_3
    :goto_0
    const-string v4, "opacity"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 451
    const-string v4, "opacity"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 455
    :cond_4
    const-string v4, "visible"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 456
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v5, "visible"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_5
    const-string v4, "enabled"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 459
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v5, "enabled"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    :cond_6
    const-string v4, "focusable"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 463
    const-string v4, "focusable"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v1

    .line 464
    .local v1, focusable:Z
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 465
    if-eqz v1, :cond_b

    .line 466
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyClick(Landroid/view/View;)V

    .line 472
    .end local v1           #focusable:Z
    :cond_7
    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 474
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 475
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 476
    .local v3, matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    if-eqz v3, :cond_8

    .line 477
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    .line 480
    .end local v3           #matrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_8
    return-void

    .line 445
    :cond_9
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    const-string v4, "backgroundColor"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 447
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 456
    :cond_a
    const/4 v5, 0x4

    goto :goto_1

    .line 468
    .restart local v1       #focusable:Z
    :cond_b
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 486
    .local v0, change:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 488
    .end local v0           #change:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 16
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 250
    const-string v13, "left"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 251
    if-eqz p3, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 256
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    .line 423
    .end local p3
    :cond_0
    :goto_1
    return-void

    .line 254
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 257
    :cond_2
    const-string v13, "top"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 258
    if-eqz p3, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 263
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 261
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_2

    .line 264
    :cond_4
    const-string v13, "center"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 267
    :cond_5
    const-string v13, "right"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 268
    if-eqz p3, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 273
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_3

    .line 274
    :cond_7
    const-string v13, "bottom"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 275
    if-eqz p3, :cond_8

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 280
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 278
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_4

    .line 281
    :cond_9
    const-string v13, "size"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 282
    move-object/from16 v0, p3

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollDict;

    move v13, v0

    if-eqz v13, :cond_a

    .line 283
    move-object/from16 v0, p3

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v6, v0

    .line 284
    .local v6, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "width"

    const-string v14, "width"

    invoke-virtual {v6, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 285
    const-string v13, "height"

    const-string v14, "height"

    invoke-virtual {v6, v14}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_1

    .line 286
    .end local v6           #d:Lorg/appcelerator/kroll/KrollDict;
    :cond_a
    if-eqz p3, :cond_0

    .line 287
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported property type ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") for key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Must be an object/dictionary"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 289
    :cond_b
    const-string v13, "height"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 290
    if-eqz p3, :cond_d

    .line 291
    const-string v13, "auto"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 301
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 295
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    goto :goto_5

    .line 299
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_5

    .line 302
    :cond_e
    const-string v13, "width"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 303
    if-eqz p3, :cond_10

    .line 304
    const-string v13, "auto"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v14

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 314
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 308
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    goto :goto_6

    .line 312
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput-object v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_6

    .line 315
    :cond_11
    const-string v13, "zIndex"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 316
    if-eqz p3, :cond_12

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v14

    iput v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 321
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 319
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object v13, v0

    const/4 v14, 0x0

    iput v14, v13, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_7

    .line 322
    :cond_13
    const-string v13, "focusable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 323
    const-string v13, "focusable"

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    .line 324
    .local v7, focusable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v13, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 325
    if-eqz v7, :cond_14

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 328
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 330
    .end local v7           #focusable:Z
    :cond_15
    const-string v13, "touchEnabled"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    .line 332
    :cond_16
    const-string v13, "visible"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_17
    const/4 v14, 0x4

    goto :goto_8

    .line 334
    :cond_18
    const-string v13, "enabled"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 336
    :cond_19
    const-string v13, "backgroundPadding"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 337
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not yet implemented."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 338
    :cond_1a
    const-string v13, "opacity"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    const-string v13, "background"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1b

    const-string v13, "border"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 342
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 344
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 346
    .restart local v6       #d:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v10

    .line 347
    .local v10, hasImage:Z
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v9

    .line 348
    .local v9, hasColorState:Z
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v8

    .line 350
    .local v8, hasBorder:Z
    if-nez v10, :cond_1c

    if-nez v9, :cond_1c

    if-eqz v8, :cond_1f

    :cond_1c
    const/4 v13, 0x1

    move v12, v13

    .line 352
    .local v12, requiresCustomBackground:Z
    :goto_9
    if-nez v12, :cond_22

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object v13, v0

    if-eqz v13, :cond_1d

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object v13, v0

    invoke-virtual {v13}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 356
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 359
    :cond_1d
    const-string v13, "backgroundColor"

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 360
    const-string v13, "backgroundColor"

    invoke-static {v6, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 361
    .local v5, bgColor:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    if-eqz v13, :cond_1e

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    .line 409
    .end local v5           #bgColor:Ljava/lang/Integer;
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_1

    .line 350
    .end local v12           #requiresCustomBackground:Z
    :cond_1f
    const/4 v13, 0x0

    move v12, v13

    goto :goto_9

    .line 366
    .restart local v12       #requiresCustomBackground:Z
    :cond_20
    const-string v13, "opacity"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 367
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v13

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 369
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    if-eqz v13, :cond_1e

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    goto :goto_a

    .line 375
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object v13, v0

    if-nez v13, :cond_2a

    const/4 v13, 0x1

    move v11, v13

    .line 376
    .local v11, newBackground:Z
    :goto_b
    if-eqz v11, :cond_23

    .line 377
    new-instance v13, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v13}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 380
    :cond_23
    const/4 v5, 0x0

    .line 382
    .restart local v5       #bgColor:Ljava/lang/Integer;
    if-nez v9, :cond_25

    .line 383
    const-string v13, "backgroundColor"

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 384
    const-string v13, "backgroundColor"

    invoke-static {v6, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 385
    if-nez v11, :cond_24

    const-string v13, "opacity"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    const-string v13, "backgroundColor"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 389
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object v13, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    .line 394
    :cond_25
    if-nez v10, :cond_26

    if-eqz v9, :cond_28

    .line 395
    :cond_26
    if-nez v11, :cond_27

    const-string v13, "background"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 396
    :cond_27
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 400
    :cond_28
    if-eqz v8, :cond_29

    .line 401
    if-eqz v11, :cond_2b

    .line 402
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 407
    :cond_29
    :goto_c
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    goto/16 :goto_a

    .line 375
    .end local v5           #bgColor:Ljava/lang/Integer;
    .end local v11           #newBackground:Z
    :cond_2a
    const/4 v13, 0x0

    move v11, v13

    goto :goto_b

    .line 403
    .restart local v5       #bgColor:Ljava/lang/Integer;
    .restart local v11       #newBackground:Z
    :cond_2b
    const-string v13, "border"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    .line 412
    .end local v5           #bgColor:Ljava/lang/Integer;
    .end local v6           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v8           #hasBorder:Z
    .end local v9           #hasColorState:Z
    .end local v10           #hasImage:Z
    .end local v11           #newBackground:Z
    .end local v12           #requiresCustomBackground:Z
    :cond_2c
    const-string v13, "softKeyboardOnFocus"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 413
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Focus state changed to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not honored until next focus event."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 414
    :cond_2d
    const-string v13, "transform"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 416
    check-cast p3, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .end local p3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    goto/16 :goto_1

    .line 419
    .restart local p3
    :cond_2e
    sget-boolean v13, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v13, :cond_0

    .line 420
    const-string v13, "TiUIView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unhandled property key: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected registerForKeyClick(Landroid/view/View;)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 799
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$3;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$3;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 817
    return-void
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V

    .line 729
    :cond_0
    return-void
.end method

.method protected registerForTouch(Landroid/view/View;)V
    .locals 3
    .parameter "touchable"

    .prologue
    .line 733
    if-nez p1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/view/TiUIView$1;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/view/TiUIView$1;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 754
    .local v0, detector:Landroid/view/GestureDetector;
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIView$2;

    invoke-direct {v1, p0, v0}, Lorg/appcelerator/titanium/view/TiUIView$2;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "TiUIView"

    .line 560
    sget-boolean v4, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v4, :cond_0

    .line 561
    const-string v4, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 564
    .local v2, nv:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 565
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 566
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    .line 567
    .local v3, vg:Landroid/view/ViewGroup;
    sget-boolean v4, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v4, :cond_1

    .line 568
    const-string v4, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group has: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    instance-of v4, v3, Landroid/widget/AdapterView;

    if-nez v4, :cond_2

    .line 571
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 574
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 575
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 576
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 578
    instance-of v4, v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v4, :cond_3

    .line 579
    check-cast v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 581
    :cond_3
    const/4 v1, 0x0

    .line 583
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_4
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 584
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_5

    .line 585
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 588
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, nv:Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 104
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #nv:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setLayoutParams(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 0
    .parameter "layoutParams"

    .prologue
    .line 167
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 168
    return-void
.end method

.method protected setNativeView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const-string v3, "touchEnabled"

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 154
    sget-object v1, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 156
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, clickable:Z
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 162
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    return-void
.end method

.method public setOpacity(F)V
    .locals 1
    .parameter "opacity"

    .prologue
    .line 778
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 779
    return-void
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .parameter "view"
    .parameter "opacity"

    .prologue
    .line 783
    if-eqz p1, :cond_1

    .line 784
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setDrawableOpacity(Landroid/graphics/drawable/Drawable;F)V

    .line 785
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    .line 788
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 790
    :cond_1
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 133
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 134
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 124
    return-void
.end method

.method protected setZIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 172
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndex:I

    .line 173
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->DBG:Z

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "TiUIView"

    const-string v1, "Attempt to show null native control"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method
