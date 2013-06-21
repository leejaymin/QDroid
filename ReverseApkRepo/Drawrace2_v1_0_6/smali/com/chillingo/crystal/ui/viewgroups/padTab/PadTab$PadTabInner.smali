.class public Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/chillingo/crystal/INavigationControllerDelegate;
.implements Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PadTabInner"
.end annotation


# instance fields
.field private final OVERLAY_WIDTH:F

.field private final PAD_NAV_SKIN_DESCRIPTION_BASIC_FILE:Ljava/lang/String;

.field private final PAD_NAV_SKIN_DESCRIPTION_FILE:Ljava/lang/String;

.field private _arrow:Landroid/graphics/drawable/BitmapDrawable;

.field private _arrowView:Landroid/widget/ImageView;

.field private _border:Landroid/graphics/drawable/NinePatchDrawable;

.field private _borderView:Landroid/widget/ImageView;

.field private _busyBorderView:Landroid/widget/ImageView;

.field private _busyLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private _busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field private _busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _buttonPressedRect:Landroid/graphics/Rect;

.field private _contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

.field _navController:Lcom/chillingo/crystal/NavigationController;

.field private _pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field private _spinner:Lcom/chillingo/crystal/views/BusyView;

.field private _spinnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private _tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_border:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyBorderView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v0, "padnav_left"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->PAD_NAV_SKIN_DESCRIPTION_FILE:Ljava/lang/String;

    const-string v0, "padnav_basic_left"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->PAD_NAV_SKIN_DESCRIPTION_BASIC_FILE:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->OVERLAY_WIDTH:F

    new-instance v0, Lcom/chillingo/crystal/NavigationController;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    const-string v1, "progress_indicator_big_noback"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method private amountOfDisplayOverlapOfTableView(Landroid/graphics/Rect;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private hideBusySkin()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private moveArrow()V
    .locals 6

    const/high16 v3, 0x4000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-direct {v4, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    float-to-int v1, v3

    float-to-int v0, v0

    invoke-virtual {v4, v1, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setEverythingEnabled()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showBusySkin(Landroid/graphics/Rect;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/high16 v9, 0x4000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v8, v0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v7

    float-to-int v3, v8

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v6, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyBorderView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getBusyView(Landroid/content/Context;)Lcom/chillingo/crystal/views/BusyView;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->bitmapDimensions()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v7

    float-to-int v3, v8

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v2}, Lcom/chillingo/crystal/NavigationController;->centreRectInRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinnerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/views/BusyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/views/BusyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_spinner:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->startAnimating()V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busySkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->bringChildToFront(Landroid/view/View;)V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v3

    add-int/2addr v0, v3

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->moveArrow()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private useNavBar(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/chillingo/crystal/serverdata/UIElement;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "overlay_border"

    const-string v2, "drawable"

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_border:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_border:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyBorderView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyBorderView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyBorderView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_border:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "overlay_arrow"

    const-string v2, "drawable"

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v7}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setBadgesEnabled(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->preloadTab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v2, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public activateBasicNavBar()V
    .locals 1

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/logout"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->activateBasicNavBar(Ljava/lang/String;)V

    return-void
.end method

.method public activateBasicNavBar(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    :try_start_0
    const-string v0, "padnav_basic_left"

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->useNavBar(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const-string v1, "splashtab"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, p1, v1}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, p1, v1, v6}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const-string v2, "splashtab"

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v4

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v1

    add-int/2addr v1, v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v6, v6}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$2;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$2;-><init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "padnav_left"

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->useNavBar(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "PadTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateGlobalNavBar, requesting tab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    invoke-static {p3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_2

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, p3, v1, v5}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    :cond_3
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v5, v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->loadMainUIDescription()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "PadTab"

    const-string v2, "Error reading in skin description file padnav_left"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1
.end method

.method public areaToShowDialogIn()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    goto :goto_0
.end method

.method public attachTabs(Landroid/widget/RelativeLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/LoginHandler;->isFirstUiActivationToday()Z

    move-result v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    if-ne v0, v7, :cond_3

    const-string v1, "padnav_basic_left"

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->useNavBar(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->preloadTab()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->preloadUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const-string v3, "profiletab"

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3, v4, v4}, Lcom/chillingo/crystal/NavigationController;->setPreloadTab(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v3

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v4

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v1

    add-int/2addr v1, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->containsTab(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v7}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "padnav_left"

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->useNavBar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->loadMainUIDescription()V

    goto :goto_0

    :cond_4
    const-string v2, "splashtab"

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    goto :goto_1
.end method

.method public backgroundColour()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/Theming;->masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->tableBackgroundColour()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setClickable(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setEverythingEnabled()V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setEnabled(Z)V

    return-void
.end method

.method public buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "tab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v5

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v3, v3

    float-to-int v5, v5

    float-to-int v4, v4

    float-to-int v0, v0

    invoke-direct {v6, v3, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p1, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->logUsageDataForTabActivated(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabViewSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->moveArrow()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    if-ne v3, v1, :cond_1

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "backbutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->popView()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->closeUi()V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "closebutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->closeUi()V

    goto :goto_2
.end method

.method public challengeStartConfirmed()V
    .locals 0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->closeUi()V

    return-void
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    const/4 v1, 0x1

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$502(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Z)Z

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->cleanup()V

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    :cond_2
    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-void
.end method

.method public closeUi()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->detachFromView(Z)V

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public displayArea()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v4}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getBaseline()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public fitBorderToContent()V
    .locals 7

    const/high16 v4, 0x4000

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->heightIWishedICouldBe(F)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v3, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    :cond_1
    add-int/2addr v0, v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    const/high16 v4, 0x43a0

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v4}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->amountOfDisplayOverlapOfTableView(Landroid/graphics/Rect;)I

    move-result v4

    sub-int/2addr v0, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->resetLayout(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x140

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    float-to-int v2, v2

    float-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v0, v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setLayoutParams(ZLandroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0, v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setVisibility(I)V

    return-void
.end method

.method public hideBusy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$500(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->fitBorderToContent()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->hideBusySkin()V

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->tableBackgroundColour()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->addBorder(Landroid/widget/ImageView;IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0, v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->forceLayout()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->requestLayout()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    goto :goto_0
.end method

.method public incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-object v0
.end method

.method public isBackButtonDelegate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadMainUIDescription()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/globalnav.cuid"

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, v1, v2, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v2, v3}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v1, v0, v2, v4}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0, v1, v2, v4}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method public mainView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public navigationView()Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method public normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 3

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "PadTabInner"

    const-string v2, "Exception thrown from onLayout"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_isCleanedUp:Z
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$500(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    const-class v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    return-void
.end method

.method public poppedView()V
    .locals 0

    return-void
.end method

.method public pushedView()V
    .locals 0

    return-void
.end method

.method public requiresOriginLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setEnabled(Z)V

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->tableBackgroundColour()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-void
.end method

.method public shouldAddBackBarToUiDescription()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBusy()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_buttonPressedRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->showBusySkin(Landroid/graphics/Rect;)V

    return-void
.end method

.method public state()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_pullTabState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method public useOriginNavBar(Z)V
    .locals 0

    return-void
.end method

.method public viewToActOn()Landroid/widget/RelativeLayout;
    .locals 0

    return-object p0
.end method

.method public viewToShowDialogIn()Landroid/widget/RelativeLayout;
    .locals 0

    return-object p0
.end method

.method public willDisplayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public willPopView()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public willPopView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    return-void
.end method

.method public willPushView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_borderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public willPushViewAsResultOfListItemSelected(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    return-void
.end method

.method public willShowModalInternetConnectionErrorDialog()V
    .locals 0

    return-void
.end method

.method public willShowModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public willShowModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 0

    return-void
.end method
