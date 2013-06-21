.class public Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;,
        Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;
    }
.end annotation


# static fields
.field public static final GENERIC_TABLE_VIEW_LINK_NOTIFICATION:Ljava/lang/String; = "tablelink"


# instance fields
.field private _initialDescriptionRequested:Z

.field private _inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

.field private _navRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/NavigationController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/NavigationController;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/NavigationController;Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/NavigationController;Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-direct {p0, p5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setGlobalNav(Lcom/chillingo/crystal/NavigationController;)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z

    return v0
.end method

.method static synthetic access$802(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z

    return p1
.end method

.method private globalNav()Lcom/chillingo/crystal/NavigationController;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    :cond_0
    return-object v0
.end method

.method private setGlobalNav(Lcom/chillingo/crystal/NavigationController;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addBorder(Landroid/widget/ImageView;IIII)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup(Z)V

    return-void
.end method

.method public cleanup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->cleanup(Z)V

    return-void
.end method

.method public frameForItemAt(I)Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$000(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;

    iget-object v1, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "UNUSED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "h is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getCount()I

    move-result v0

    return v0
.end method

.method public heightIWishedICouldBe(F)I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->heightIWishedICouldBe(F)I

    move-result v0

    return v0
.end method

.method public inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    return-object v0
.end method

.method public openUrlString(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->openUrlString(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V

    return-void
.end method

.method public redraw()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->redraw()V

    return-void
.end method

.method public scrollViewToVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setSelection(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(ZLandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6

    const/4 v5, 0x6

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xc

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/lit8 v2, v2, -0xc

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method public setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V

    return-void
.end method

.method public stopReload()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    const/4 v1, 0x0

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$102(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;Z)Z

    return-void
.end method

.method public uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method
