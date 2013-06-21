.class public Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private _alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

.field private _body:Ljava/lang/String;

.field private _description:Lcom/chillingo/crystal/serverdata/UIDescription;

.field private _parent:Landroid/widget/RelativeLayout;

.field private _popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field private _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_description:Lcom/chillingo/crystal/serverdata/UIDescription;

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_title:Ljava/lang/String;

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_body:Ljava/lang/String;

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_title:Ljava/lang/String;

    iput-object p4, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_body:Ljava/lang/String;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_title:Ljava/lang/String;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_body:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForPopup(Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_description:Lcom/chillingo/crystal/serverdata/UIDescription;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_description:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->singleElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->type()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v0, v0

    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v1

    float-to-int v5, v0

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Lcom/chillingo/crystal/serverdata/UIElement;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_description:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_1

    const-string v3, "AchievementPopup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing popup with size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$2;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$2;-><init>(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->achievementFinishedDisplaying(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;-><init>(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$4;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$4;-><init>(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
