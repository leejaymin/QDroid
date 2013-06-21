.class public Lti/modules/titanium/ui/ScrollViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FIRST_ID:I = 0x3e8

.field protected static final MSG_LAST_ID:I = 0x7cf

.field private static final MSG_SCROLL_TO:I = 0x44c

.field private static final MSG_SCROLL_TO_BOTTOM:I = 0x44d


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 34
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 38
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getScrollView(Landroid/app/Activity;)Lti/modules/titanium/ui/widget/TiUIScrollView;
    .locals 0
    .parameter "activity"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/ScrollViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x44c

    if-ne v1, v2, :cond_0

    .line 66
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 68
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 76
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :goto_0
    return v1

    .line 70
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x44d

    if-ne v1, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 73
    .restart local v0       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v3

    .line 74
    goto :goto_0

    .line 76
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 80
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView(Landroid/app/Activity;)Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 81
    return-void
.end method

.method public handleScrollToBottom()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView(Landroid/app/Activity;)Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollToBottom()V

    .line 85
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x44c

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lti/modules/titanium/ui/ScrollViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;II)Ljava/lang/Object;

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    goto :goto_0
.end method

.method public scrollToBottom()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/16 v0, 0x44d

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/ScrollViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    goto :goto_0
.end method
