.class public Lorg/appcelerator/titanium/view/TiUIActivityWindow;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityWindow.java"


# instance fields
.field protected activity:Lti/modules/titanium/android/TiJSActivity;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;Lti/modules/titanium/android/TiJSActivity;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V
    .locals 1
    .parameter "proxy"
    .parameter "activity"
    .parameter "layout"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 20
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->activity:Lti/modules/titanium/android/TiJSActivity;

    .line 22
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 24
    invoke-virtual {p0, p3}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->setNativeView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setClickable(Z)V

    .line 28
    invoke-virtual {p0, p3}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->registerForTouch(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->activity:Lti/modules/titanium/android/TiJSActivity;

    invoke-virtual {v0}, Lti/modules/titanium/android/TiJSActivity;->finish()V

    .line 38
    return-void
.end method

.method public getActivity()Lti/modules/titanium/android/TiJSActivity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->activity:Lti/modules/titanium/android/TiJSActivity;

    return-object v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->activity:Lti/modules/titanium/android/TiJSActivity;

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 34
    return-void
.end method
