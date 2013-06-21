.class public Lcom/chillingo/crystal/ui/viewgroups/ModalView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;


# static fields
.field public static final CANCEL_BUTTON:Ljava/lang/String; = "button2"

.field public static final ENTER_BUTTON:Ljava/lang/String; = "button1"

.field private static final TAG:Ljava/lang/String; = "ModalView"


# instance fields
.field _delegate:Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;

.field _parent:Landroid/widget/RelativeLayout;

.field _view:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;)V
    .locals 6

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_view:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_delegate:Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;

    iput-object p3, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/chillingo/crystal/serverdata/UIDescription;->singleElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->type()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    cmpl-float v0, v3, v4

    if-gtz v0, :cond_0

    cmpl-float v0, v2, v5

    if-lez v0, :cond_4

    :cond_0
    const/high16 v0, 0x40a0

    sub-float v6, v4, v0

    const/high16 v0, 0x40a0

    sub-float v7, v5, v0

    const/high16 v1, 0x3f80

    const/high16 v0, 0x3f80

    cmpl-float v8, v3, v4

    if-lez v8, :cond_1

    div-float v1, v6, v3

    :cond_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    div-float v0, v7, v2

    :cond_2
    cmpl-float v6, v1, v0

    if-lez v6, :cond_6

    :goto_1
    mul-float v1, v3, v0

    mul-float/2addr v0, v2

    :goto_2
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v1

    float-to-int v3, v0

    invoke-direct {v6, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sub-float v1, v4, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-float v0, v5, v0

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p2}, Lcom/chillingo/crystal/serverdata/UIDescription;->singleElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_view:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_view:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$1;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/ModalView;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_view:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0, v6}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    mul-float v1, v3, v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->setChildrenClickable(Z)V

    return-void
.end method

.method private setChildrenClickable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->hide()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_delegate:Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_delegate:Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;

    invoke-interface {v0, p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;->buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "ModalView"

    const-string v1, "+hide"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "ModalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "ModalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from parent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->setChildrenClickable(Z)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "ModalView"

    const-string v1, "-hide"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;-><init>(Lcom/chillingo/crystal/ui/viewgroups/ModalView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public viewSize()Lcom/chillingo/crystal/utils/Size;
    .locals 4

    new-instance v0, Lcom/chillingo/crystal/utils/Size;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->mTheme:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/utils/Size;-><init>(II)V

    return-object v0
.end method
