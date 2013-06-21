.class public Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;
.super Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
.source "TiTableViewRowProxyItem.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TitaniumTableViewItem"

.field private static final LEFT_MARGIN:I = 0x5

.field private static final RIGHT_MARGIN:I = 0x7

.field private static filteredProperties:[Ljava/lang/String;


# instance fields
.field private content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hasControls:Z

.field private height:I

.field private item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

.field private leftImage:Landroid/widget/ImageView;

.field private rightImage:Landroid/widget/ImageView;

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private selectorSource:Ljava/lang/Object;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    .line 384
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "backgroundImage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "backgroundColor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backgroundSelectedImage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "backgroundSelectedColor"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 5
    .parameter "tiContext"

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 47
    iput v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->handler:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMinimumHeight(I)V

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method private filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "d"

    .prologue
    .line 389
    if-nez p1, :cond_0

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 397
    :goto_0
    return-object v2

    .line 391
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 392
    .local v0, filtered:Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 393
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    sget-object v2, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filteredProperties:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 397
    goto :goto_0
.end method


# virtual methods
.method protected addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 4
    .parameter "index"
    .parameter "titleView"
    .parameter "newViewProxy"

    .prologue
    .line 85
    sget-boolean v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "TitaniumTableViewItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was added an old style row, reusing the title TiUILabel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/LabelProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/LabelProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 89
    .local v0, label:Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/LabelProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 90
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 91
    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/LabelProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 92
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method protected applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .parameter "viewProxy"
    .parameter "view"

    .prologue
    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, i:I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 157
    .local v0, childProxies:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p2}, Lorg/appcelerator/titanium/view/TiUIView;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiUIView;

    .line 158
    .local v2, childView:Lorg/appcelerator/titanium/view/TiUIView;
    aget-object v1, v0, v3

    .line 159
    .local v1, childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 160
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 161
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    goto :goto_0

    .line 164
    .end local v1           #childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2           #childView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method

