.class public Lti/modules/titanium/ui/NotificationProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "NotificationProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 29
    new-instance v0, Lti/modules/titanium/ui/widget/TiUINotification;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUINotification;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 36
    invoke-virtual {p0}, Lti/modules/titanium/ui/NotificationProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/NotificationProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUINotification;

    .line 37
    .local v0, n:Lti/modules/titanium/ui/widget/TiUINotification;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUINotification;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 38
    return-void
.end method
