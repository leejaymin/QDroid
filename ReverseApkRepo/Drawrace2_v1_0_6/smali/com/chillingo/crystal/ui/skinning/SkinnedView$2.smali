.class Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/skinning/SkinnedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x4140

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->canExplicitlyHandleTouchEvents()Z

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$200(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->touchableItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->touchableType()Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    move-result-object v5

    sget-object v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    if-ne v5, v1, :cond_4

    move v1, v2

    :goto_1
    sget-object v4, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Button:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    if-ne v5, v4, :cond_5

    move v4, v2

    :goto_2
    sget-object v6, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    if-ne v5, v6, :cond_6

    move v6, v2

    :goto_3
    if-nez v1, :cond_1

    if-eqz v4, :cond_7

    :cond_1
    move v5, v2

    :goto_4
    if-ne v5, v2, :cond_a

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->currentFrame()Landroid/graphics/Rect;

    move-result-object v5

    float-to-int v6, v7

    float-to-int v10, v8

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v2, :cond_8

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$300(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ne v4, v2, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$300(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0, v12}, Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_6
    return v3

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_3

    :cond_7
    move v5, v3

    goto :goto_4

    :cond_8
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$300(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    invoke-static {v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$300(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0, v1}, Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nostackpush"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v2, "tablelink"

    invoke-virtual {v0, v2, v1}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    if-ne v6, v2, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    #calls: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;
    invoke-static {v1, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$400(Lcom/chillingo/crystal/ui/skinning/SkinnedView;Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget v1, v1, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v1, v11

    iget-object v4, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget v4, v4, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v4, v11

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int v1, v7

    float-to-int v4, v8

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->toggleSwitch()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v12}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;)V

    goto/16 :goto_6
.end method
