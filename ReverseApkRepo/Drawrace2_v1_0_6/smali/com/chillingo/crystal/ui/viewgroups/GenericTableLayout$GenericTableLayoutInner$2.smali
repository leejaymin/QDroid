.class Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$000(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$000(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v0, 0x3f80

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getWidth()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v5, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->xScaleForWidthWithSkin(IILcom/chillingo/crystal/ui/theming/ThemeDescription;Landroid/content/Context;)F

    move-result v0

    :cond_0
    iget-object v2, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->isStretchy()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->stretchy()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v5, v4

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    if-eqz v2, :cond_1

    iget-object v6, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sub-int v4, v5, v4

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-static {v6, v4, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->heightForStretchyText(Ljava/lang/String;IF)I

    move-result v4

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v2, v0, v4

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-nez p2, :cond_5

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    iget-object v3, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;
    invoke-static {v4}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$300(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/form/FormModel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/chillingo/crystal/DataStore;->logImpressionData(Lcom/chillingo/crystal/serverdata/UIElement;Z)V

    :cond_3
    move-object p2, v0

    :cond_4
    :goto_0
    return-object p2

    :cond_5
    move-object v0, p2

    check-cast v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v2, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v3, v3, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUiElementAndSkinDescription(Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSize(II)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lcom/chillingo/crystal/DataStore;->logImpressionData(Lcom/chillingo/crystal/serverdata/UIElement;Z)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$000(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->href()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