.method protected clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .local v0, arr$:[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 148
    .local v1, childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 149
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1           #childProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method public getRowData()Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object v0
.end method

.method protected getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    iget-object p0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TableViewRowProxy;

    return-object p0
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const-string v5, "backgroundSelectedImage"

    const-string v6, "backgroundSelectedColor"

    .line 409
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v2

    .line 410
    .local v2, rowProxy:Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 411
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    const-string v4, "backgroundSelectedImage"

    invoke-virtual {v2, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, path:Ljava/lang/String;
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 421
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 416
    :cond_1
    const-string v4, "backgroundSelectedColor"

    invoke-virtual {v2, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-virtual {v2}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    const-string v5, "backgroundSelectedColor"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, color:I
    new-instance v4, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;

    invoke-direct {v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewColorSelector;-><init>(I)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hasSelector()Z
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 403
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "backgroundSelectedImage"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "backgroundSelectedColor"

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasView(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move v2, v3

    .line 286
    :goto_0
    return v2

    .line 281
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 282
    .local v1, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-ne v1, p1, :cond_1

    .line 283
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #v:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    move v2, v3

    .line 286
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 347
    move/from16 v5, p2

    .line 348
    .local v5, contentLeft:I
    move/from16 v6, p4

    .line 349
    .local v6, contentRight:I
    sub-int p5, p5, p3

    .line 350
    const/16 p3, 0x0

    .line 352
    sub-int v8, p5, p3

    .line 354
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object v13, v0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 356
    .local v12, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 357
    .local v7, h:I
    const/4 v9, 0x5

    .line 359
    .local v9, leftMargin:I
    add-int v13, v12, v9

    add-int/2addr v5, v13

    .line 360
    sub-int v13, v8, v7

    div-int/lit8 v10, v13, 0x2

    .line 361
    .local v10, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object v13, v0

    add-int v14, p2, v9

    add-int v15, p3, v10

    add-int v16, p2, v9

    add-int v16, v16, v12

    add-int v17, p3, v10

    add-int v17, v17, v7

    invoke-virtual/range {v13 .. v17}, Landroid/widget/ImageView;->layout(IIII)V

    .line 364
    .end local v7           #h:I
    .end local v9           #leftMargin:I
    .end local v10           #offset:I
    .end local v12           #w:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 366
    .restart local v12       #w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 367
    .restart local v7       #h:I
    const/4 v11, 0x7

    .line 369
    .local v11, rightMargin:I
    add-int v13, v12, v11

    sub-int/2addr v6, v13

    .line 370
    sub-int v13, v8, v7

    div-int/lit8 v10, v13, 0x2

    .line 371
    .restart local v10       #offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object v13, v0

    sub-int v14, p4, v12

    sub-int/2addr v14, v11

    add-int v15, p3, v10

    sub-int v16, p4, v11

    add-int v17, p3, v10

    add-int v17, v17, v7

    invoke-virtual/range {v13 .. v17}, Landroid/widget/ImageView;->layout(IIII)V

    .line 374
    .end local v7           #h:I
    .end local v10           #offset:I
    .end local v11           #rightMargin:I
    .end local v12           #w:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasControls:Z

    move v13, v0

    if-eqz v13, :cond_2

    .line 375
    add-int/lit8 v5, p2, 0x5

    .line 376
    const/4 v13, 0x7

    sub-int v6, p4, v13

    .line 379
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object v13, v0

    if-eqz v13, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object v13, v0

    move-object v0, v13

    move v1, v5

    move/from16 v2, p3

    move v3, v6

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->layout(IIII)V

    .line 382
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 292
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 293
    .local v14, w:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 294
    .local v15, wMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 295
    .local v5, h:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 296
    .local v6, hMode:I
    const/4 v7, 0x0

    .line 298
    .local v7, imageHMargin:I
    const/4 v9, 0x0

    .line 299
    .local v9, leftImageWidth:I
    const/4 v8, 0x0

    .line 300
    .local v8, leftImageHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getVisibility()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    .line 304
    add-int/lit8 v7, v7, 0x5

    .line 307
    :cond_0
    const/4 v12, 0x0

    .line 308
    .local v12, rightImageWidth:I
    const/4 v11, 0x0

    .line 309
    .local v11, rightImageHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getVisibility()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v11

    .line 313
    add-int/lit8 v7, v7, 0x7

    .line 316
    :cond_1
    sub-int v16, v14, v9

    sub-int v16, v16, v12

    sub-int v4, v16, v7

    .line 319
    .local v4, adjustedWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v16, v0

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 321
    if-nez v6, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual/range {p1 .. p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v13

    .line 323
    .local v13, table:Lti/modules/titanium/ui/TableViewProxy;
    const/4 v10, 0x0

    .line 324
    .local v10, minRowHeight:I
    if-eqz v13, :cond_2

    const-string v16, "minRowHeight"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 325
    const-string v16, "minRowHeight"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v10

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight()I

    move-result v16

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 330
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 334
    :goto_0
    sget-boolean v16, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->DBG:Z

    if-eqz v16, :cond_3

    .line 335
    const-string v16, "TitaniumTableViewItem"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Row content measure ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-object/from16 v16, v0

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->measureChild(Landroid/view/View;II)V

    .line 341
    .end local v10           #minRowHeight:I
    .end local v13           #table:Lti/modules/titanium/ui/TableViewProxy;
    :cond_4
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setMeasuredDimension(II)V

    .line 342
    return-void

    .line 332
    .restart local v10       #minRowHeight:I
    .restart local v13       #table:Lti/modules/titanium/ui/TableViewProxy;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:I

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0
.end method

.method protected refreshControls()V
    .locals 9

    .prologue
    .line 101
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v7

    invoke-virtual {v7}, Lti/modules/titanium/ui/TableViewRowProxy;->getControls()Ljava/util/ArrayList;

    move-result-object v3

    .line 102
    .local v3, proxies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 104
    .local v2, len:I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 116
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_9

    .line 117
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_7

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/TiUIView;

    move-object v6, v7

    .line 118
    .local v6, view:Lorg/appcelerator/titanium/view/TiUIView;
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 119
    .local v4, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v7

    instance-of v7, v7, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v7, :cond_1

    .line 120
    invoke-virtual {p0, v0, v6, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->addViewToOldRow(ILorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 123
    :cond_1
    if-nez v6, :cond_2

    .line 126
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v6

    .line 127
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 128
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_8

    .line 129
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    :goto_3
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 136
    .local v5, v:Landroid/view/View;
    invoke-virtual {v6, v4}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 137
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 138
    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->applyChildProxies(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 140
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0           #i:I
    .end local v4           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_4
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v2, :cond_0

    .line 107
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiUIView;

    .line 108
    .restart local v6       #view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 109
    .restart local v5       #v:Landroid/view/View;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 113
    .end local v5           #v:Landroid/view/View;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :cond_7
    const/4 v7, 0x0

    move-object v6, v7

    goto/16 :goto_2

    .line 131
    .restart local v4       #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .restart local v6       #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_8
    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 143
    .end local v4           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v6           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_9
    return-void
.end method

.method protected refreshOldStyleRow()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4014

    const/4 v6, 0x0

    const-string v5, "touchEnabled"

    .line 168
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v1

    .line 169
    .local v1, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v4, "touchEnabled"

    invoke-virtual {v1, v5}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    const-string v4, "touchEnabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lti/modules/titanium/ui/TableViewRowProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 174
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    new-instance v5, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v5, v1}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiUILabel;

    .line 177
    .local v2, t:Lti/modules/titanium/ui/widget/TiUILabel;
    invoke-virtual {v2, v1}, Lti/modules/titanium/ui/widget/TiUILabel;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 178
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->filterProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/TiUILabel;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 179
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 180
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 181
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUILabel;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v4, v7, v8, v6}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 183
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    const/4 v5, 0x2

    invoke-direct {v4, v7, v8, v5}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 184
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 185
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v4, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v0           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 426
    invoke-super {p0}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->release()V

    .line 427
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 428
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/view/TiUIView;

    .line 429
    .local v1, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    goto :goto_0

    .line 431
    .end local v1           #view:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->views:Ljava/util/ArrayList;

    .line 433
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v2, :cond_2

    .line 434
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 435
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 437
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 438
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 439
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 441
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    .line 442
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 443
    iput-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 446
    :cond_4
    return-void
.end method

.method public setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 12
    .parameter "rp"

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v7, "backgroundSelectedColor"

    const-string v10, "height"

    .line 190
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    .line 191
    .local v4, props:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v6

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasControls:Z

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, newSelectorSource:Ljava/lang/Object;
    const-string v6, "backgroundSelectedImage"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 195
    const-string v6, "backgroundSelectedImage"

    invoke-virtual {p1, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    .end local v2           #newSelectorSource:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 200
    :cond_1
    iput-object v8, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    :cond_2
    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    .line 203
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->selectorSource:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 204
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getTable()Lti/modules/titanium/ui/TableViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/TableViewProxy;->getTableView()Lti/modules/titanium/ui/widget/TiUITableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/TiUITableView;->getTableView()Lti/modules/titanium/ui/widget/tableview/TiTableView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->enableCustomSelector()V

    .line 207
    :cond_3
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setBackgroundFromProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, clearRightImage:Z
    const-string v6, "hasChild"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 211
    const-string v6, "hasChild"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 212
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_4

    .line 213
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasChildDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 215
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasChildDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    const/4 v0, 0x0

    .line 231
    :cond_5
    :goto_1
    const-string v6, "rightImage"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 232
    const-string v6, "rightImage"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, path:Ljava/lang/String;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v6, v8, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 235
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 236
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    const/4 v0, 0x0

    .line 242
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 243
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_7
    const-string v6, "leftImage"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 249
    const-string v6, "leftImage"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3       #path:Ljava/lang/String;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v6, v8, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5       #url:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 253
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8

    .line 254
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v6, "height"

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 263
    const-string v6, "height"

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 264
    const-string v6, "height"

    invoke-static {v4, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->height:I

    .line 268
    :cond_9
    const-string v6, "layout"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 269
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->content:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v7, "layout"

    invoke-static {v4, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 272
    :cond_a
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->hasControls()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 273
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshControls()V

    .line 277
    :goto_3
    return-void

    .line 196
    .end local v0           #clearRightImage:Z
    .restart local v2       #newSelectorSource:Ljava/lang/Object;
    :cond_b
    const-string v6, "backgroundSelectedColor"

    invoke-virtual {p1, v7}, Lti/modules/titanium/ui/TableViewRowProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    const-string v6, "backgroundSelectedColor"

    invoke-virtual {p1, v7}, Lti/modules/titanium/ui/TableViewRowProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 220
    .end local v2           #newSelectorSource:Ljava/lang/Object;
    .restart local v0       #clearRightImage:Z
    :cond_c
    const-string v6, "hasCheck"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 221
    const-string v6, "hasCheck"

    invoke-static {v4, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 222
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_d

    .line 223
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->createHasCheckDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 225
    :cond_d
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->hasCheckDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 258
    :cond_e
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 275
    :cond_f
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->refreshOldStyleRow()V

    goto :goto_3
.end method

.method public setRowData(Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 74
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    .line 75
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->getRowProxy()Lti/modules/titanium/ui/TableViewRowProxy;

    move-result-object v0

    .line 76
    .local v0, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setTableViewItem(Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;)V

    .line 77
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewRowProxyItem;->setRowData(Lti/modules/titanium/ui/TableViewRowProxy;)V

    .line 78
    return-void
.end method
