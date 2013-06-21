.class public Lti/modules/titanium/ui/widget/TiUIScrollableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollableView.java"


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V
    .locals 3
    .parameter "proxy"
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 27
    new-instance v1, Lti/modules/titanium/ui/widget/TiScrollableView;

    invoke-direct {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V

    .line 28
    .local v1, view:Lti/modules/titanium/ui/widget/TiScrollableView;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 29
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 30
    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 31
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setNativeView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method private getView()Lti/modules/titanium/ui/widget/TiScrollableView;
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiScrollableView;

    return-object p0
.end method


# virtual methods
.method public addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 78
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 79
    return-void
.end method

.method public doMoveNext()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMoveNext()V

    .line 105
    return-void
.end method

.method public doMovePrevious()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMovePrevious()V

    .line 110
    return-void
.end method

.method public doScrollToView(Ljava/lang/Object;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 114
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->doScrollToView(I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    check-cast p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p1
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->doScrollToView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public doSetCurrentPage(Ljava/lang/Object;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 137
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->doSetCurrentPage(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    check-cast p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p1
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->doSetCurrentPage(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hidePager()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->hidePager()V

    .line 100
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "d"

    .prologue
    const-string v5, "views"

    const-string v4, "showPagingControl"

    const-string v3, "currentPage"

    .line 40
    const-string v1, "views"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v1

    const-string v2, "views"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/TiScrollableView;->setViews(Ljava/lang/Object;)V

    .line 43
    :cond_0
    const-string v1, "showPagingControl"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "showPagingControl"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v0

    .line 45
    .local v0, showPager:Z
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->setShowPagingControl(Z)V

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 50
    .end local v0           #showPager:Z
    :cond_1
    const-string v1, "currentPage"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "currentPage"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(I)V

    .line 53
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 54
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 59
    const-string v0, "currentPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(I)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 82
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 83
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 133
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->doSetCurrentPage(I)V

    .line 134
    return-void
.end method

.method public setShowPagingControl(Z)V
    .locals 1
    .parameter "showPagingControl"

    .prologue
    .line 123
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->setShowPagingControl(Z)V

    .line 124
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 3
    .parameter "viewsObject"

    .prologue
    const-string v2, "currentPage"

    .line 71
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiScrollableView;->setViews(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "currentPage"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "currentPage"

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public showPager()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "showPagingControl"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, showPagingControlProperty:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    .local v0, showPagingControl:Z
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getView()Lti/modules/titanium/ui/widget/TiScrollableView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiScrollableView;->showPager()V

    .line 95
    .end local v0           #showPagingControl:Z
    :cond_0
    return-void
.end method
