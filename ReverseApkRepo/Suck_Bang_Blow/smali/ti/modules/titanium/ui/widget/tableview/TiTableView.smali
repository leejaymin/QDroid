.class public Lti/modules/titanium/ui/widget/tableview/TiTableView;
.super Landroid/widget/FrameLayout;
.source "TiTableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;,
        Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiTableView"

.field protected static final MAX_CLASS_NAMES:I = 0x20

.field public static final TI_TABLE_VIEW_ID:I = 0x65


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

.field private filterAttribute:Ljava/lang/String;

.field private filterCaseInsensitive:Z

.field private filterText:Ljava/lang/String;

.field private itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

.field private listView:Landroid/widget/ListView;

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private rowTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

.field private tiContext:Lorg/appcelerator/titanium/TiContext;

.field private viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 10
    .parameter "tiContext"
    .parameter "proxy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "headerView"

    const-string v8, "footerView"

    .line 242
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 243
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 244
    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    .line 247
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__header__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__normal__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__default__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p1, p2}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 253
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 273
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 275
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 276
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 277
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 278
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 279
    move-object v0, p2

    .line 280
    .local v0, fProxy:Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/kroll/KrollProxy;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 310
    invoke-virtual {p2}, Lti/modules/titanium/ui/TableViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    const-string v3, "separatorColor"

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const-string v2, "separatorColor"

    invoke-virtual {p2, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 313
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 314
    const-string v2, "headerView"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const-string v2, "headerView"

    invoke-virtual {p2, v9}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 316
    .local v1, view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 318
    .end local v1           #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    const-string v2, "footerView"

    invoke-virtual {p2, v8}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    const-string v2, "footerView"

    invoke-virtual {p2, v8}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 320
    .restart local v1       #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 323
    .end local v1           #view:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->addView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    return-object v0
.end method

.method private layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;
    .locals 8
    .parameter "viewProxy"

    .prologue
    .line 373
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 374
    .local v4, tiView:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, nativeView:Landroid/view/View;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    .line 377
    .local v3, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v5, -0x2

    .line 378
    .local v5, width:I
    const/4 v0, -0x2

    .line 379
    .local v0, height:I
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    if-eqz v6, :cond_2

    .line 380
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v6, :cond_0

    .line 381
    const/4 v0, -0x1

    .line 386
    :cond_0
    :goto_0
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    if-eqz v6, :cond_3

    .line 387
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v6, :cond_1

    .line 388
    const/4 v5, -0x1

    .line 393
    :cond_1
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 394
    .local v2, p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-object v1

    .line 384
    .end local v2           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 391
    :cond_3
    iget-object v6, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_0
    return-void
.end method

.method public enableCustomSelector()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    .local v0, currentSelector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    .line 344
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_0
    return-void
.end method

.method public filterBy(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 425
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    :cond_0
    return-void
.end method

.method protected getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .parameter "position"

    .prologue
    .line 349
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v1, v1, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 445
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 449
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->release()V

    .line 452
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 453
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 454
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 455
    return-void
.end method

.method protected rowClicked(Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;I)V
    .locals 7
    .parameter "rowView"
    .parameter "position"

    .prologue
    const-string v6, "click"

    .line 353
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getLastClickedViewName()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, viewClicked:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v1

    .line 355
    .local v1, item:Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 356
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-static {v0, v4, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 357
    if-eqz v3, :cond_0

    .line 358
    const-string v4, "layoutName"

    invoke-virtual {v0, v4, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    const-string v4, "searchMode"

    iget-object v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->isFiltered()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v4, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v4, v4, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v4, :cond_1

    .line 363
    iget-object v2, v1, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 364
    .local v2, rp:Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v4, "click"

    invoke-virtual {v2, v6}, Lti/modules/titanium/ui/TableViewRowProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    const-string v4, "click"

    invoke-virtual {v2, v6, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 368
    .end local v2           #rp:Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    invoke-interface {v4, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;->onClick(Lorg/appcelerator/kroll/KrollDict;)V

    .line 369
    return-void
.end method

.method public setFilterAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "filterAttribute"

    .prologue
    .line 436
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setFilterCaseInsensitive(Z)V
    .locals 0
    .parameter "filterCaseInsensitive"

    .prologue
    .line 440
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 441
    return-void
.end method

.method public setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 405
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 406
    return-void
.end method

.method public setSeparatorColor(Ljava/lang/String;)V
    .locals 4
    .parameter "colorstring"

    .prologue
    .line 409
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, sepColor:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 411
    .local v0, dividerHeight:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 413
    return-void
.end method
