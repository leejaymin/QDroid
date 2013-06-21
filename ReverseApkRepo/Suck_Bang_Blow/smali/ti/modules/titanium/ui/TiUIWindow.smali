.class public Lti/modules/titanium/ui/TiUIWindow;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIWindow.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final INTENT_FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field private static final LCAT:Ljava/lang/String; = "TiUIWindow"

.field private static final MSG_ACTIVITY_CREATED:I = 0x3e8

.field private static final MSG_ANIMATE:I = 0x64

.field private static final NEW_ACTIVITY_REQUIRED_KEYS:[Ljava/lang/String; = null

.field private static final WINDOW_ID_PREFIX:Ljava/lang/String; = "window$"

.field private static final WINDOW_ZINDEX:I = 0x7ffffffd

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected activityKey:Ljava/lang/String;

.field protected animate:Z

.field protected handler:Landroid/os/Handler;

.field protected lastHeight:I

.field protected lastWidth:I

.field protected lightWeight:Z

.field protected lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field protected messageId:I

.field protected messenger:Landroid/os/Messenger;

.field protected newActivity:Z

.field protected resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

.field protected windowActivity:Landroid/app/Activity;

.field protected windowContext:Lorg/appcelerator/titanium/TiContext;

.field protected windowId:I

.field protected windowUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/TiUIWindow;->DBG:Z

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "navBarHidden"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "modal"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "windowSoftInputMode"

    aput-object v2, v0, v1

    sput-object v0, Lti/modules/titanium/ui/TiUIWindow;->NEW_ACTIVITY_REQUIRED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 2
    .parameter "proxy"
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 126
    sget-object v0, Lti/modules/titanium/ui/TiUIWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    :cond_0
    iput-boolean v1, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    .line 131
    iput-object p2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 132
    iput-boolean v1, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->handler:Landroid/os/Handler;

    .line 135
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->initContext()V

    .line 136
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleWindowCreated()V

    .line 137
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleBooted()V

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/kroll/KrollDict;Landroid/os/Messenger;I)V
    .locals 6
    .parameter "proxy"
    .parameter "options"
    .parameter "messenger"
    .parameter "messageId"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "tabOpen"

    .line 89
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 90
    iput-boolean v3, p0, Lti/modules/titanium/ui/TiUIWindow;->animate:Z

    .line 92
    sget-object v0, Lti/modules/titanium/ui/TiUIWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/modules/titanium/ui/TiUIWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    :cond_0
    iput-object p3, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    .line 96
    iput p4, p0, Lti/modules/titanium/ui/TiUIWindow;->messageId:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->handler:Landroid/os/Handler;

    .line 99
    iput v2, p0, Lti/modules/titanium/ui/TiUIWindow;->lastWidth:I

    .line 100
    iput v2, p0, Lti/modules/titanium/ui/TiUIWindow;->lastHeight:I

    .line 102
    new-instance v0, Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/appcelerator/kroll/KrollDict;

    aput-object p2, v1, v4

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiPropertyResolver;-><init>([Lorg/appcelerator/kroll/KrollDict;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    .line 103
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->requiresNewActivity()Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    .line 104
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "tabOpen"

    invoke-virtual {p2, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "tabOpen"

    invoke-static {p2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    .line 107
    :cond_1
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    .line 108
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->initContext()V

    .line 109
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->createNewActivity()V

    .line 121
    :goto_1
    return-void

    :cond_2
    move v0, v4

    .line 107
    goto :goto_0

    .line 112
    :cond_3
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->getLayoutArrangement()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 116
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TiUIWindow;->setNativeView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 118
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleWindowCreated()V

    .line 119
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleBooted()V

    goto :goto_1
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/TiUIWindow;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private handleBackgroundColor(Ljava/lang/Object;Z)V
    .locals 3
    .parameter "value"
    .parameter "post"

    .prologue
    .line 395
    if-eqz p1, :cond_1

    .line 396
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    .line 397
    .local v0, cd:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    .end local v0           #cd:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 400
    .restart local v0       #cd:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/TiUIWindow;->setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 403
    .end local v0           #cd:Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v1, "TiUIWindow"

    const-string v2, "Unable to set opacity w/o a backgroundColor"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBackgroundImage(Ljava/lang/Object;Z)V
    .locals 6
    .parameter "value"
    .parameter "post"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, path:Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/titanium/util/TiFileHelper;

    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 412
    .local v2, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 413
    .local v0, bd:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 414
    iget-boolean v3, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-eqz v3, :cond_1

    .line 415
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->nativeView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    .end local v0           #bd:Landroid/graphics/drawable/Drawable;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    :goto_0
    return-void

    .line 417
    .restart local v0       #bd:Landroid/graphics/drawable/Drawable;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_1
    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/TiUIWindow;->setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bindProxies()V
    .locals 3

    .prologue
    .line 252
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v2, v2, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    .line 253
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 254
    .local v0, tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 255
    .local v1, windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 256
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 258
    .end local v0           #tiActivity:Lorg/appcelerator/titanium/TiBaseActivity;
    .end local v1           #windowProxy:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_0
    return-void
.end method

.method protected bindWindowActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .locals 3
    .parameter "tiContext"
    .parameter "activity"

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    instance-of v2, p2, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    .line 238
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 240
    :cond_0
    if-nez v1, :cond_1

    .line 241
    iget-object p0, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 242
    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V

    .line 243
    instance-of v2, p2, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_1

    .line 244
    check-cast p2, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p2
    invoke-virtual {p2, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 247
    :cond_1
    return-object v1
.end method

.method public close(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "options"

    .prologue
    const/4 v8, 0x0

    const-string v7, "animated"

    .line 300
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 301
    .local v2, props:Lorg/appcelerator/kroll/KrollDict;
    new-instance v3, Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/appcelerator/kroll/KrollDict;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-direct {v3, v5}, Lorg/appcelerator/titanium/util/TiPropertyResolver;-><init>([Lorg/appcelerator/kroll/KrollDict;)V

    .line 302
    .local v3, resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;
    const-string v5, "animated"

    invoke-virtual {v3, v7}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    .line 303
    iget-boolean v0, p0, Lti/modules/titanium/ui/TiUIWindow;->animate:Z

    .line 304
    .local v0, animateOnClose:Z
    if-eqz v2, :cond_0

    const-string v5, "animated"

    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    const-string v5, "animated"

    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 308
    :cond_0
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v5, :cond_3

    .line 309
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 310
    if-nez v0, :cond_2

    .line 311
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 312
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 316
    :goto_0
    iput-object v8, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 333
    :cond_1
    :goto_1
    return-void

    .line 314
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_1

    .line 322
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 323
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "source"

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "close"

    invoke-virtual {v5, v6, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 325
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getWindowHandler()Lorg/appcelerator/titanium/view/ITiWindowHandler;

    move-result-object v4

    .line 326
    .local v4, windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;
    if-eqz v4, :cond_4

    .line 327
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-interface {v4, v5}, Lorg/appcelerator/titanium/view/ITiWindowHandler;->removeWindow(Landroid/view/View;)V

    .line 329
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 330
    iput-object v8, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    goto :goto_1
.end method

.method protected createIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 11
    .parameter "activity"

    .prologue
    const-string v10, "url"

    const-string v9, "navBarHidden"

    const-string v8, "modal"

    const-string v7, "layout"

    const-string v6, "fullscreen"

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "fullscreen"

    invoke-virtual {v4, v6}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 542
    .local v3, props:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v3, :cond_0

    const-string v4, "fullscreen"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    const-string v4, "fullscreen"

    const-string v4, "fullscreen"

    invoke-static {v3, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "navBarHidden"

    invoke-virtual {v4, v9}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 546
    if-eqz v3, :cond_1

    const-string v4, "navBarHidden"

    invoke-virtual {v3, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    const-string v4, "navBarHidden"

    const-string v4, "navBarHidden"

    invoke-static {v3, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "modal"

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_2

    const-string v4, "modal"

    invoke-virtual {v3, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    const-class v4, Lorg/appcelerator/titanium/TiModalActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 552
    const-string v4, "modal"

    const-string v4, "modal"

    invoke-static {v3, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    :cond_2
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "url"

    invoke-virtual {v4, v10}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 555
    if-eqz v3, :cond_3

    const-string v4, "url"

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 556
    const-string v4, "url"

    const-string v4, "url"

    invoke-static {v3, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    :cond_3
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "layout"

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 559
    if-eqz v3, :cond_4

    const-string v4, "layout"

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 560
    const-string v4, "layout"

    const-string v4, "layout"

    invoke-static {v3, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    :cond_4
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "windowSoftInputMode"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 563
    if-eqz v3, :cond_5

    const-string v4, "windowSoftInputMode"

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 564
    const-string v4, "windowSoftInputMode"

    const-string v5, "windowSoftInputMode"

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    :cond_5
    const/4 v0, 0x0

    .line 568
    .local v0, finishRoot:Z
    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v5, "exitOnClose"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 569
    if-eqz v3, :cond_6

    const-string v4, "exitOnClose"

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 570
    const-string v4, "exitOnClose"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    .line 573
    :cond_6
    const-string v4, "finishRoot"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    new-instance v2, Landroid/os/Messenger;

    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->handler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 575
    .local v2, messenger:Landroid/os/Messenger;
    const-string v4, "messenger"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 576
    const-string v4, "msgActivityCreatedId"

    const/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v4, "useActivityWindow"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 578
    const-string v4, "windowId"

    iget v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    return-object v1
.end method

.method protected createNewActivity()V
    .locals 6

    .prologue
    const-string v5, "animated"

    .line 196
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TiUIWindow;->createIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 198
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v4, "animated"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 199
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v1, :cond_0

    .line 200
    const-string v3, "animated"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lti/modules/titanium/ui/TiUIWindow;->animate:Z

    .line 202
    :cond_0
    iget-boolean v3, p0, Lti/modules/titanium/ui/TiUIWindow;->animate:Z

    if-nez v3, :cond_1

    .line 203
    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-string v3, "animate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->overridePendingTransition(Landroid/app/Activity;)V

    .line 210
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v4, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;

    .line 211
    return-void

    .line 208
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->nativeView:Landroid/view/View;

    .line 370
    .local v0, layout:Landroid/view/View;
    iget-boolean v2, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v2, :cond_1

    .line 371
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    check-cast v1, Lorg/appcelerator/titanium/TiActivity;

    .line 372
    .local v1, tia:Lorg/appcelerator/titanium/TiActivity;
    if-nez v1, :cond_0

    .line 373
    const/4 v2, 0x0

    .line 377
    .end local v1           #tia:Lorg/appcelerator/titanium/TiActivity;
    :goto_0
    return-object v2

    .line 375
    .restart local v1       #tia:Lorg/appcelerator/titanium/TiActivity;
    :cond_0
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v0

    .end local v1           #tia:Lorg/appcelerator/titanium/TiActivity;
    :cond_1
    move-object v2, v0

    .line 377
    goto :goto_0
.end method

.method protected getLayoutArrangement()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .locals 5

    .prologue
    const-string v4, "layout"

    .line 525
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 526
    .local v0, arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    const-string v3, "layout"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->findProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 527
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v1, :cond_0

    .line 528
    const-string v2, "layout"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vertical"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 530
    :cond_1
    const-string v2, "layout"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, v:Landroid/view/View;
    iget-boolean v1, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 364
    :cond_0
    return-object v0
.end method

.method protected handleBooted()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lti/modules/titanium/ui/TiUIWindow;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->activityKey:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, layout:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 266
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TiUIWindow;->registerForTouch(Landroid/view/View;)V

    .line 267
    new-instance v5, Lti/modules/titanium/ui/TiUIWindow$1;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/TiUIWindow$1;-><init>(Lti/modules/titanium/ui/TiUIWindow;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 273
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    if-eqz v5, :cond_0

    .line 274
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 275
    .local v2, msg:Landroid/os/Message;
    iget v5, p0, Lti/modules/titanium/ui/TiUIWindow;->messageId:I

    iput v5, v2, Landroid/os/Message;->what:I

    .line 277
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iput-object v8, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    .line 284
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-eqz v5, :cond_3

    .line 285
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getWindowHandler()Lorg/appcelerator/titanium/view/ITiWindowHandler;

    move-result-object v4

    .line 286
    .local v4, windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;
    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    .line 288
    .local v3, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const v5, 0x7ffffffd

    iput v5, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 289
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-interface {v4, v5, v3}, Lorg/appcelerator/titanium/view/ITiWindowHandler;->addWindow(Landroid/view/View;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 291
    .end local v3           #params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->handler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 296
    .end local v4           #windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;
    .end local p0
    :cond_2
    :goto_1
    return-void

    .line 278
    .restart local v2       #msg:Landroid/os/Message;
    .restart local p0
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "TiUIWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    iput-object v8, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    iput-object v8, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    throw v5

    .line 292
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v5, v5, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v5, :cond_2

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 294
    iget-object p0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->fireInitialFocus()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 354
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 340
    :sswitch_0
    sget-boolean v0, Lti/modules/titanium/ui/TiUIWindow;->DBG:Z

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "TiUIWindow"

    const-string v1, "Received Activity creation message"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 346
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 347
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleBooted()V

    move v0, v2

    .line 348
    goto :goto_0

    .line 350
    :sswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->animate()V

    move v0, v2

    .line 351
    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleWindowCreated()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 229
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TiUIWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/TiUIWindow;->windowUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected initContext()V
    .locals 8

    .prologue
    const-string v7, "url"

    .line 143
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "url"

    invoke-virtual {v5, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 144
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-eqz v5, :cond_0

    .line 145
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v5

    iput v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowId:I

    .line 147
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "url"

    invoke-virtual {v5, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, baseUrl:Ljava/lang/String;
    invoke-static {v2, v4}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v3

    .line 150
    .local v3, tiUrl:Lorg/appcelerator/titanium/util/TiUrl;
    iget-object v5, v3, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    iput-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowUrl:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-nez v5, :cond_1

    .line 153
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 154
    if-nez v0, :cond_1

    .line 155
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    :cond_1
    iget-object v5, v3, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    iget-object v6, v3, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-nez v5, :cond_2

    .line 164
    instance-of v5, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v5, :cond_2

    .line 165
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBaseActivity;->getActivityProxy()Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 168
    :cond_2
    if-nez v1, :cond_3

    .line 169
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 171
    :cond_3
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 172
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/ui/TiUIWindow;->bindWindowActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 174
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindowAndActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 189
    .end local v1           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .end local v2           #baseUrl:Ljava/lang/String;
    .end local v3           #tiUrl:Lorg/appcelerator/titanium/util/TiUrl;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v5, :cond_5

    .line 190
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;

    .line 192
    :cond_5
    return-void

    .line 175
    :cond_6
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v5, :cond_9

    .line 176
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->getCurrentUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    .line 177
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getActivity(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    move-result-object v1

    .line 178
    .restart local v1       #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_7

    .line 179
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/ui/TiUIWindow;->bindWindowActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 181
    :cond_7
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->newActivity:Z

    if-eqz v5, :cond_8

    .line 182
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v5

    iput v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowId:I

    .line 184
    :cond_8
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindowAndActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 185
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->bindProxies()V

    goto :goto_0

    .line 187
    .end local v1           #activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    :cond_9
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lti/modules/titanium/ui/TiUIWindow;->bindWindowActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v5, 0x1

    const-string v7, "title"

    const-string v6, "layout"

    const-string v4, "backgroundImage"

    const-string v3, "backgroundColor"

    .line 427
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/TiUIWindow;->handleBackgroundImage(Ljava/lang/Object;Z)V

    .line 432
    :cond_0
    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    const-string v2, "title"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 435
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v2, "layout"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    iget-boolean v2, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v2, :cond_3

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v2, v2, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v2, :cond_6

    .line 444
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    check-cast v2, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v0

    .line 448
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 449
    const-string v2, "layout"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 455
    .end local v0           #layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_3
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 458
    return-void

    .line 429
    :cond_4
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/TiUIWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 437
    .restart local v1       #title:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 445
    .end local v1           #title:Ljava/lang/String;
    .restart local v0       #layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    :cond_6
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v2, v2, Lti/modules/titanium/ui/TiTabActivity;

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    check-cast v2, Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {v2}, Lti/modules/titanium/ui/TiTabActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v0

    goto :goto_2
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 10
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v6, 0x0

    const-string v9, "width"

    const-string v8, "height"

    const-string v7, "backgroundColor"

    .line 463
    const-string v5, "backgroundImage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    if-eqz p3, :cond_1

    .line 465
    invoke-direct {p0, p3, v6}, Lti/modules/titanium/ui/TiUIWindow;->handleBackgroundImage(Ljava/lang/Object;Z)V

    .line 516
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 467
    .restart local p0
    :cond_1
    const-string v5, "backgroundColor"

    invoke-virtual {p4, v7}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lti/modules/titanium/ui/TiUIWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 469
    :cond_2
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    invoke-direct {p0, p3, v6}, Lti/modules/titanium/ui/TiUIWindow;->handleBackgroundColor(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 471
    :cond_3
    const-string v5, "width"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "height"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 472
    :cond_4
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 473
    .local v3, w:Landroid/view/Window;
    iget v4, p0, Lti/modules/titanium/ui/TiUIWindow;->lastWidth:I

    .line 474
    .local v4, width:I
    iget v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lastHeight:I

    .line 476
    .local v0, height:I
    const-string v5, "width"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 477
    if-eqz p3, :cond_7

    .line 478
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    .line 483
    :cond_5
    :goto_1
    const-string v5, "height"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 484
    if-eqz p3, :cond_8

    .line 485
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 490
    :cond_6
    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/view/Window;->setLayout(II)V

    .line 492
    iput v4, p0, Lti/modules/titanium/ui/TiUIWindow;->lastWidth:I

    .line 493
    iput v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lastHeight:I

    goto :goto_0

    .line 480
    :cond_7
    const/4 v4, -0x1

    goto :goto_1

    .line 487
    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 494
    .end local v0           #height:I
    .end local v3           #w:Landroid/view/Window;
    .end local v4           #width:I
    :cond_9
    const-string v5, "title"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 495
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, title:Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    if-eqz v5, :cond_a

    .line 497
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_a
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 501
    .end local v2           #title:Ljava/lang/String;
    :cond_b
    const-string v5, "layout"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 502
    iget-boolean v5, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v5, :cond_0

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v5, v5, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v5, :cond_d

    .line 505
    iget-object p0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiActivity;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    .line 509
    :cond_c
    :goto_3
    if-eqz v1, :cond_0

    .line 510
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    .restart local p0
    :cond_d
    iget-object v5, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    instance-of v5, v5, Lti/modules/titanium/ui/TiTabActivity;

    if-eqz v5, :cond_c

    .line 507
    iget-object p0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TiTabActivity;

    invoke-virtual {p0}, Lti/modules/titanium/ui/TiTabActivity;->getLayout()Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move-result-object v1

    goto :goto_3

    .line 514
    .end local v1           #layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .restart local p0
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 599
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 601
    iput-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWindow:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 603
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->messenger:Landroid/os/Messenger;

    .line 604
    iput-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->handler:Landroid/os/Handler;

    .line 605
    iput-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 606
    return-void
.end method

.method protected requiresNewActivity()Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->resolver:Lorg/appcelerator/titanium/util/TiPropertyResolver;

    sget-object v1, Lti/modules/titanium/ui/TiUIWindow;->NEW_ACTIVITY_REQUIRED_KEYS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiPropertyResolver;->hasAnyOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setActivityBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "drawable"
    .parameter "post"

    .prologue
    .line 382
    if-eqz p2, :cond_0

    .line 383
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/TiUIWindow$2;

    invoke-direct {v1, p0, p1}, Lti/modules/titanium/ui/TiUIWindow$2;-><init>(Lti/modules/titanium/ui/TiUIWindow;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOpacity(F)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, view:Landroid/view/View;
    iget-boolean v1, p0, Lti/modules/titanium/ui/TiUIWindow;->lightWeight:Z

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 592
    :goto_0
    invoke-super {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    .line 593
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->nativeView:Landroid/view/View;

    goto :goto_0
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 215
    iput-object p1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    .line 216
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiContext;->setActivity(Landroid/app/Activity;)V

    .line 217
    iget-object v0, p0, Lti/modules/titanium/ui/TiUIWindow;->windowContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v1, p0, Lti/modules/titanium/ui/TiUIWindow;->windowActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TiUIWindow;->bindWindowActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 218
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->bindProxies()V

    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/ui/TiUIWindow;->handleWindowCreated()V

    .line 220
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiMessageQueue;->stopBlocking()V

    .line 221
    return-void
.end method
