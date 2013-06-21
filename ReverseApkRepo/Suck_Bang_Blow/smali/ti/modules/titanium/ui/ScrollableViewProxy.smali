.class public Lti/modules/titanium/ui/ScrollableViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollableViewProxy.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final EVENT_SCROLL:Ljava/lang/String; = "scroll"

.field public static final MSG_ADD_VIEW:I = 0x83a

.field private static final MSG_FIRST_ID:I = 0x7d0

.field public static final MSG_HIDE_PAGER:I = 0x835

.field public static final MSG_LAST_ID:I = 0xbb7

.field public static final MSG_MOVE_NEXT:I = 0x837

.field public static final MSG_MOVE_PREV:I = 0x836

.field public static final MSG_REMOVE_VIEW:I = 0x83c

.field public static final MSG_SCROLL_TO:I = 0x838

.field public static final MSG_SET_CURRENT:I = 0x83b

.field public static final MSG_SET_VIEWS:I = 0x839

.field public static final MSG_SHOW_PAGER:I = 0x834


# instance fields
.field protected inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    return-void
.end method


# virtual methods
.method public addView(Ljava/lang/Object;)V
    .locals 1
    .parameter "viewObject"

    .prologue
    .line 148
    const/16 v0, 0x83a

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .parameter "activity"

    .prologue
    .line 58
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V

    return-object v0
.end method

.method public fireScroll(I)V
    .locals 4
    .parameter "to"

    .prologue
    const-string v3, "scroll"

    .line 194
    const-string v1, "scroll"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/ScrollableViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 196
    .local v0, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "view"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getCurrentPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "scroll"

    invoke-static {p0, v3, v0}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireViewEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    .end local v0           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method protected getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;

    return-object p0
.end method

.method public getViews()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, handled:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->doMovePrevious()V

    .line 80
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    const/4 v0, 0x1

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->doMoveNext()V

    .line 86
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    const/4 v0, 0x1

    .line 88
    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->doScrollToView(Ljava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    const/4 v0, 0x1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_5
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->doSetCurrentPage(Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_0

    .line 100
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 101
    .local v1, holder:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, views:Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v1, v7}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 108
    .end local v1           #holder:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v3           #views:Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 109
    .restart local v1       #holder:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, view:Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2           #view:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :cond_0
    invoke-virtual {v1, v7}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 118
    .end local v1           #holder:Lorg/appcelerator/titanium/util/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 119
    .restart local v1       #holder:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .restart local v2       #view:Ljava/lang/Object;
    instance-of v4, v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v4

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v2           #view:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_1
    invoke-virtual {v1, v7}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public moveNext()V
    .locals 2

    .prologue
    const/16 v1, 0x837

    .line 172
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public movePrevious()V
    .locals 2

    .prologue
    const/16 v1, 0x836

    .line 164
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 218
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 215
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 222
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inAnimation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    return-void
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x835

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 231
    return-void
.end method

.method public removeView(Ljava/lang/Object;)V
    .locals 1
    .parameter "viewObject"

    .prologue
    .line 153
    const/16 v0, 0x83c

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public scrollToView(Ljava/lang/Object;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxy;->inScroll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x838

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 210
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public setPagerTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x835

    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method

.method public setShowPagingControl(Z)V
    .locals 2
    .parameter "showPagingControl"

    .prologue
    .line 184
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getView()Lti/modules/titanium/ui/widget/TiUIScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setShowPagingControl(Z)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x835

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollableViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 1
    .parameter "viewsObject"

    .prologue
    .line 143
    const/16 v0, 0x839

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method
