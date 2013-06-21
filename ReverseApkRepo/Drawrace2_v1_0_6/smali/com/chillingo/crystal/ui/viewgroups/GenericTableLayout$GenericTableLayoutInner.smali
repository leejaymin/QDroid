.class public Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericTableLayoutInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$SelectorDrawable;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "GenericTableLayoutInner"


# instance fields
.field _adapter:Landroid/widget/BaseAdapter;

.field private _canReloadCache:Z

.field private _doneInitialScroll:Z

.field private _formModel:Lcom/chillingo/crystal/form/FormModel;

.field private _items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;",
            ">;"
        }
    .end annotation
.end field

.field _refreshMutableDescription:Ljava/lang/Runnable;

.field private _skinnedViewDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _tableRowClickListener:Landroid/view/View$OnClickListener;

.field private _uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_doneInitialScroll:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_skinnedViewDelegate:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_tableRowClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$2;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_adapter:Landroid/widget/BaseAdapter;

    iput-boolean v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$5;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$5;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_refreshMutableDescription:Ljava/lang/Runnable;

    invoke-direct {p0, p6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setSkinnedViewDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    iput-object p4, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {p0, p5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setCacheColorHint(I)V

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$SelectorDrawable;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$SelectorDrawable;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setDrawSelectorOnTop(Z)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$3;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$3;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$4;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/form/FormModel;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_tableRowClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-object v0
.end method

.method private removeUnsupportedElements(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->hasCamera(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imagesubmitcamera"

    invoke-virtual {p1, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeItemWithFormId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "submitcontactsnumbers"

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeItemWithFormId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setAllSwitchesToOn()V
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {v0}, Lcom/chillingo/crystal/form/FormModel;->allKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/form/FormModel;->dataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Lcom/chillingo/crystal/form/FormModel;->putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setSkinnedViewDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_skinnedViewDelegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private skinnedViewDelegate()Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_skinnedViewDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;

    return-object v0
.end method


# virtual methods
.method public addItems()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v11, :cond_1

    const-string v0, "GenericTableViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GenericTableViewController::addItems(), UIDescription = \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->removeUnsupportedElements(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->itemsInGroup(I)I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-virtual {v3, v2, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->elementTypeForItemInGroup(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->setMaintainsAspectRatio(Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->viewSize(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v6

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v7, v0, v10

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    cmpl-float v7, v0, v10

    if-eqz v7, :cond_2

    const/high16 v7, -0x4080

    cmpl-float v7, v0, v7

    if-nez v7, :cond_3

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v7}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v0, v0

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v0, v7

    invoke-virtual {v6}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    float-to-int v0, v0

    float-to-int v6, v6

    invoke-direct {v7, v8, v9, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->elementForItemInGroup(II)Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    iget-object v6, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    new-instance v8, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;

    iget-object v9, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-direct {v8, v9, v7, v5, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;-><init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Landroid/graphics/Rect;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_doneInitialScroll:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$500(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->historyScrollPosition()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_inner:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$600(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setSelection(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_navRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$500(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setHistoryScrollPosition(I)V

    iput-boolean v11, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_doneInitialScroll:Z

    :cond_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public cleanup(Z)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_refreshMutableDescription:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_refreshMutableDescription:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->hideBusy()V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public heightIWishedICouldBe(F)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;

    iget-object v3, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->isStretchy()Z

    move-result v3

    if-nez v3, :cond_0

    int-to-float v1, v1

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->unscaledViewSize()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->themeDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->stretchy()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v5

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$CellDescription;->uiElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/chillingo/crystal/serverdata/UIElement;->stringForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sub-int v5, v6, v5

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledSize()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-static {v0, v5, v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedItemRenderer;->heightForStretchyText(Ljava/lang/String;IF)I

    move-result v0

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->unscaledY()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v0, v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    int-to-float v0, v0

    const/high16 v1, 0x4140

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public makeInitialRequest(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$800(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$802(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Z)Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->dataAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->dataAvailable()Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlMutable()Z

    move-result v0

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_refreshMutableDescription:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->addItems()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->hideBusy()V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z

    goto :goto_1
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "GenericTableLayoutInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification - notified with event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "GenericTableLayoutInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification - handling event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v1

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v1, v0, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "GenericTableLayoutInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotification - FetchManagerResourceStatus.ResourceAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->addItems()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlUpdateGlobalNav()Z

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->loadMainUIDescription()V

    :cond_3
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlSwitchedUser()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/LoginHandler;->userWasSwitched()V

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v2, "waspost"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->sourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/form/FormModelHeap;->remove(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chillingo/crystal/NavigationController;->onNotification(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->hideBusy()V

    :cond_6
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->containsActivateUi()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->reachability()Lcom/chillingo/crystal/http/Reachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->attemptToPrefetchTabs()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->loadMainUIDescription()V

    :cond_7
    return-void

    :cond_8
    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-eq v1, v0, :cond_9

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->BadRequest:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v1, v0, :cond_5

    :cond_9
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_a

    const-string v0, "GenericTableLayoutInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotification - FetchManagerResourceStatus.ResourceUnAvailable or BadRequest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->showModalInternetConnectionErrorDialog()V

    goto/16 :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->addItems()V

    :cond_0
    return-void
.end method

.method public openUrlString(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 4

    invoke-virtual {p2}, Lcom/chillingo/crystal/serverdata/UIElement;->formId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sourceurl"

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->originalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "crystal://selectall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setAllSwitchesToOn()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "submit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "formsubmit"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nostackpush"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v2, "tablelink"

    invoke-virtual {v0, v2, v1}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "submiturlencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "formsubmiturlencoded"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nostackpush"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v2, "imagesubmitcamera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "imagesubmitcamera"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nostackpush"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v2, "imagesubmitlibrary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "imagesubmitlibrary"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nostackpush"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v2, "submitcontacts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "submitcontactsext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/ContactUtils;->arrayOfUserContactEmails(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    const-string v3, "contacts"

    invoke-virtual {v2, v3, v0}, Lcom/chillingo/crystal/form/FormModel;->putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "formsubmit"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const-string v2, "submitcontactsextv2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/ContactUtils;->dictionaryOfContactNamesAndEmails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    const-string v3, "contacts"

    invoke-virtual {v2, v3, v0}, Lcom/chillingo/crystal/form/FormModel;->putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "formsubmit"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const-string v2, "submitcontactsnumbers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/ContactUtils;->dictionaryOfContactNamesAndNumbers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_formModel:Lcom/chillingo/crystal/form/FormModel;

    const-string v3, "contacts"

    invoke-virtual {v2, v3, v0}, Lcom/chillingo/crystal/form/FormModel;->putDataForKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "formsubmit"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public redraw()V
    .locals 0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->addItems()V

    return-void
.end method

.method public resetLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    const/4 v1, 0x0

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->_initialDescriptionRequested:Z
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$802(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;Z)Z

    iput-boolean p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_canReloadCache:Z

    return-void
.end method

.method public setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V

    return-void
.end method

.method public setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UIDescription d cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->redraw()V

    :cond_1
    return-void
.end method

.method public uiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-object v0
.end method
