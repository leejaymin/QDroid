.class public Lti/modules/titanium/ui/ActivityIndicatorProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ActivityIndicatorProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 30
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 52
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 53
    .local v0, ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->hide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 54
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 44
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 45
    .local v0, ai:Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 46
    return-void
.end method
