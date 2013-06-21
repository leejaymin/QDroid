.class public abstract Lorg/appcelerator/titanium/proxy/TiViewProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiViewProxy"

.field private static final MSG_ADD_CHILD:I = 0x44e

.field private static final MSG_ANIMATE:I = 0x454

.field private static final MSG_BLUR:I = 0x450

.field private static final MSG_FIRST_ID:I = 0x3e8

.field private static final MSG_FOCUS:I = 0x451

.field private static final MSG_GETCENTER:I = 0x457

.field private static final MSG_GETSIZE:I = 0x456

.field private static final MSG_GETVIEW:I = 0x44c

.field private static final MSG_HIDE:I = 0x453

.field protected static final MSG_LAST_ID:I = 0x7cf

.field private static final MSG_REMOVE_CHILD:I = 0x44f

.field private static final MSG_SHOW:I = 0x452

.field private static final MSG_TOIMAGE:I = 0x455


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 81
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 409
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    .line 412
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 424
    :goto_0
    return-void

    .line 418
    :cond_1
    const/16 v0, 0x44e

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public addClass([Ljava/lang/Object;)V
    .locals 9
    .parameter "classNames"

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, baseUrl:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v3, classes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 665
    .local v2, c:Ljava/lang/Object;
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    .end local v2           #c:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v3, v8}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 668
    .local v6, options:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 669
    return-void
.end method

.method public animate(Ljava/lang/Object;Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 6
    .parameter "arg"
    .end parameter
    .parameter "callback"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 504
    instance-of v3, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_1

    .line 505
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v2, v0

    .line 507
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 508
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Lorg/appcelerator/kroll/KrollDict;)V

    .line 509
    if-eqz p2, :cond_0

    .line 510
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setCallback(Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    .line 519
    .end local v2           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 520
    return-void

    .line 512
    :cond_1
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_2

    .line 513
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/view/TiAnimation;

    move-object v1, v0

    .line 514
    .local v1, anim:Lorg/appcelerator/titanium/view/TiAnimation;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 515
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V

    goto :goto_0

    .line 517
    .end local v1           #anim:Lorg/appcelerator/titanium/view/TiAnimation;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled argument to animate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blur()V
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x450

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 180
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 329
    return-void
.end method

.method public abstract createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x1

    const-string v2, "touchEnabled"

    .line 626
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 627
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_1

    .line 628
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 633
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    const-string v1, "touchEnabled"

    .line 637
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 638
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_0

    .line 639
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 644
    :cond_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 3
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 587
    if-nez p2, :cond_0

    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 588
    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 590
    .local v0, handled:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 591
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v1

    .line 592
    .local v1, parentHandled:Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    .line 594
    .end local v1           #parentHandled:Z
    :cond_2
    :goto_0
    return v0

    .line 592
    .restart local v1       #parentHandled:Z
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x451

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public forceCreateView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 344
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrlForStylesheet()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, baseUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const-string v0, "app://app.js"

    .line 117
    :cond_0
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, idx:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 119
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".js"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    return-object v0
.end method

.method public getCenter()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 320
    const/16 v0, 0x457

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollDict;

    return-object p0
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 621
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v0, p0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    const-string v2, "height"

    .line 303
    const-string v1, "height"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "height"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 308
    :goto_0
    return v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getSize()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 308
    .local v0, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "height"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 600
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    return-object v0
.end method

.method public getSize()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 280
    const/16 v0, 0x456

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollDict;

    return-object p0
.end method

.method public getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 356
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    const/16 v0, 0x44c

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/TiUIView;

    move-object v0, p0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    const-string v2, "width"

    .line 286
    const-string v1, "width"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "width"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getSize()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 291
    .local v0, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "width"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 428
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 430
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 432
    .local v0, cv:Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 434
    .end local v0           #cv:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method

.method protected handleAnimate()V
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 535
    .local v0, tiv:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->animate()V

    .line 538
    :cond_0
    return-void
.end method

.method protected handleBlur()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->blur()V

    .line 554
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "options"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    .line 88
    .local v5, langTable:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v5, :cond_1

    .line 89
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    invoke-virtual {v5, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, convertKey:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, langKey:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 97
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "string."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v6

    goto :goto_0

    .line 105
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #convertKey:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #langKey:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 106
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 108
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v6, p0}, Lorg/appcelerator/kroll/KrollEventManager;->addOnEventChangeListener(Lorg/appcelerator/titanium/bridge/OnEventListenerChange;)V

    .line 109
    return-void
.end method

.method protected handleFocus()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 570
    :cond_0
    return-void
.end method

.method protected handleGetView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .parameter "activity"

    .prologue
    .line 361
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v0, :cond_1

    .line 362
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "TiViewProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 367
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 368
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 493
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 499
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v10, 0x4000

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "height"

    .line 185
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 269
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    :goto_0
    return v3

    .line 187
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 188
    .local v1, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 189
    goto :goto_0

    .line 192
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 193
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 194
    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 195
    goto :goto_0

    .line 198
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 199
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 200
    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 201
    goto :goto_0

    .line 204
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    move v3, v8

    .line 205
    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    move v3, v8

    .line 209
    goto :goto_0

    .line 212
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    move v3, v8

    .line 213
    goto :goto_0

    .line 216
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    move v3, v8

    .line 217
    goto :goto_0

    .line 220
    :pswitch_8
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    move v3, v8

    .line 221
    goto :goto_0

    .line 224
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 225
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 226
    goto :goto_0

    .line 229
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 230
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    const/4 v0, 0x0

    .line 231
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 234
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 235
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v3, "height"

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2           #v:Landroid/view/View;
    :cond_0
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 241
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "height"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 246
    goto/16 :goto_0

    .line 249
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 250
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    const/4 v0, 0x0

    .line 251
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 253
    .restart local v2       #v:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 254
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 255
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "x"

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v3, "y"

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v2           #v:Landroid/view/View;
    :cond_2
    if-nez v0, :cond_3

    .line 260
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 261
    .restart local v0       #d:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "x"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "y"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_3
    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v8

    .line 266
    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public handlePendingAnimation(Z)V
    .locals 2
    .parameter "forceQueue"

    .prologue
    .line 523
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 525
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x454

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    goto :goto_0
.end method

.method public handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 458
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 464
    :cond_0
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 477
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 480
    :cond_0
    return-void
.end method

.method protected handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 17
    .parameter "options"

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProxyId()Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, viewId:Ljava/lang/String;
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    .line 127
    .local v12, styleClasses:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getShortAPIName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v14, "id"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    const-string v14, "id"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    :cond_0
    const-string v14, "className"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 133
    const-string v14, "className"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, className:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v6, v2, v9

    .line 135
    .local v6, clazz:Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 138
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #className:Ljava/lang/String;
    .end local v6           #clazz:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_1
    const-string v14, "classNames"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 139
    const-string v14, "classNames"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 140
    .local v4, c:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 141
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .line 142
    .local v11, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v11, :cond_3

    .line 143
    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, clazz:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 145
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 151
    .end local v4           #c:Ljava/lang/Object;
    .end local v6           #clazz:Ljava/lang/Object;
    .end local v8           #i:I
    .end local v11           #length:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->context:Lorg/appcelerator/titanium/TiContext;

    move-object v14, v0

    invoke-virtual {v14}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v14

    invoke-virtual {v14, v3, v12, v13}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    .line 154
    .local v7, dict:Lorg/appcelerator/kroll/KrollDict;
    sget-boolean v14, Lorg/appcelerator/titanium/proxy/TiViewProxy;->DBG:Z

    if-eqz v14, :cond_4

    .line 155
    const-string v14, "TiViewProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "trying to get stylesheet for base:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",classes:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",id:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",dict:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4
    if-eqz v7, :cond_5

    .line 160
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    move-object v14, v7

    .line 163
    :goto_2
    return-object v14

    :cond_5
    move-object/from16 v14, p1

    goto :goto_2
.end method

.method protected handleToImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->toImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 484
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x453

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public peekView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method public realizeViews(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 4
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 375
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 379
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 381
    .local v2, p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 382
    .local v0, cv:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    goto :goto_0

    .line 386
    .end local v0           #cv:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v3, :cond_1

    .line 387
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 389
    :cond_1
    return-void
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 396
    .local v1, p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 399
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 400
    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 402
    :cond_1
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 403
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/16 v0, 0x44f

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 647
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 648
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 649
    .local v1, v:Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 651
    .local v0, nv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 656
    .end local v0           #nv:Landroid/view/View;
    .end local v1           #v:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    return-void
.end method

.method public setHeight(Ljava/lang/Object;)V
    .locals 2
    .parameter "height"

    .prologue
    .line 314
    const-string v0, "height"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 315
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 604
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 605
    return-void
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 338
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 339
    return-void
.end method

.method public setWidth(Ljava/lang/Object;)V
    .locals 2
    .parameter "width"

    .prologue
    .line 297
    const-string v0, "width"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 298
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 469
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x452

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;
    .locals 4
    .parameter "tiContext"

    .prologue
    .line 609
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    .line 610
    .local v2, oldContext:Lorg/appcelerator/titanium/TiContext;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 612
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;

    goto :goto_0

    .line 615
    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 577
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/16 v0, 0x455

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollDict;

    move-object v0, p0

    goto :goto_0
.end method
