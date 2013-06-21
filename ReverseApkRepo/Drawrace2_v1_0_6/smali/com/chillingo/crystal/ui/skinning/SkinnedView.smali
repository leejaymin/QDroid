.class public Lcom/chillingo/crystal/ui/skinning/SkinnedView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final UNSCALED_SWITCH_GROWABLE_AMOUNT:F

.field _backgroundScaleX:F

.field _backgroundScaleY:F

.field private _backgroundSize:Lcom/chillingo/crystal/utils/Size;

.field private _badgesEnabled:Z

.field private _currentDepressedButton:Ljava/lang/String;

.field private _currentDepressedTab:Ljava/lang/String;

.field private _delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

.field private _formModel:Lcom/chillingo/crystal/form/FormModel;

.field _imageActivations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _imageDeactivations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _isTextFieldAdded:Z

.field private _relayOutTextField:Z

.field private _sizeChangedOnce:Z

.field private _skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field private _textField:Landroid/widget/EditText;

.field private _textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private _textWatcher:Landroid/text/TextWatcher;

.field private _touchListener:Landroid/view/View$OnTouchListener;

.field private _uiElement:Lcom/chillingo/crystal/serverdata/UIElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    iput-boolean v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_isTextFieldAdded:Z

    const/high16 v0, 0x4140

    iput v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->UNSCALED_SWITCH_GROWABLE_AMOUNT:F

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v4, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_relayOutTextField:Z

    iput-boolean v4, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_badgesEnabled:Z

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    iput-boolean v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_sizeChangedOnce:Z

    iput v3, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    iput v3, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;-><init>(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textWatcher:Landroid/text/TextWatcher;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundSize:Lcom/chillingo/crystal/utils/Size;

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView$2;-><init>(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_touchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    sget-boolean v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p4, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setWillNotDraw(Z)V

    invoke-virtual {p0, p3, p2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUiElementAndSkinDescription(Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/serverdata/UIElement;)V

    if-eqz p6, :cond_1

    invoke-virtual {p0, p6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDefaultDepressedButtons()V

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chillingo/crystal/ui/skinning/SkinnedView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setModelData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/chillingo/crystal/ui/skinning/SkinnedView;Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private isPathATheme(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "theme://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isPathAYouTubeURL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "crystal-uiwebview://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private modelData()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIElement;->formId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/form/FormModel;->dataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private relayOutAnyInputControls()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const-string v1, "textinput"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_relayOutTextField:Z

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method private removeTextFieldIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_isTextFieldAdded:Z

    :cond_0
    return-void
.end method

.method private replacementDictForUiElement()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    const-string v2, "replace"

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/HashMap;

    array-length v2, v4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Lcom/chillingo/crystal/DataStore;->textForToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v3, v4

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v0

    float-to-int v6, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private setDefaultDepressedButtons()V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->depressedButton()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setModelData(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->formId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {v1, v0, p1}, Lcom/chillingo/crystal/form/FormModel;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setupEditText(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeTextFieldIfNeeded()V

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->relayOutAnyInputControls()V

    return-void
.end method

.method private syncFormModelDefaults()V
    .locals 4

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    const-string v1, "formdefault"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;->objectForField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->formId()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/form/FormModel;->dataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {v0, v2, v1}, Lcom/chillingo/crystal/form/FormModel;->putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private syncFormModelToUI()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "form_textinput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "form_passwordinput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeTextFieldIfNeeded()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const-string v3, "textinput"

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->modelData()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_1

    const-string v1, "form_passwordinput"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v3, v0, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setupEditText(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setupEditText(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v0, "form_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "form_switchwithimage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "form_switchpicturetwoline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "form_switchpicturetwoline_disc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->modelData()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_5

    const-string v0, "switch"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private syncImageActivation()V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    const-string v2, "activate"

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/serverdata/UIElement;->objectForField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ne v5, v8, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/chillingo/crystal/DataStore;->isGoodLocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    :cond_0
    aget-object v4, v4, v7

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    aget-object v6, v4, v7

    aget-object v4, v4, v1

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    const-string v2, "deactivate"

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/serverdata/UIElement;->objectForField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-ne v5, v8, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/chillingo/crystal/DataStore;->isGoodLocked(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    :cond_3
    iget-object v5, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    aget-object v4, v4, v7

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    const-string v1, "disc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    const-string v1, "yesnoconfirm"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;->remove(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static xScaleForWidthWithSkin(IILcom/chillingo/crystal/ui/theming/ThemeDescription;Landroid/content/Context;)F
    .locals 2

    int-to-float v0, p0

    invoke-virtual {p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p3}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float v0, p1

    invoke-virtual {p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static yScaleForWidthWithSkin(IILcom/chillingo/crystal/ui/theming/ThemeDescription;Landroid/content/Context;)F
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p3}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float v0, p0

    invoke-virtual {p2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public backgroundSize()Lcom/chillingo/crystal/utils/Size;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundSize:Lcom/chillingo/crystal/utils/Size;

    return-object v0
.end method

.method public badgesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_badgesEnabled:Z

    return v0
.end method

.method public canExplicitlyHandleTouchEvents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->canExplicitlyHandleTouchEvents()Z

    move-result v0

    return v0
.end method

.method public cleanup()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    return-void
.end method

.method public clearSelectedTab()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    return-void
.end method

.method public delegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    return-object v0
.end method

.method public deselect(J)V
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$3;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView$3;-><init>(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public explicitlyHandleTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v16

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_badgesEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_isTextFieldAdded:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_isTextFieldAdded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->replacementDictForUiElement()Ljava/util/Map;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->size()I

    move-result v19

    const/4 v2, 0x0

    move v15, v2

    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(I)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->type()Ljava/lang/String;

    move-result-object v21

    const-string v2, "themesrc"

    invoke-virtual {v9, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageDeactivations:Ljava/util/Set;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_relayOutTextField:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textFieldLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_relayOutTextField:Z

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/serverdata/UIElement;->hasValueForField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/serverdata/UIElement;->objectForField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    :cond_5
    const-string v3, "image"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object v3, v14

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_imageActivations:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v4, v3

    :cond_6
    invoke-static {v4}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->isPathATheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "theme://"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_7
    :goto_4
    const-string v2, "tab"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_badgesEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v14, :cond_2

    instance-of v2, v14, Ljava/lang/String;

    if-eqz v2, :cond_25

    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    check-cast v14, Ljava/lang/String;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v2

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->drawBadge(Landroid/graphics/Canvas;Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;Landroid/graphics/Rect;FF)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->isPathAYouTubeURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v3

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v4, v0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v4, v0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    if-nez v3, :cond_9

    const-string v5, "blank"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    new-instance v3, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-direct {v3, v4}, Lcom/chillingo/crystal/serverdata/ImageData;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v4

    sget-object v5, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_9
    if-eqz v3, :cond_7

    const-class v4, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast v3, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/ImageData;->imageDataAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_a
    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_b
    const-string v3, "background"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getHeight()I

    move-result v5

    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_6
    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const-string v5, "SkinnedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drawing null bitmap with path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v4, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_6

    :cond_f
    const-string v2, "onlinestatus"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->reachability()Lcom/chillingo/crystal/http/Reachability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v2

    sget-object v3, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    if-eq v2, v3, :cond_10

    const/4 v2, 0x1

    :goto_7
    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->onlineImagePath()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    :cond_11
    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->offlineImagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_12
    const-string v2, "onelinetext"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v2, v3

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v3, v4

    new-instance v4, Landroid/graphics/Point;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    :cond_13
    if-nez v3, :cond_14

    if-eqz v14, :cond_14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_14
    if-eqz v3, :cond_7

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v5, v2

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledMinSize()F

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v6, v2

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    mul-float/2addr v7, v2

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->getColour()I

    move-result v8

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hAlign()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    move-result-object v9

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderOneLineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Point;FFFILcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;)V

    goto/16 :goto_4

    :cond_15
    const-string v2, "multilinetext"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "stretchytext"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    :cond_16
    const/4 v3, 0x0

    if-eqz v17, :cond_17

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    :cond_17
    if-nez v3, :cond_18

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_18
    if-eqz v3, :cond_7

    const-string v2, "stretchytext"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v6, v5

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hasMinSize()Z

    move-result v5

    if-eqz v5, :cond_2c

    if-nez v2, :cond_2c

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledMinSize()F

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    mul-float/2addr v5, v7

    :goto_a
    if-nez v2, :cond_1a

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->vAlign()Z

    move-result v7

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hAlign()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    move-result-object v8

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->getColour()I

    move-result v9

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderMultilineTextItem(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;FFZLcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;I)V

    goto/16 :goto_4

    :cond_19
    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v2

    iput v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledHeight()I

    move-result v2

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->vAlign()Z

    move-result v11

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->hAlign()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;

    move-result-object v12

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->getColour()I

    move-result v13

    move-object/from16 v7, p1

    move-object v8, v3

    move-object v9, v4

    move v10, v6

    invoke-static/range {v7 .. v13}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->renderStretchyText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;FZLcom/chillingo/crystal/ui/theming/ThemeDescriptionItem$HorizontalAlignment;I)V

    goto/16 :goto_4

    :cond_1b
    const-string v2, "button"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "tab"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    :cond_1c
    const-string v2, "tab"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x1

    :goto_b
    const-string v3, "button"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21

    const/4 v3, 0x1

    :goto_c
    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-object/from16 v0, v20

    invoke-interface {v4, v9, v0}, Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;->depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-object/from16 v0, v20

    invoke-interface {v4, v9, v0}, Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;->normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2b

    :cond_1e
    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->depressedButton()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :goto_d
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2a

    :cond_1f
    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->normalButton()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_e
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    :goto_f
    invoke-static {v7}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_23

    if-eqz v7, :cond_28

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_20
    const/4 v2, 0x0

    goto :goto_b

    :cond_21
    const/4 v3, 0x0

    goto :goto_c

    :cond_22
    const/4 v2, 0x1

    if-ne v3, v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    goto :goto_f

    :cond_23
    if-eqz v6, :cond_28

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_10

    :cond_24
    const-string v2, "switch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v9}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->depressedButton()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->imageAtPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->RenderImageItem(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_25
    check-cast v14, Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v2, 0x32

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->drawRectangle(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_27
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :cond_28
    move-object v2, v5

    goto/16 :goto_10

    :cond_29
    move-object v2, v4

    goto/16 :goto_f

    :cond_2a
    move-object v6, v4

    goto/16 :goto_e

    :cond_2b
    move-object v7, v5

    goto/16 :goto_d

    :cond_2c
    move v5, v6

    goto/16 :goto_a

    :cond_2d
    move-object v4, v3

    goto/16 :goto_3
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_sizeChangedOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_sizeChangedOnce:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    int-to-float v1, p1

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->isStretchy()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iput v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iget v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->setScaleFactors(FF)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->relayOutAnyInputControls()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    iput v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iput v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    goto :goto_0
.end method

.method public scaledItemDimensions(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->scaledItemDimensions(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public selectedTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    return-object v0
.end method

.method public setBadgesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_badgesEnabled:Z

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_delegate:Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    return-void
.end method

.method public setDepressedButton(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDepressedButton(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedTab(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSelectedTab(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->containsTab(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    :goto_0
    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const-string v1, "profiletab"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->containsTab(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "profiletab"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedTab:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_sizeChangedOnce:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSkinDescription(Lcom/chillingo/crystal/ui/theming/ThemeDescription;)V
    .locals 3

    sget-boolean v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeTextFieldIfNeeded()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iget v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->setScaleFactors(FF)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncImageActivation()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelDefaults()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelToUI()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDefaultDepressedButtons()V

    return-void
.end method

.method public setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 3

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeTextFieldIfNeeded()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncImageActivation()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelDefaults()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelToUI()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDefaultDepressedButtons()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iget v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->setScaleFactors(FF)V

    return-void
.end method

.method public setUiElementAndSkinDescription(Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 3

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->removeTextFieldIfNeeded()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncImageActivation()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelDefaults()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->syncFormModelToUI()V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDefaultDepressedButtons()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleX:F

    iget v2, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_backgroundScaleY:F

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->setScaleFactors(FF)V

    return-void
.end method

.method public skinDescription()Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    return-object v0
.end method

.method public toggleSwitch()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->touchableItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_skinDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->touchableItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->touchableType()Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    move-result-object v5

    sget-object v6, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Switch:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    if-ne v5, v6, :cond_1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_currentDepressedButton:Ljava/lang/String;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setModelData(Ljava/lang/Object;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setModelData(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v1, v4

    goto :goto_1
.end method

.method public uiElement()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-object v0
.end method
